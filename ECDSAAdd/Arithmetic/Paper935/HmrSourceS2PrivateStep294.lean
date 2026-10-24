import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep292
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

private def s2Step294CompleteMoves : List (Wire × Wire) := [(785,635)]

private def s2Step294EarlyControlLog : HmrEarlyControlLog := ⟨[785, 780, 805, 811, 783],[847],[830],[800, 894, 896, 901, 903, 904],[]⟩

private def s2Step294FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [805], [], [849]],[[811], [780], [812], [821]],[[], [], [], []]⟩,[820],[787],[783],[847],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[783, 847, 830, 800]⟩

private def s2Step294CompleteLog : HmrEarlyStepLog := ⟨s2Step294FrontLog,s2Step294CompleteMoves,s2Step294EarlyControlLog⟩

private def s2Step294ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step294ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step294ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩

private def s2Step294ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step294FrontOut : WindowBank := ⟨s2Step294ExitFOut,s2Step294ExitGOut,s2Step294ExitFvOut,s2Step294ExitGvOut⟩

private def s2Step294CompleteOut : WindowBank := s2Step294FrontOut.repacked s2Step294CompleteMoves

private def s2Step294EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step294EarlyControlPositiveArena,[847],s2Step294EarlyControlEqualityArena,[830],⟨⟨820,false⟩,[⟨⟨847,false⟩,830⟩]⟩⟩

private def s2Step294EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,785⟩,⟨⟨774,false⟩,780⟩,⟨⟨775,false⟩,805⟩,⟨⟨776,false⟩,811⟩,⟨⟨777,false⟩,783⟩]⟩

private def s2Step294EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step294EarlyControlZeroArena,s2Step294EarlyControlZeroPlan,s2Step294EarlyControlClassPlan,s2Step294EarlyControlFlagArena,s2Step294EarlyControlFittedArena,s2Step294EarlyControlHistoryArena,s2Step294EarlyControlSigmaArena,s2Step294EarlyControlOutputArena,s2Step294EarlyControlLog⟩

private def s2Step294CounterWork : List Wire := [783, 847, 830, 800]

private theorem s2Step294Counter_bounded : s2Step294CounterWork.toFinset⊆arenaWires := by norm_num [s2Step294CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step294HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294CounterDuring : Arena := ⟨s2Step294HeadFvAfter.live∪s2Step294CounterWork.toFinset,Finset.union_subset s2Step294HeadFvAfter.bounded s2Step294Counter_bounded⟩

private def s2Step294EntryFFresh : List Wire := []

private def s2Step294EntryFvFresh : List Wire := []

private def s2Step294EntryGFresh : List Wire := [805]

private def s2Step294EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EntryGvFresh : List Wire := [849]

private def s2Step294ExitFExtra : List Wire := [635, 780]

private def s2Step294ExitGExtra : List Wire := [805, 811]

private def s2Step294ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<635) ∨ (636≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294ExitGvAfter : Arena := s2Step294ExitFAfter

private def s2Step294Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step294Add0_bounded : s2Step294Add0Work.toFinset⊆arenaWires := by
  have h : s2Step294Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step294Add0During : Arena := ⟨s2Step294Add0Arena.live∪s2Step294Add0Work.toFinset,Finset.union_subset s2Step294Add0Arena.bounded s2Step294Add0_bounded⟩

private def s2Step294Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step294Add1_bounded : s2Step294Add1Work.toFinset⊆arenaWires := by
  have h : s2Step294Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step294Add1During : Arena := ⟨s2Step294Add1Arena.live∪s2Step294Add1Work.toFinset,Finset.union_subset s2Step294Add1Arena.bounded s2Step294Add1_bounded⟩

private def s2Step294F4FlagArena : Arena := ⟨s2Step294HeadFvAfter.live∪{783},Finset.union_subset s2Step294HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step294F4Plan : HmrHybridF4Plan := ⟨s2Step294F4FlagArena,[783],s2Step294Add0Arena,[847],s2Step294Add0During,s2Step294Add0Work,s2Step294Add1During,s2Step294Add1Work⟩

private def s2Step294HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 780],768⟩

private def s2Step294HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step294HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805, 811],769⟩

private def s2Step294HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step294FrontHead : WindowBank := ⟨s2Step294HeadFOut,s2Step294HeadGOut,s2Step294HeadFvOut,s2Step294HeadGvOut⟩

private def s2Step294EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635],768⟩

private def s2Step294EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step294EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805],769⟩

private def s2Step294EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849],771⟩

private def s2Step294FrontPair : WindowBank := ⟨s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut⟩

private def s2Step294FrontSigmaArena : Arena := ⟨s2Step294EntryGvAfter.live∪{820},Finset.union_subset s2Step294EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step294HeadFFresh : List Wire := [780]

private def s2Step294HeadFvFresh : List Wire := [821]

private def s2Step294HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294HeadGFresh : List Wire := [811]

private def s2Step294HeadGvFresh : List Wire := [812]

private def s2Step294FrontPlan : HmrSourceFront := ⟨s2Step294EntryGvAfter,s2Step294FrontPair,(growRow 768 s2Step294EntryFFresh ++ (growRow 769 s2Step294EntryGFresh ++ (growRow 770 s2Step294EntryFvFresh ++ (growRow 771 s2Step294EntryGvFresh ++ [])))),s2Step294FrontSigmaArena,[820],s2Step294HeadGBefore,[787],
  s2Step294HeadFvAfter,s2Step294FrontHead,(growRow 769 s2Step294HeadGFresh ++ (growRow 768 s2Step294HeadFFresh ++ (growRow 771 s2Step294HeadGvFresh ++ (growRow 770 s2Step294HeadFvFresh ++ [])))),s2Step294F4Plan,s2Step294CounterDuring,s2Step294CounterWork,s2Step294ExitGvAfter,s2Step294FrontOut,(shrinkRow 769 s2Step294ExitGExtra ++ (shrinkRow 768 s2Step294ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step294CompletePlan : HmrEarlyStepPlan := ⟨s2Step294FrontPlan,s2Step294EarlyControlArena,s2Step294EarlyControlPlan,s2Step294CompleteMoves⟩

private theorem s2Step294Complete_apart : List.Disjoint (s2Step294CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step294CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step294Complete_owned : (s2Step294CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step294EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step294CompleteMoveArena : Arena := ⟨s2Step294ExitGvAfter.live∪{635},Finset.union_subset s2Step294ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step294Complete_repack : s2Step294ExitGvAfter.checkRepack s2Step294CompleteMoves=some s2Step294EarlyControlArena := by
  have owned : 785∈s2Step294ExitGvAfter.live := by norm_num [s2Step294ExitGvAfter,s2Step294ExitFAfter,arenaWires]
  have reserve : s2Step294ExitGvAfter.reserve {635}=some s2Step294CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step294ExitGvAfter,s2Step294ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step294CompleteMoveArena.retireSet {785}=s2Step294EarlyControlArena := by
    unfold Arena.retireSet s2Step294EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step294CompleteMoveArena,s2Step294ExitGvAfter,s2Step294ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step294CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step294CompleteMoveArena.retireSet {785}).checkRepack []=some s2Step294EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step294EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step294EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_branch : compileHmrBranchRetirement s2Step294EarlyControlSigmaArena 787=some s2Step294EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step294EarlyControl_branchOwned
  · ext q
    simp [s2Step294EarlyControlOutputArena,s2Step294EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step294EarlyControl_classEqualityBorrow : s2Step294EarlyControlPositiveArena.checkBorrow (([820, 847] : List Wire).length-1) s2Step294EarlyControlLog.classWork=some s2Step294EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step294EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step294EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step294EarlyControlEqualityArena,s2Step294EarlyControlPositiveArena,s2Step294EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step294EarlyControl_classEqualityOwned : ([820, 847] : List Wire).toFinset⊆s2Step294EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_classEquality : compileHmrEqualityLog s2Step294EarlyControlPositiveArena [820, 847] 0 s2Step294EarlyControlLog.classWork=some (s2Step294EarlyControlEqualityArena,s2Step294EarlyControlLog.classWork,s2Step294EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step294EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step294EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step294EarlyControl_classOwned : ([777, 783, 820] : List Wire).toFinset⊆s2Step294EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_positiveBorrow : s2Step294EarlyControlZeroArena.checkBorrow (1) s2Step294EarlyControlLog.positiveWork=some s2Step294EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step294EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step294EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step294EarlyControlPositiveArena,s2Step294EarlyControlZeroArena,s2Step294EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step294EarlyControl_class : compileHmrSourceClassLog s2Step294EarlyControlZeroArena false 777 s2Step294EarlyControlZeroPlan.top 0 820 s2Step294EarlyControlLog.positiveWork s2Step294EarlyControlLog.classWork=some s2Step294EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step294EarlyControlClassPlan s2Step294EarlyControlZeroArena false 777 s2Step294EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step294EarlyControl_classOwned
  · exact s2Step294EarlyControl_positiveBorrow
  · exact s2Step294EarlyControl_classEquality

private theorem s2Step294EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step294EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step294EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_fitBorrow : s2Step294EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step294EarlyControlLog.recordFresh=some s2Step294EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step294EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step294EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step294EarlyControlFittedArena,s2Step294EarlyControlFlagArena,s2Step294EarlyControlLog,arenaWires]

private theorem s2Step294EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step294EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_fit : compileHmrRecordGrowLog s2Step294EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step294EarlyControlLog.recordFresh=some s2Step294EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step294EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step294EarlyControl_fitBorrow

private theorem s2Step294EarlyControl_flagsBorrow : s2Step294EarlyControlEqualityArena.checkBorrow (6) s2Step294EarlyControlLog.flagWork=some s2Step294EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step294EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step294EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step294EarlyControlFlagArena,s2Step294EarlyControlEqualityArena,s2Step294EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step294EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step294EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_flags : compileHmrFlagsLog s2Step294EarlyControlClassPlan.equalityArena s2Step294EarlyControlClassPlan.equality.top 253 252 251 s2Step294EarlyControlLog.flagWork=some s2Step294EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step294EarlyControl_flagsOwned⟩
  · exact s2Step294EarlyControl_flagsBorrow

private theorem s2Step294EarlyControl_historyBorrow : s2Step294EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step294EarlyControlLog.recordFresh=some s2Step294EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step294EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step294EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step294EarlyControlHistoryArena,s2Step294EarlyControlArena,s2Step294EarlyControlLog,arenaWires]

private theorem s2Step294EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step294EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_history : compileHmrRecordGrowLog s2Step294EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step294EarlyControlLog.recordFresh=some s2Step294EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step294EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step294EarlyControl_historyBorrow

private theorem s2Step294EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step294EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step294EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_sigmaRelease : s2Step294EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step294EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step294EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step294EarlyControlSigmaArena,s2Step294EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step294EarlyControl_sigma : compileHmrSigmaDropLog s2Step294EarlyControlHistoryArena false 0 0 254 820 []=some s2Step294EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step294EarlyControl_sigmaOwned⟩
  · exact s2Step294EarlyControl_sigmaRelease

private theorem s2Step294EarlyControl_zeroBorrow : s2Step294EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step294EarlyControlLog.zeroWork=some s2Step294EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step294EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step294EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step294EarlyControlZeroArena,s2Step294EarlyControlArena,s2Step294EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step294EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step294EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step294EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EarlyControl_zero : compileHmrEqualityLog s2Step294EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step294EarlyControlLog.zeroWork=some (s2Step294EarlyControlZeroArena,s2Step294EarlyControlLog.zeroWork,s2Step294EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step294EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step294EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step294EarlyControl_logged : s2Step294EarlyControlPlan.Logged s2Step294EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 820 254 253 252 251 787 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step294EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step294EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step294EarlyControl_zero
  · exact s2Step294EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step294EarlyControl_flags
  · exact s2Step294EarlyControl_fit
  · exact s2Step294EarlyControl_history
  · exact s2Step294EarlyControl_sigma
  · exact s2Step294EarlyControl_branch

private theorem s2Step294EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step294EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 820 254 253 252 251 787 54 s2Step294EarlyControlLog=some s2Step294EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step294EarlyControlPlan s2Step294EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 820 254 253 252 251 787 54 s2Step294EarlyControl_logged

private def s2Step294EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635],768⟩

private def s2Step294EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step294EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩

private def s2Step294EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private def s2Step294FrontBank : WindowBank := ⟨s2Step294EntryFRow,s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow⟩

private def s2Step294Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 780, 768]

private def s2Step294Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805, 811, 769]

private def s2Step294Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 770]

private def s2Step294Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 771]

private theorem s2Step294Counter_apart : Disjoint s2Step294HeadFvAfter.live s2Step294CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step294HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294Counter_borrowed : s2Step294HeadFvAfter.checkBorrow 4 s2Step294CounterWork=some s2Step294CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step294HeadFvAfter s2Step294CounterDuring s2Step294CounterWork.toFinset s2Step294Counter_bounded s2Step294Counter_apart rfl

private theorem s2Step294Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step294HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step294HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294Counter_checked : compileHmrCounterStepLog s2Step294HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step294CounterWork=some s2Step294CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step294HeadFvAfter.live := fun q hq => s2Step294Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step294Counter_borrowed

private def s2Step294EntryFAfter : Arena := s2Step294EntryFBefore

private theorem s2Step294EntryBank_incomingDistinct : ([s2Step294EntryFRow,s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294EntryF_Incoming : rowsOwned s2Step294EntryFBefore [s2Step294EntryFRow,s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294EntryFRow,s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow] 0 s2Step294EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294EntryBank_outgoingOwned : rowsOwned s2Step294EntryGvAfter [s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step294EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294EntryF_Outgoing : rowsOwned s2Step294EntryGvAfter [s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut] :=
  hmrRows_owned_drop s2Step294EntryGvAfter [s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut] 0 s2Step294EntryBank_outgoingOwned

private theorem s2Step294EntryF_distinct : (s2Step294EntryFRow.sign::s2Step294EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294EntryF_owned : (s2Step294EntryFRow.sign::s2Step294EntryFRow.payload).toFinset⊆s2Step294EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EntryF_reserved : s2Step294EntryFBefore.reserve s2Step294EntryFFresh.toFinset=some s2Step294EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step294EntryFFresh,arenaWires]
  · norm_num [s2Step294EntryFBefore,s2Step294EntryFFresh,arenaWires]
  · simp only [s2Step294EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step294EntryF_checked : planRowResizeLog s2Step294EntryFBefore s2Step294EntryFRow 124 s2Step294EntryFFresh=
    some (s2Step294EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635],768⟩,growRow 768 s2Step294EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step294EntryFBefore s2Step294EntryFAfter s2Step294EntryFRow 124 s2Step294EntryFFresh
    s2Step294EntryF_distinct s2Step294EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294EntryF_reserved
  have rowEq : WindowRow.mk (s2Step294EntryFRow.payload++s2Step294EntryFFresh) s2Step294EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step294EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294EntryFvAfter : Arena := s2Step294EntryGAfter

private def s2Step294EntryFvBefore : Arena := s2Step294EntryGAfter

private theorem s2Step294EntryFv_Incoming : rowsOwned s2Step294EntryFvBefore [s2Step294EntryFvRow,s2Step294EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294EntryFRow,s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow] 2 s2Step294EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294EntryFv_Outgoing : rowsOwned s2Step294EntryGvAfter [s2Step294EntryFvOut,s2Step294EntryGvOut] :=
  hmrRows_owned_drop s2Step294EntryGvAfter [s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut] 2 s2Step294EntryBank_outgoingOwned

private theorem s2Step294EntryFv_distinct : (s2Step294EntryFvRow.sign::s2Step294EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294EntryFv_owned : (s2Step294EntryFvRow.sign::s2Step294EntryFvRow.payload).toFinset⊆s2Step294EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EntryFv_reserved : s2Step294EntryFvBefore.reserve s2Step294EntryFvFresh.toFinset=some s2Step294EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step294EntryFvFresh,arenaWires]
  · norm_num [s2Step294EntryFvBefore,s2Step294EntryGAfter,s2Step294EntryFvFresh,arenaWires]
  · simp only [s2Step294EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step294EntryFv_checked : planRowResizeLog s2Step294EntryFvBefore s2Step294EntryFvRow 162 s2Step294EntryFvFresh=
    some (s2Step294EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩,growRow 770 s2Step294EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step294EntryFvBefore s2Step294EntryFvAfter s2Step294EntryFvRow 162 s2Step294EntryFvFresh
    s2Step294EntryFv_distinct s2Step294EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step294EntryFvRow.payload++s2Step294EntryFvFresh) s2Step294EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step294EntryGBefore : Arena := s2Step294EntryFBefore

private theorem s2Step294EntryG_Incoming : rowsOwned s2Step294EntryGBefore [s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294EntryFRow,s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow] 1 s2Step294EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294EntryG_Outgoing : rowsOwned s2Step294EntryGvAfter [s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut] :=
  hmrRows_owned_drop s2Step294EntryGvAfter [s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut] 1 s2Step294EntryBank_outgoingOwned

private theorem s2Step294EntryG_distinct : (s2Step294EntryGRow.sign::s2Step294EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294EntryG_owned : (s2Step294EntryGRow.sign::s2Step294EntryGRow.payload).toFinset⊆s2Step294EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EntryG_reserved : s2Step294EntryGBefore.reserve s2Step294EntryGFresh.toFinset=some s2Step294EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step294EntryGFresh,arenaWires]
  · norm_num [s2Step294EntryGBefore,s2Step294EntryFBefore,s2Step294EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step294EntryGAfter,s2Step294EntryGBefore,s2Step294EntryFBefore,s2Step294EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step294EntryG_checked : planRowResizeLog s2Step294EntryGBefore s2Step294EntryGRow 124 s2Step294EntryGFresh=
    some (s2Step294EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805],769⟩,growRow 769 s2Step294EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step294EntryGBefore s2Step294EntryGAfter s2Step294EntryGRow 124 s2Step294EntryGFresh
    s2Step294EntryG_distinct s2Step294EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294EntryG_reserved
  have rowEq : WindowRow.mk (s2Step294EntryGRow.payload++s2Step294EntryGFresh) s2Step294EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step294EntryGvBefore : Arena := s2Step294EntryGAfter

private theorem s2Step294EntryGv_Incoming : rowsOwned s2Step294EntryGvBefore [s2Step294EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294EntryFRow,s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow] 3 s2Step294EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294EntryGv_Outgoing : rowsOwned s2Step294EntryGvAfter [s2Step294EntryGvOut] :=
  hmrRows_owned_drop s2Step294EntryGvAfter [s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut] 3 s2Step294EntryBank_outgoingOwned

private theorem s2Step294EntryGv_distinct : (s2Step294EntryGvRow.sign::s2Step294EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294EntryGv_owned : (s2Step294EntryGvRow.sign::s2Step294EntryGvRow.payload).toFinset⊆s2Step294EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294EntryGv_reserved : s2Step294EntryGvBefore.reserve s2Step294EntryGvFresh.toFinset=some s2Step294EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step294EntryGvFresh,arenaWires]
  · norm_num [s2Step294EntryGvBefore,s2Step294EntryGAfter,s2Step294EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step294EntryGvAfter,s2Step294EntryGvBefore,s2Step294EntryGAfter,s2Step294EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step294EntryGv_checked : planRowResizeLog s2Step294EntryGvBefore s2Step294EntryGvRow 162 s2Step294EntryGvFresh=
    some (s2Step294EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849],771⟩,growRow 771 s2Step294EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step294EntryGvBefore s2Step294EntryGvAfter s2Step294EntryGvRow 162 s2Step294EntryGvFresh
    s2Step294EntryGv_distinct s2Step294EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step294EntryGvRow.payload++s2Step294EntryGvFresh) s2Step294EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step294EntryBank_rows : planWindowRowsLog s2Step294EntryFBefore [(s2Step294EntryFRow,124),(s2Step294EntryGRow,124),(s2Step294EntryFvRow,162),(s2Step294EntryGvRow,162)] [s2Step294EntryFFresh,s2Step294EntryGFresh,s2Step294EntryFvFresh,s2Step294EntryGvFresh]=
    some (s2Step294EntryGvAfter,[s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut],(growRow 768 s2Step294EntryFFresh ++ (growRow 769 s2Step294EntryGFresh ++ (growRow 770 s2Step294EntryFvFresh ++ (growRow 771 s2Step294EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step294EntryGvAfter [] []=some (s2Step294EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step294EntryGvBefore s2Step294EntryGvAfter s2Step294EntryGvAfter
    s2Step294EntryGvRow s2Step294EntryGvOut 162 s2Step294EntryGvFresh [] [] []
    (growRow 771 s2Step294EntryGvFresh) ([]) s2Step294EntryGv_Incoming s2Step294EntryGv_checked h4 s2Step294EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step294EntryFvBefore s2Step294EntryFvAfter s2Step294EntryGvAfter
    s2Step294EntryFvRow s2Step294EntryFvOut 162 s2Step294EntryFvFresh [(s2Step294EntryGvRow,162)] [s2Step294EntryGvFresh] [s2Step294EntryGvOut]
    (growRow 770 s2Step294EntryFvFresh) ((growRow 771 s2Step294EntryGvFresh ++ [])) s2Step294EntryFv_Incoming s2Step294EntryFv_checked h3 s2Step294EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step294EntryGBefore s2Step294EntryGAfter s2Step294EntryGvAfter
    s2Step294EntryGRow s2Step294EntryGOut 124 s2Step294EntryGFresh [(s2Step294EntryFvRow,162),(s2Step294EntryGvRow,162)] [s2Step294EntryFvFresh,s2Step294EntryGvFresh] [s2Step294EntryFvOut,s2Step294EntryGvOut]
    (growRow 769 s2Step294EntryGFresh) ((growRow 770 s2Step294EntryFvFresh ++ (growRow 771 s2Step294EntryGvFresh ++ []))) s2Step294EntryG_Incoming s2Step294EntryG_checked h2 s2Step294EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step294EntryFBefore s2Step294EntryFAfter s2Step294EntryGvAfter
    s2Step294EntryFRow s2Step294EntryFOut 124 s2Step294EntryFFresh [(s2Step294EntryGRow,124),(s2Step294EntryFvRow,162),(s2Step294EntryGvRow,162)] [s2Step294EntryGFresh,s2Step294EntryFvFresh,s2Step294EntryGvFresh] [s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut]
    (growRow 768 s2Step294EntryFFresh) ((growRow 769 s2Step294EntryGFresh ++ (growRow 770 s2Step294EntryFvFresh ++ (growRow 771 s2Step294EntryGvFresh ++ [])))) s2Step294EntryF_Incoming s2Step294EntryF_checked h1 s2Step294EntryF_Outgoing
  exact h0

private theorem s2Step294EntryBank_checked : compileHmrBankResizeLog .entry s2Step294EntryFBefore ⟨s2Step294EntryFRow,s2Step294EntryGRow,s2Step294EntryFvRow,s2Step294EntryGvRow⟩ ⟨124,124,162,162⟩ [s2Step294EntryFFresh,s2Step294EntryGFresh,s2Step294EntryFvFresh,s2Step294EntryGvFresh]=
    some (s2Step294EntryGvAfter,⟨s2Step294EntryFOut,s2Step294EntryGOut,s2Step294EntryFvOut,s2Step294EntryGvOut⟩,(growRow 768 s2Step294EntryFFresh ++ (growRow 769 s2Step294EntryGFresh ++ (growRow 770 s2Step294EntryFvFresh ++ (growRow 771 s2Step294EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step294EntryBank_rows]
  rfl

private def s2Step294ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294ExitFBefore : Arena := s2Step294ExitGAfter

private def s2Step294ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 780],768⟩

private def s2Step294ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step294ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805, 811],769⟩

private def s2Step294ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private theorem s2Step294ExitBank_incomingDistinct : ([s2Step294ExitGRow,s2Step294ExitFRow,s2Step294ExitFvRow,s2Step294ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294ExitF_Incoming : rowsOwned s2Step294ExitFBefore [s2Step294ExitFRow,s2Step294ExitFvRow,s2Step294ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294ExitGRow,s2Step294ExitFRow,s2Step294ExitFvRow,s2Step294ExitGvRow] 1 s2Step294ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294ExitBank_outgoingOwned : rowsOwned s2Step294ExitGvAfter [s2Step294ExitGOut,s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step294ExitGvAfter (fun q => (0≤q ∧ q<635) ∨ (636≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294ExitF_Outgoing : rowsOwned s2Step294ExitGvAfter [s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut] :=
  hmrRows_owned_drop s2Step294ExitGvAfter [s2Step294ExitGOut,s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut] 1 s2Step294ExitBank_outgoingOwned

private theorem s2Step294ExitF_distinct : (s2Step294ExitFRow.sign::s2Step294ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294ExitF_owned : (s2Step294ExitFRow.sign::s2Step294ExitFRow.payload).toFinset⊆s2Step294ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294ExitF_retired : s2Step294ExitFBefore.retireSet s2Step294ExitFExtra.toFinset=s2Step294ExitFAfter := by
  unfold Arena.retireSet s2Step294ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step294ExitFBefore,s2Step294ExitGAfter,s2Step294ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step294ExitF_checked : planRowResizeLog s2Step294ExitFBefore s2Step294ExitFRow 123 []=
    some (s2Step294ExitFAfter,s2Step294ExitFOut,shrinkRow 768 s2Step294ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step294ExitFBefore s2Step294ExitFRow 123 s2Step294ExitF_distinct s2Step294ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step294ExitFRow.payload.take 123) s2Step294ExitFRow.sign=s2Step294ExitFOut := by decide +kernel
  have hi : s2Step294ExitFRow.payload.drop 123=s2Step294ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step294ExitF_retired] at result
  exact result

private def s2Step294ExitFvAfter : Arena := s2Step294ExitFAfter

private def s2Step294ExitFvBefore : Arena := s2Step294ExitFAfter

private theorem s2Step294ExitFv_Incoming : rowsOwned s2Step294ExitFvBefore [s2Step294ExitFvRow,s2Step294ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294ExitGRow,s2Step294ExitFRow,s2Step294ExitFvRow,s2Step294ExitGvRow] 2 s2Step294ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294ExitFvBefore (fun q => (0≤q ∧ q<635) ∨ (636≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294ExitFv_Outgoing : rowsOwned s2Step294ExitGvAfter [s2Step294ExitFvOut,s2Step294ExitGvOut] :=
  hmrRows_owned_drop s2Step294ExitGvAfter [s2Step294ExitGOut,s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut] 2 s2Step294ExitBank_outgoingOwned

private theorem s2Step294ExitFv_distinct : (s2Step294ExitFvRow.sign::s2Step294ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294ExitFv_owned : (s2Step294ExitFvRow.sign::s2Step294ExitFvRow.payload).toFinset⊆s2Step294ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294ExitFvBefore (fun q => (0≤q ∧ q<635) ∨ (636≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294ExitFv_reserved : s2Step294ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step294ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step294ExitFv_checked : planRowResizeLog s2Step294ExitFvBefore s2Step294ExitFvRow 163 []=
    some (s2Step294ExitFvAfter,s2Step294ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step294ExitFvBefore s2Step294ExitFvAfter s2Step294ExitFvRow 163 []
    s2Step294ExitFv_distinct s2Step294ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step294ExitFvRow.payload++[]) s2Step294ExitFvRow.sign=s2Step294ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step294ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step294ExitG_Incoming : rowsOwned s2Step294ExitGBefore [s2Step294ExitGRow,s2Step294ExitFRow,s2Step294ExitFvRow,s2Step294ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294ExitGRow,s2Step294ExitFRow,s2Step294ExitFvRow,s2Step294ExitGvRow] 0 s2Step294ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294ExitG_Outgoing : rowsOwned s2Step294ExitGvAfter [s2Step294ExitGOut,s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut] :=
  hmrRows_owned_drop s2Step294ExitGvAfter [s2Step294ExitGOut,s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut] 0 s2Step294ExitBank_outgoingOwned

private theorem s2Step294ExitG_distinct : (s2Step294ExitGRow.sign::s2Step294ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294ExitG_owned : (s2Step294ExitGRow.sign::s2Step294ExitGRow.payload).toFinset⊆s2Step294ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294ExitG_retired : s2Step294ExitGBefore.retireSet s2Step294ExitGExtra.toFinset=s2Step294ExitGAfter := by
  unfold Arena.retireSet s2Step294ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step294ExitGBefore,s2Step294ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step294ExitG_checked : planRowResizeLog s2Step294ExitGBefore s2Step294ExitGRow 123 []=
    some (s2Step294ExitGAfter,s2Step294ExitGOut,shrinkRow 769 s2Step294ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step294ExitGBefore s2Step294ExitGRow 123 s2Step294ExitG_distinct s2Step294ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step294ExitGRow.payload.take 123) s2Step294ExitGRow.sign=s2Step294ExitGOut := by decide +kernel
  have hi : s2Step294ExitGRow.payload.drop 123=s2Step294ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step294ExitG_retired] at result
  exact result

private def s2Step294ExitGvBefore : Arena := s2Step294ExitFAfter

private theorem s2Step294ExitGv_Incoming : rowsOwned s2Step294ExitGvBefore [s2Step294ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294ExitGRow,s2Step294ExitFRow,s2Step294ExitFvRow,s2Step294ExitGvRow] 3 s2Step294ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294ExitGvBefore (fun q => (0≤q ∧ q<635) ∨ (636≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294ExitGv_Outgoing : rowsOwned s2Step294ExitGvAfter [s2Step294ExitGvOut] :=
  hmrRows_owned_drop s2Step294ExitGvAfter [s2Step294ExitGOut,s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut] 3 s2Step294ExitBank_outgoingOwned

private theorem s2Step294ExitGv_distinct : (s2Step294ExitGvRow.sign::s2Step294ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294ExitGv_owned : (s2Step294ExitGvRow.sign::s2Step294ExitGvRow.payload).toFinset⊆s2Step294ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294ExitGvBefore (fun q => (0≤q ∧ q<635) ∨ (636≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294ExitGv_reserved : s2Step294ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step294ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step294ExitGv_checked : planRowResizeLog s2Step294ExitGvBefore s2Step294ExitGvRow 163 []=
    some (s2Step294ExitGvAfter,s2Step294ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step294ExitGvBefore s2Step294ExitGvAfter s2Step294ExitGvRow 163 []
    s2Step294ExitGv_distinct s2Step294ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step294ExitGvRow.payload++[]) s2Step294ExitGvRow.sign=s2Step294ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step294ExitBank_rows : planWindowRowsLog s2Step294ExitGBefore [(s2Step294ExitGRow,123),(s2Step294ExitFRow,123),(s2Step294ExitFvRow,163),(s2Step294ExitGvRow,163)] [[],[],[],[]]=
    some (s2Step294ExitGvAfter,[s2Step294ExitGOut,s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut],(shrinkRow 769 s2Step294ExitGExtra ++ (shrinkRow 768 s2Step294ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step294ExitGvAfter [] []=some (s2Step294ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step294ExitGvBefore s2Step294ExitGvAfter s2Step294ExitGvAfter
    s2Step294ExitGvRow s2Step294ExitGvOut 163 [] [] [] []
    (growRow 771 []) ([]) s2Step294ExitGv_Incoming s2Step294ExitGv_checked h4 s2Step294ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step294ExitFvBefore s2Step294ExitFvAfter s2Step294ExitGvAfter
    s2Step294ExitFvRow s2Step294ExitFvOut 163 [] [(s2Step294ExitGvRow,163)] [[]] [s2Step294ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step294ExitFv_Incoming s2Step294ExitFv_checked h3 s2Step294ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step294ExitFBefore s2Step294ExitFAfter s2Step294ExitGvAfter
    s2Step294ExitFRow s2Step294ExitFOut 123 [] [(s2Step294ExitFvRow,163),(s2Step294ExitGvRow,163)] [[],[]] [s2Step294ExitFvOut,s2Step294ExitGvOut]
    (shrinkRow 768 s2Step294ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step294ExitF_Incoming s2Step294ExitF_checked h2 s2Step294ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step294ExitGBefore s2Step294ExitGAfter s2Step294ExitGvAfter
    s2Step294ExitGRow s2Step294ExitGOut 123 [] [(s2Step294ExitFRow,123),(s2Step294ExitFvRow,163),(s2Step294ExitGvRow,163)] [[],[],[]] [s2Step294ExitFOut,s2Step294ExitFvOut,s2Step294ExitGvOut]
    (shrinkRow 769 s2Step294ExitGExtra) ((shrinkRow 768 s2Step294ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step294ExitG_Incoming s2Step294ExitG_checked h1 s2Step294ExitG_Outgoing
  exact h0

private theorem s2Step294ExitBank_checked : compileHmrBankResizeLog .exit s2Step294ExitGBefore ⟨s2Step294ExitFRow,s2Step294ExitGRow,s2Step294ExitFvRow,s2Step294ExitGvRow⟩ ⟨123,123,163,163⟩ [[],[],[],[]]=
    some (s2Step294ExitGvAfter,⟨s2Step294ExitFOut,s2Step294ExitGOut,s2Step294ExitFvOut,s2Step294ExitGvOut⟩,(shrinkRow 769 s2Step294ExitGExtra ++ (shrinkRow 768 s2Step294ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step294ExitBank_rows]
  rfl

private theorem s2Step294Add0_apart : Disjoint s2Step294Add0Arena.live s2Step294Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step294Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294Add0_card : s2Step294Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step294Add0_borrowed : s2Step294Add0Arena.checkBorrow (hmrHybridCount s2Step294Add0Arena s2Step294Add0B.length) s2Step294Add0Work=some s2Step294Add0During := by
  have len : s2Step294Add0Work.length=hmrHybridCount s2Step294Add0Arena s2Step294Add0B.length := by
    rw [hmrHybridCount,s2Step294Add0_card]
    decide +kernel
  have nd : s2Step294Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step294Add0Arena s2Step294Add0During s2Step294Add0Work.toFinset s2Step294Add0_bounded s2Step294Add0_apart rfl

private theorem s2Step294Add0_distinct : (783::787::847::(s2Step294Add0A++s2Step294Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294Add0_owned : (783::787::847::(s2Step294Add0A++s2Step294Add0B)).toFinset⊆s2Step294Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step294Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294Add0_checked : compileHmrHybridCinLog s2Step294Add0Arena 787 783 847 s2Step294Add0A s2Step294Add0B s2Step294Add0Work=some s2Step294Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step294Add0Arena s2Step294Add0During 787 783 847 s2Step294Add0A s2Step294Add0B s2Step294Add0Work
    (by decide +kernel) (by decide +kernel) s2Step294Add0_distinct
    (fun q hq => s2Step294Add0_owned (List.mem_toFinset.mpr hq)) s2Step294Add0_borrowed

private theorem s2Step294Add1_apart : Disjoint s2Step294Add1Arena.live s2Step294Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step294Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294Add1_card : s2Step294Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step294Add1_borrowed : s2Step294Add1Arena.checkBorrow (hmrHybridCount s2Step294Add1Arena s2Step294Add1B.length) s2Step294Add1Work=some s2Step294Add1During := by
  have len : s2Step294Add1Work.length=hmrHybridCount s2Step294Add1Arena s2Step294Add1B.length := by
    rw [hmrHybridCount,s2Step294Add1_card]
    decide +kernel
  have nd : s2Step294Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step294Add1Arena s2Step294Add1During s2Step294Add1Work.toFinset s2Step294Add1_bounded s2Step294Add1_apart rfl

private theorem s2Step294Add1_distinct : (783::787::847::(s2Step294Add1A++s2Step294Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294Add1_owned : (783::787::847::(s2Step294Add1A++s2Step294Add1B)).toFinset⊆s2Step294Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step294Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294Add1_checked : compileHmrHybridCinLog s2Step294Add1Arena 787 783 847 s2Step294Add1A s2Step294Add1B s2Step294Add1Work=some s2Step294Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step294Add1Arena s2Step294Add1During 787 783 847 s2Step294Add1A s2Step294Add1B s2Step294Add1Work
    (by decide +kernel) (by decide +kernel) s2Step294Add1_distinct
    (fun q hq => s2Step294Add1_owned (List.mem_toFinset.mpr hq)) s2Step294Add1_borrowed

private theorem s2Step294F4_apart : Disjoint (s2Step294Add0A++s2Step294Add0B).toFinset (s2Step294Add1A++s2Step294Add1B).toFinset := by
  have nd : ((s2Step294Add0A++s2Step294Add0B)++(s2Step294Add1A++s2Step294Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step294F4_carry : s2Step294F4FlagArena.checkBorrow 1 [847]=some s2Step294Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step294F4FlagArena,s2Step294HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step294F4FlagArena,s2Step294HeadFvAfter,s2Step294Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step294F4_distinct : (820::787::783::847::((s2Step294Add0A++s2Step294Add1A)++(s2Step294Add0B++s2Step294Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294F4_flag : s2Step294HeadFvAfter.checkBorrow 1 [783]=some s2Step294F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step294HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step294F4_owned : (820::787::((s2Step294Add0A++s2Step294Add1A)++(s2Step294Add0B++s2Step294Add1B))).toFinset⊆s2Step294HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step294HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294F4_checked : compileHmrHybridF4Log s2Step294HeadFvAfter 820 787 s2Step294Add0A s2Step294Add0B s2Step294Add1A s2Step294Add1B [783] [847] s2Step294Add0Work s2Step294Add1Work=some s2Step294F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step294HeadFvAfter s2Step294F4FlagArena s2Step294Add0Arena s2Step294Add0During s2Step294Add1During 820 787
    s2Step294Add0A s2Step294Add0B s2Step294Add1A s2Step294Add1B [783] [847] s2Step294Add0Work s2Step294Add1Work
    (fun q hq => s2Step294F4_owned (List.mem_toFinset.mpr hq)) s2Step294F4_flag s2Step294F4_carry
    s2Step294F4_distinct s2Step294F4_apart s2Step294Add0_checked s2Step294Add1_checked

private theorem s2Step294Front_branch : s2Step294FrontSigmaArena.checkBorrow 1 [787]=some s2Step294HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step294FrontSigmaArena,s2Step294EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step294FrontSigmaArena,s2Step294EntryGvAfter,s2Step294HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step294Front_entry : HmrFrontEntryValid s2Step294EntryFBefore s2Step294FrontBank 124 162 ⟨123,123,163,163⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step294FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step294EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step294EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step294FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step294Front_sigma : s2Step294EntryGvAfter.checkBorrow 1 [820]=some s2Step294FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step294EntryGvAfter,arenaWires]
  · rfl

private def s2Step294HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294HeadFBefore : Arena := s2Step294HeadGAfter

private def s2Step294HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635],768⟩

private def s2Step294HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step294HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805],769⟩

private def s2Step294HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849],771⟩

private theorem s2Step294HeadBank_incomingDistinct : ([s2Step294HeadGRow,s2Step294HeadFRow,s2Step294HeadGvRow,s2Step294HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294HeadF_Incoming : rowsOwned s2Step294HeadFBefore [s2Step294HeadFRow,s2Step294HeadGvRow,s2Step294HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294HeadGRow,s2Step294HeadFRow,s2Step294HeadGvRow,s2Step294HeadFvRow] 1 s2Step294HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294HeadBank_outgoingOwned : rowsOwned s2Step294HeadFvAfter [s2Step294HeadGOut,s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step294HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294HeadF_Outgoing : rowsOwned s2Step294HeadFvAfter [s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut] :=
  hmrRows_owned_drop s2Step294HeadFvAfter [s2Step294HeadGOut,s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut] 1 s2Step294HeadBank_outgoingOwned

private theorem s2Step294HeadF_distinct : (s2Step294HeadFRow.sign::s2Step294HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294HeadF_owned : (s2Step294HeadFRow.sign::s2Step294HeadFRow.payload).toFinset⊆s2Step294HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294HeadF_reserved : s2Step294HeadFBefore.reserve s2Step294HeadFFresh.toFinset=some s2Step294HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step294HeadFFresh,arenaWires]
  · norm_num [s2Step294HeadFBefore,s2Step294HeadGAfter,s2Step294HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step294HeadFAfter,s2Step294HeadFBefore,s2Step294HeadGAfter,s2Step294HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step294HeadF_checked : planRowResizeLog s2Step294HeadFBefore s2Step294HeadFRow 125 s2Step294HeadFFresh=
    some (s2Step294HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 780],768⟩,growRow 768 s2Step294HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step294HeadFBefore s2Step294HeadFAfter s2Step294HeadFRow 125 s2Step294HeadFFresh
    s2Step294HeadF_distinct s2Step294HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294HeadF_reserved
  have rowEq : WindowRow.mk (s2Step294HeadFRow.payload++s2Step294HeadFFresh) s2Step294HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 780],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step294HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step294HeadFvBefore : Arena := s2Step294HeadGvAfter

private theorem s2Step294HeadFv_Incoming : rowsOwned s2Step294HeadFvBefore [s2Step294HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294HeadGRow,s2Step294HeadFRow,s2Step294HeadGvRow,s2Step294HeadFvRow] 3 s2Step294HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294HeadFv_Outgoing : rowsOwned s2Step294HeadFvAfter [s2Step294HeadFvOut] :=
  hmrRows_owned_drop s2Step294HeadFvAfter [s2Step294HeadGOut,s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut] 3 s2Step294HeadBank_outgoingOwned

private theorem s2Step294HeadFv_distinct : (s2Step294HeadFvRow.sign::s2Step294HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294HeadFv_owned : (s2Step294HeadFvRow.sign::s2Step294HeadFvRow.payload).toFinset⊆s2Step294HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294HeadFv_reserved : s2Step294HeadFvBefore.reserve s2Step294HeadFvFresh.toFinset=some s2Step294HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step294HeadFvFresh,arenaWires]
  · norm_num [s2Step294HeadFvBefore,s2Step294HeadGvAfter,s2Step294HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step294HeadFvAfter,s2Step294HeadFvBefore,s2Step294HeadGvAfter,s2Step294HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step294HeadFv_checked : planRowResizeLog s2Step294HeadFvBefore s2Step294HeadFvRow 163 s2Step294HeadFvFresh=
    some (s2Step294HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩,growRow 770 s2Step294HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step294HeadFvBefore s2Step294HeadFvAfter s2Step294HeadFvRow 163 s2Step294HeadFvFresh
    s2Step294HeadFv_distinct s2Step294HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step294HeadFvRow.payload++s2Step294HeadFvFresh) s2Step294HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step294HeadG_Incoming : rowsOwned s2Step294HeadGBefore [s2Step294HeadGRow,s2Step294HeadFRow,s2Step294HeadGvRow,s2Step294HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294HeadGRow,s2Step294HeadFRow,s2Step294HeadGvRow,s2Step294HeadFvRow] 0 s2Step294HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294HeadG_Outgoing : rowsOwned s2Step294HeadFvAfter [s2Step294HeadGOut,s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut] :=
  hmrRows_owned_drop s2Step294HeadFvAfter [s2Step294HeadGOut,s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut] 0 s2Step294HeadBank_outgoingOwned

private theorem s2Step294HeadG_distinct : (s2Step294HeadGRow.sign::s2Step294HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294HeadG_owned : (s2Step294HeadGRow.sign::s2Step294HeadGRow.payload).toFinset⊆s2Step294HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294HeadG_reserved : s2Step294HeadGBefore.reserve s2Step294HeadGFresh.toFinset=some s2Step294HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step294HeadGFresh,arenaWires]
  · norm_num [s2Step294HeadGBefore,s2Step294HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step294HeadGAfter,s2Step294HeadGBefore,s2Step294HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step294HeadG_checked : planRowResizeLog s2Step294HeadGBefore s2Step294HeadGRow 125 s2Step294HeadGFresh=
    some (s2Step294HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805, 811],769⟩,growRow 769 s2Step294HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step294HeadGBefore s2Step294HeadGAfter s2Step294HeadGRow 125 s2Step294HeadGFresh
    s2Step294HeadG_distinct s2Step294HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294HeadG_reserved
  have rowEq : WindowRow.mk (s2Step294HeadGRow.payload++s2Step294HeadGFresh) s2Step294HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 805, 811],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step294HeadGvBefore : Arena := s2Step294HeadFAfter

private theorem s2Step294HeadGv_Incoming : rowsOwned s2Step294HeadGvBefore [s2Step294HeadGvRow,s2Step294HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step294HeadGRow,s2Step294HeadFRow,s2Step294HeadGvRow,s2Step294HeadFvRow] 2 s2Step294HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step294HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step294HeadGv_Outgoing : rowsOwned s2Step294HeadFvAfter [s2Step294HeadGvOut,s2Step294HeadFvOut] :=
  hmrRows_owned_drop s2Step294HeadFvAfter [s2Step294HeadGOut,s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut] 2 s2Step294HeadBank_outgoingOwned

private theorem s2Step294HeadGv_distinct : (s2Step294HeadGvRow.sign::s2Step294HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step294HeadGv_owned : (s2Step294HeadGvRow.sign::s2Step294HeadGvRow.payload).toFinset⊆s2Step294HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step294HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step294HeadGv_reserved : s2Step294HeadGvBefore.reserve s2Step294HeadGvFresh.toFinset=some s2Step294HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step294HeadGvFresh,arenaWires]
  · norm_num [s2Step294HeadGvBefore,s2Step294HeadFAfter,s2Step294HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step294HeadGvAfter,s2Step294HeadGvBefore,s2Step294HeadFAfter,s2Step294HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step294HeadGv_checked : planRowResizeLog s2Step294HeadGvBefore s2Step294HeadGvRow 163 s2Step294HeadGvFresh=
    some (s2Step294HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩,growRow 771 s2Step294HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step294HeadGvBefore s2Step294HeadGvAfter s2Step294HeadGvRow 163 s2Step294HeadGvFresh
    s2Step294HeadGv_distinct s2Step294HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step294HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step294HeadGvRow.payload++s2Step294HeadGvFresh) s2Step294HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step294HeadBank_rows : planWindowRowsLog s2Step294HeadGBefore [(s2Step294HeadGRow,125),(s2Step294HeadFRow,125),(s2Step294HeadGvRow,163),(s2Step294HeadFvRow,163)] [s2Step294HeadGFresh,s2Step294HeadFFresh,s2Step294HeadGvFresh,s2Step294HeadFvFresh]=
    some (s2Step294HeadFvAfter,[s2Step294HeadGOut,s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut],(growRow 769 s2Step294HeadGFresh ++ (growRow 768 s2Step294HeadFFresh ++ (growRow 771 s2Step294HeadGvFresh ++ (growRow 770 s2Step294HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step294HeadFvAfter [] []=some (s2Step294HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step294HeadFvBefore s2Step294HeadFvAfter s2Step294HeadFvAfter
    s2Step294HeadFvRow s2Step294HeadFvOut 163 s2Step294HeadFvFresh [] [] []
    (growRow 770 s2Step294HeadFvFresh) ([]) s2Step294HeadFv_Incoming s2Step294HeadFv_checked h4 s2Step294HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step294HeadGvBefore s2Step294HeadGvAfter s2Step294HeadFvAfter
    s2Step294HeadGvRow s2Step294HeadGvOut 163 s2Step294HeadGvFresh [(s2Step294HeadFvRow,163)] [s2Step294HeadFvFresh] [s2Step294HeadFvOut]
    (growRow 771 s2Step294HeadGvFresh) ((growRow 770 s2Step294HeadFvFresh ++ [])) s2Step294HeadGv_Incoming s2Step294HeadGv_checked h3 s2Step294HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step294HeadFBefore s2Step294HeadFAfter s2Step294HeadFvAfter
    s2Step294HeadFRow s2Step294HeadFOut 125 s2Step294HeadFFresh [(s2Step294HeadGvRow,163),(s2Step294HeadFvRow,163)] [s2Step294HeadGvFresh,s2Step294HeadFvFresh] [s2Step294HeadGvOut,s2Step294HeadFvOut]
    (growRow 768 s2Step294HeadFFresh) ((growRow 771 s2Step294HeadGvFresh ++ (growRow 770 s2Step294HeadFvFresh ++ []))) s2Step294HeadF_Incoming s2Step294HeadF_checked h2 s2Step294HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step294HeadGBefore s2Step294HeadGAfter s2Step294HeadFvAfter
    s2Step294HeadGRow s2Step294HeadGOut 125 s2Step294HeadGFresh [(s2Step294HeadFRow,125),(s2Step294HeadGvRow,163),(s2Step294HeadFvRow,163)] [s2Step294HeadFFresh,s2Step294HeadGvFresh,s2Step294HeadFvFresh] [s2Step294HeadFOut,s2Step294HeadGvOut,s2Step294HeadFvOut]
    (growRow 769 s2Step294HeadGFresh) ((growRow 768 s2Step294HeadFFresh ++ (growRow 771 s2Step294HeadGvFresh ++ (growRow 770 s2Step294HeadFvFresh ++ [])))) s2Step294HeadG_Incoming s2Step294HeadG_checked h1 s2Step294HeadG_Outgoing
  exact h0

private theorem s2Step294HeadBank_checked : compileHmrBankResizeLog .headroom s2Step294HeadGBefore ⟨s2Step294HeadFRow,s2Step294HeadGRow,s2Step294HeadFvRow,s2Step294HeadGvRow⟩ ⟨125,125,163,163⟩ [s2Step294HeadGFresh,s2Step294HeadFFresh,s2Step294HeadGvFresh,s2Step294HeadFvFresh]=
    some (s2Step294HeadFvAfter,⟨s2Step294HeadFOut,s2Step294HeadGOut,s2Step294HeadFvOut,s2Step294HeadGvOut⟩,(growRow 769 s2Step294HeadGFresh ++ (growRow 768 s2Step294HeadFFresh ++ (growRow 771 s2Step294HeadGvFresh ++ (growRow 770 s2Step294HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step294HeadBank_rows]
  rfl

private theorem s2Step294Front_checked : compileHmrSourceFrontLog s2Step294EntryFBefore s2Step294FrontBank 124 162 ⟨123,123,163,163⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step294FrontLog=some s2Step294FrontPlan := by
  have pairEq : s2Step294FrontPair=⟨s2Step294HeadFRow,s2Step294HeadGRow,s2Step294HeadFvRow,s2Step294HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step294FrontHead=⟨s2Step294ExitFRow,s2Step294ExitGRow,s2Step294ExitFvRow,s2Step294ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step294Add0A=s2Step294FrontHead.f.wires := by decide +kernel
  have gEq : s2Step294Add0B=s2Step294FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step294Add1A=s2Step294FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step294Add1B=s2Step294FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step294EntryFBefore s2Step294FrontBank 124 162 ⟨123,123,163,163⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step294FrontLog s2Step294FrontPlan
  · exact s2Step294Front_entry
  · exact s2Step294EntryBank_checked
  · exact s2Step294Front_sigma
  · rfl
  · exact s2Step294Front_branch
  · rfl
  · simpa only [s2Step294FrontPlan,pairEq] using s2Step294HeadBank_checked
  · simpa only [s2Step294FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step294F4_checked
  · exact s2Step294Counter_checked
  · rfl
  · simpa only [s2Step294FrontPlan,headEq] using s2Step294ExitBank_checked

private theorem s2Step294Complete_explicit_checked : compileHmrEarlyStepLog s2Step294EntryFBefore s2Step294FrontBank 124 162 ⟨123,123,163,163⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step294CompleteLog=some s2Step294CompletePlan := by
  let Q := s2Step294EarlyControlPlan
  have hq := s2Step294EarlyControl_plan_checked
  have fv1 : s2Step294CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step294CompleteOut.fv.payload[2]?.getD s2Step294CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step294CompleteOut.fv.payload[3]?.getD s2Step294CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step294CompleteOut.fv.payload[4]?.getD s2Step294CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step294EntryFBefore s2Step294EarlyControlArena s2Step294FrontBank 124 162 ⟨123,123,163,163⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step294CompleteLog s2Step294FrontPlan Q
    s2Step294Front_checked s2Step294Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step294Complete_owned s2Step294Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step294EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 820 s2Step294CompleteOut.fv.second (s2Step294CompleteOut.fv.payload[2]?.getD s2Step294CompleteOut.fv.sign) (s2Step294CompleteOut.fv.payload[3]?.getD s2Step294CompleteOut.fv.sign) (s2Step294CompleteOut.fv.payload[4]?.getD s2Step294CompleteOut.fv.sign) 787 54 s2Step294EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep294Arena : Arena := s2Step294EntryFBefore
def s2PrivateStep294Bank : WindowBank := s2Step294FrontBank
def s2PrivateStep294Spec : HmrSourceWalkStepLog := ⟨124,162,⟨123,123,163,163⟩,54,.early s2Step294CompleteLog⟩
def s2PrivateStep294Plan : HmrSourceStepPlan := .early s2Step294CompletePlan
theorem s2PrivateStep294_source : s2PrivateStep294Spec=s2ObservedLogs288[6] := rfl
theorem s2PrivateStep294_checked : compileHmrSourceStepLog s2PrivateStep294Arena s2PrivateStep294Bank
    s2PrivateStep294Spec.fgWidth s2PrivateStep294Spec.vWidth s2PrivateStep294Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 294 s2PrivateStep294Spec.need none s2PrivateStep294Spec.log=some s2PrivateStep294Plan := by
  change compileHmrSourceStepLog s2Step294EntryFBefore s2Step294FrontBank 124 162 ⟨123,123,163,163⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 294 54 none (.early s2Step294CompleteLog)=some (.early s2Step294CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 294<498)]
  rw [s2Step294Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
