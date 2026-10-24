import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep293
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

private def s2Step295CompleteMoves : List (Wire × Wire) := [(882,122)]

private def s2Step295EarlyControlLog : HmrEarlyControlLog := ⟨[882, 805, 811, 780, 785],[783],[847],[830, 800, 894, 896, 901, 903],[904]⟩

private def s2Step295FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[785], [780], [805], [811]],[[], [], [], []]⟩,[787],[820],[783],[847],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[783, 847, 830, 800]⟩

private def s2Step295CompleteLog : HmrEarlyStepLog := ⟨s2Step295FrontLog,s2Step295CompleteMoves,s2Step295EarlyControlLog⟩

private def s2Step295ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step295ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step295ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121],769⟩

private def s2Step295ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step295FrontOut : WindowBank := ⟨s2Step295ExitFOut,s2Step295ExitGOut,s2Step295ExitFvOut,s2Step295ExitGvOut⟩

private def s2Step295CompleteOut : WindowBank := s2Step295FrontOut.repacked s2Step295CompleteMoves

private def s2Step295EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step295EarlyControlPositiveArena,[783],s2Step295EarlyControlEqualityArena,[847],⟨⟨787,false⟩,[⟨⟨783,false⟩,847⟩]⟩⟩

private def s2Step295EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,882⟩,⟨⟨774,false⟩,805⟩,⟨⟨775,false⟩,811⟩,⟨⟨776,false⟩,780⟩,⟨⟨777,false⟩,785⟩]⟩

private def s2Step295EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step295EarlyControlZeroArena,s2Step295EarlyControlZeroPlan,s2Step295EarlyControlClassPlan,s2Step295EarlyControlFlagArena,s2Step295EarlyControlFittedArena,s2Step295EarlyControlHistoryArena,s2Step295EarlyControlSigmaArena,s2Step295EarlyControlOutputArena,s2Step295EarlyControlLog⟩

private def s2Step295CounterWork : List Wire := [783, 847, 830, 800]

private theorem s2Step295Counter_bounded : s2Step295CounterWork.toFinset⊆arenaWires := by norm_num [s2Step295CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step295HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295CounterDuring : Arena := ⟨s2Step295HeadFvAfter.live∪s2Step295CounterWork.toFinset,Finset.union_subset s2Step295HeadFvAfter.bounded s2Step295Counter_bounded⟩

private def s2Step295EntryFFresh : List Wire := []

private def s2Step295EntryFvFresh : List Wire := []

private def s2Step295EntryGFresh : List Wire := []

private def s2Step295EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295EntryGvAfter : Arena := s2Step295EntryFBefore

private def s2Step295EntryGvFresh : List Wire := []

private def s2Step295ExitFExtra : List Wire := [780]

private def s2Step295ExitFvExtra : List Wire := [811]

private def s2Step295ExitGExtra : List Wire := [122, 785]

private def s2Step295ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295ExitGvExtra : List Wire := [805]

private def s2Step295Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step295Add0_bounded : s2Step295Add0Work.toFinset⊆arenaWires := by
  have h : s2Step295Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step295Add0During : Arena := ⟨s2Step295Add0Arena.live∪s2Step295Add0Work.toFinset,Finset.union_subset s2Step295Add0Arena.bounded s2Step295Add0_bounded⟩

private def s2Step295Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step295Add1_bounded : s2Step295Add1Work.toFinset⊆arenaWires := by
  have h : s2Step295Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step295Add1During : Arena := ⟨s2Step295Add1Arena.live∪s2Step295Add1Work.toFinset,Finset.union_subset s2Step295Add1Arena.bounded s2Step295Add1_bounded⟩

private def s2Step295F4FlagArena : Arena := ⟨s2Step295HeadFvAfter.live∪{783},Finset.union_subset s2Step295HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step295F4Plan : HmrHybridF4Plan := ⟨s2Step295F4FlagArena,[783],s2Step295Add0Arena,[847],s2Step295Add0During,s2Step295Add0Work,s2Step295Add1During,s2Step295Add1Work⟩

private def s2Step295HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 780],768⟩

private def s2Step295HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 811],770⟩

private def s2Step295HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 785],769⟩

private def s2Step295HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 805],771⟩

private def s2Step295FrontHead : WindowBank := ⟨s2Step295HeadFOut,s2Step295HeadGOut,s2Step295HeadFvOut,s2Step295HeadGvOut⟩

private def s2Step295EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step295EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step295EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩

private def s2Step295EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step295FrontPair : WindowBank := ⟨s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut⟩

private def s2Step295FrontSigmaArena : Arena := ⟨s2Step295EntryGvAfter.live∪{787},Finset.union_subset s2Step295EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step295HeadFFresh : List Wire := [780]

private def s2Step295HeadFvFresh : List Wire := [811]

private def s2Step295HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295HeadGFresh : List Wire := [785]

private def s2Step295HeadGvFresh : List Wire := [805]

private def s2Step295FrontPlan : HmrSourceFront := ⟨s2Step295EntryGvAfter,s2Step295FrontPair,(growRow 768 s2Step295EntryFFresh ++ (growRow 769 s2Step295EntryGFresh ++ (growRow 770 s2Step295EntryFvFresh ++ (growRow 771 s2Step295EntryGvFresh ++ [])))),s2Step295FrontSigmaArena,[787],s2Step295HeadGBefore,[820],
  s2Step295HeadFvAfter,s2Step295FrontHead,(growRow 769 s2Step295HeadGFresh ++ (growRow 768 s2Step295HeadFFresh ++ (growRow 771 s2Step295HeadGvFresh ++ (growRow 770 s2Step295HeadFvFresh ++ [])))),s2Step295F4Plan,s2Step295CounterDuring,s2Step295CounterWork,s2Step295ExitGvAfter,s2Step295FrontOut,(shrinkRow 769 s2Step295ExitGExtra ++ (shrinkRow 768 s2Step295ExitFExtra ++ (shrinkRow 770 s2Step295ExitFvExtra ++ (shrinkRow 771 s2Step295ExitGvExtra ++ []))))⟩

private def s2Step295CompletePlan : HmrEarlyStepPlan := ⟨s2Step295FrontPlan,s2Step295EarlyControlArena,s2Step295EarlyControlPlan,s2Step295CompleteMoves⟩

private theorem s2Step295Complete_apart : List.Disjoint (s2Step295CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step295CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step295Complete_owned : (s2Step295CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step295EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step295CompleteMoveArena : Arena := ⟨s2Step295ExitGvAfter.live∪{122},Finset.union_subset s2Step295ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step295Complete_repack : s2Step295ExitGvAfter.checkRepack s2Step295CompleteMoves=some s2Step295EarlyControlArena := by
  have owned : 882∈s2Step295ExitGvAfter.live := by norm_num [s2Step295ExitGvAfter,arenaWires]
  have reserve : s2Step295ExitGvAfter.reserve {122}=some s2Step295CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step295ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step295CompleteMoveArena.retireSet {882}=s2Step295EarlyControlArena := by
    unfold Arena.retireSet s2Step295EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step295CompleteMoveArena,s2Step295ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step295CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step295CompleteMoveArena.retireSet {882}).checkRepack []=some s2Step295EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step295EarlyControl_branchOwned : ([820] : List Wire).toFinset⊆s2Step295EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_branch : compileHmrBranchRetirement s2Step295EarlyControlSigmaArena 820=some s2Step295EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step295EarlyControl_branchOwned
  · ext q
    simp [s2Step295EarlyControlOutputArena,s2Step295EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step295EarlyControl_classEqualityBorrow : s2Step295EarlyControlPositiveArena.checkBorrow (([787, 783] : List Wire).length-1) s2Step295EarlyControlLog.classWork=some s2Step295EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step295EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step295EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step295EarlyControlEqualityArena,s2Step295EarlyControlPositiveArena,s2Step295EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step295EarlyControl_classEqualityOwned : ([787, 783] : List Wire).toFinset⊆s2Step295EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_classEquality : compileHmrEqualityLog s2Step295EarlyControlPositiveArena [787, 783] 0 s2Step295EarlyControlLog.classWork=some (s2Step295EarlyControlEqualityArena,s2Step295EarlyControlLog.classWork,s2Step295EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step295EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step295EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step295EarlyControl_classOwned : ([777, 785, 787] : List Wire).toFinset⊆s2Step295EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_positiveBorrow : s2Step295EarlyControlZeroArena.checkBorrow (1) s2Step295EarlyControlLog.positiveWork=some s2Step295EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step295EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step295EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step295EarlyControlPositiveArena,s2Step295EarlyControlZeroArena,s2Step295EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step295EarlyControl_class : compileHmrSourceClassLog s2Step295EarlyControlZeroArena false 777 s2Step295EarlyControlZeroPlan.top 0 787 s2Step295EarlyControlLog.positiveWork s2Step295EarlyControlLog.classWork=some s2Step295EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step295EarlyControlClassPlan s2Step295EarlyControlZeroArena false 777 s2Step295EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step295EarlyControl_classOwned
  · exact s2Step295EarlyControl_positiveBorrow
  · exact s2Step295EarlyControl_classEquality

private theorem s2Step295EarlyControl_entryRecordOwned : ([820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step295EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step295EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_fitBorrow : s2Step295EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step295EarlyControlLog.recordFresh=some s2Step295EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step295EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step295EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step295EarlyControlFittedArena,s2Step295EarlyControlFlagArena,s2Step295EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step295EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step295EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlFlagArena (fun q => (0≤q ∧ q<904) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_fit : compileHmrRecordGrowLog s2Step295EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 55 s2Step295EarlyControlLog.recordFresh=some s2Step295EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step295EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step295EarlyControl_fitBorrow

private theorem s2Step295EarlyControl_flagsBorrow : s2Step295EarlyControlEqualityArena.checkBorrow (6) s2Step295EarlyControlLog.flagWork=some s2Step295EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step295EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step295EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step295EarlyControlFlagArena,s2Step295EarlyControlEqualityArena,s2Step295EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step295EarlyControl_flagsOwned : ([847, 253, 252, 251] : List Wire).toFinset⊆s2Step295EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_flags : compileHmrFlagsLog s2Step295EarlyControlClassPlan.equalityArena s2Step295EarlyControlClassPlan.equality.top 253 252 251 s2Step295EarlyControlLog.flagWork=some s2Step295EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step295EarlyControl_flagsOwned⟩
  · exact s2Step295EarlyControl_flagsBorrow

private theorem s2Step295EarlyControl_historyBorrow : s2Step295EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step295EarlyControlLog.recordFresh=some s2Step295EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step295EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step295EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step295EarlyControlHistoryArena,s2Step295EarlyControlArena,s2Step295EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step295EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step295EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_history : compileHmrRecordGrowLog s2Step295EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 55 s2Step295EarlyControlLog.recordFresh=some s2Step295EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step295EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step295EarlyControl_historyBorrow

private theorem s2Step295EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step295EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step295EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_sigmaRelease : s2Step295EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step295EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step295EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step295EarlyControlSigmaArena,s2Step295EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step295EarlyControl_sigma : compileHmrSigmaDropLog s2Step295EarlyControlHistoryArena false 0 0 254 787 []=some s2Step295EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step295EarlyControl_sigmaOwned⟩
  · exact s2Step295EarlyControl_sigmaRelease

private theorem s2Step295EarlyControl_zeroBorrow : s2Step295EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step295EarlyControlLog.zeroWork=some s2Step295EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step295EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step295EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step295EarlyControlZeroArena,s2Step295EarlyControlArena,s2Step295EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step295EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step295EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step295EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EarlyControl_zero : compileHmrEqualityLog s2Step295EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step295EarlyControlLog.zeroWork=some (s2Step295EarlyControlZeroArena,s2Step295EarlyControlLog.zeroWork,s2Step295EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step295EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step295EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step295EarlyControl_logged : s2Step295EarlyControlPlan.Logged s2Step295EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 787 254 253 252 251 820 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step295EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step295EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step295EarlyControl_zero
  · exact s2Step295EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step295EarlyControl_flags
  · exact s2Step295EarlyControl_fit
  · exact s2Step295EarlyControl_history
  · exact s2Step295EarlyControl_sigma
  · exact s2Step295EarlyControl_branch

private theorem s2Step295EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step295EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 787 254 253 252 251 820 55 s2Step295EarlyControlLog=some s2Step295EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step295EarlyControlPlan s2Step295EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 787 254 253 252 251 820 55 s2Step295EarlyControl_logged

private def s2Step295EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step295EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step295EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩

private def s2Step295EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step295FrontBank : WindowBank := ⟨s2Step295EntryFRow,s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow⟩

private def s2Step295Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 780, 768]

private def s2Step295Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 785, 769]

private def s2Step295Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 811, 770]

private def s2Step295Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 805, 771]

private theorem s2Step295Counter_apart : Disjoint s2Step295HeadFvAfter.live s2Step295CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step295HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295Counter_borrowed : s2Step295HeadFvAfter.checkBorrow 4 s2Step295CounterWork=some s2Step295CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step295HeadFvAfter s2Step295CounterDuring s2Step295CounterWork.toFinset s2Step295Counter_bounded s2Step295Counter_apart rfl

private theorem s2Step295Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step295HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step295HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295Counter_checked : compileHmrCounterStepLog s2Step295HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step295CounterWork=some s2Step295CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step295HeadFvAfter.live := fun q hq => s2Step295Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step295Counter_borrowed

private def s2Step295EntryFAfter : Arena := s2Step295EntryFBefore

private theorem s2Step295EntryBank_incomingDistinct : ([s2Step295EntryFRow,s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295EntryF_Incoming : rowsOwned s2Step295EntryFBefore [s2Step295EntryFRow,s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295EntryFRow,s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow] 0 s2Step295EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295EntryBank_outgoingOwned : rowsOwned s2Step295EntryGvAfter [s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step295EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295EntryF_Outgoing : rowsOwned s2Step295EntryGvAfter [s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut] :=
  hmrRows_owned_drop s2Step295EntryGvAfter [s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut] 0 s2Step295EntryBank_outgoingOwned

private theorem s2Step295EntryF_distinct : (s2Step295EntryFRow.sign::s2Step295EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295EntryF_owned : (s2Step295EntryFRow.sign::s2Step295EntryFRow.payload).toFinset⊆s2Step295EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EntryF_reserved : s2Step295EntryFBefore.reserve s2Step295EntryFFresh.toFinset=some s2Step295EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step295EntryFFresh,arenaWires]
  · norm_num [s2Step295EntryFBefore,s2Step295EntryFFresh,arenaWires]
  · simp only [s2Step295EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step295EntryF_checked : planRowResizeLog s2Step295EntryFBefore s2Step295EntryFRow 123 s2Step295EntryFFresh=
    some (s2Step295EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩,growRow 768 s2Step295EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step295EntryFBefore s2Step295EntryFAfter s2Step295EntryFRow 123 s2Step295EntryFFresh
    s2Step295EntryF_distinct s2Step295EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step295EntryF_reserved
  have rowEq : WindowRow.mk (s2Step295EntryFRow.payload++s2Step295EntryFFresh) s2Step295EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step295EntryFvAfter : Arena := s2Step295EntryFBefore

private def s2Step295EntryFvBefore : Arena := s2Step295EntryFBefore

private theorem s2Step295EntryFv_Incoming : rowsOwned s2Step295EntryFvBefore [s2Step295EntryFvRow,s2Step295EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295EntryFRow,s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow] 2 s2Step295EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295EntryFv_Outgoing : rowsOwned s2Step295EntryGvAfter [s2Step295EntryFvOut,s2Step295EntryGvOut] :=
  hmrRows_owned_drop s2Step295EntryGvAfter [s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut] 2 s2Step295EntryBank_outgoingOwned

private theorem s2Step295EntryFv_distinct : (s2Step295EntryFvRow.sign::s2Step295EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295EntryFv_owned : (s2Step295EntryFvRow.sign::s2Step295EntryFvRow.payload).toFinset⊆s2Step295EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EntryFv_reserved : s2Step295EntryFvBefore.reserve s2Step295EntryFvFresh.toFinset=some s2Step295EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step295EntryFvFresh,arenaWires]
  · norm_num [s2Step295EntryFvBefore,s2Step295EntryFBefore,s2Step295EntryFvFresh,arenaWires]
  · simp only [s2Step295EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step295EntryFv_checked : planRowResizeLog s2Step295EntryFvBefore s2Step295EntryFvRow 163 s2Step295EntryFvFresh=
    some (s2Step295EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩,growRow 770 s2Step295EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step295EntryFvBefore s2Step295EntryFvAfter s2Step295EntryFvRow 163 s2Step295EntryFvFresh
    s2Step295EntryFv_distinct s2Step295EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step295EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step295EntryFvRow.payload++s2Step295EntryFvFresh) s2Step295EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step295EntryGAfter : Arena := s2Step295EntryFBefore

private def s2Step295EntryGBefore : Arena := s2Step295EntryFBefore

private theorem s2Step295EntryG_Incoming : rowsOwned s2Step295EntryGBefore [s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295EntryFRow,s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow] 1 s2Step295EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295EntryG_Outgoing : rowsOwned s2Step295EntryGvAfter [s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut] :=
  hmrRows_owned_drop s2Step295EntryGvAfter [s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut] 1 s2Step295EntryBank_outgoingOwned

private theorem s2Step295EntryG_distinct : (s2Step295EntryGRow.sign::s2Step295EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295EntryG_owned : (s2Step295EntryGRow.sign::s2Step295EntryGRow.payload).toFinset⊆s2Step295EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EntryG_reserved : s2Step295EntryGBefore.reserve s2Step295EntryGFresh.toFinset=some s2Step295EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step295EntryGFresh,arenaWires]
  · norm_num [s2Step295EntryGBefore,s2Step295EntryFBefore,s2Step295EntryGFresh,arenaWires]
  · simp only [s2Step295EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step295EntryG_checked : planRowResizeLog s2Step295EntryGBefore s2Step295EntryGRow 123 s2Step295EntryGFresh=
    some (s2Step295EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩,growRow 769 s2Step295EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step295EntryGBefore s2Step295EntryGAfter s2Step295EntryGRow 123 s2Step295EntryGFresh
    s2Step295EntryG_distinct s2Step295EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step295EntryG_reserved
  have rowEq : WindowRow.mk (s2Step295EntryGRow.payload++s2Step295EntryGFresh) s2Step295EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step295EntryGvBefore : Arena := s2Step295EntryFBefore

private theorem s2Step295EntryGv_Incoming : rowsOwned s2Step295EntryGvBefore [s2Step295EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295EntryFRow,s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow] 3 s2Step295EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295EntryGv_Outgoing : rowsOwned s2Step295EntryGvAfter [s2Step295EntryGvOut] :=
  hmrRows_owned_drop s2Step295EntryGvAfter [s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut] 3 s2Step295EntryBank_outgoingOwned

private theorem s2Step295EntryGv_distinct : (s2Step295EntryGvRow.sign::s2Step295EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295EntryGv_owned : (s2Step295EntryGvRow.sign::s2Step295EntryGvRow.payload).toFinset⊆s2Step295EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295EntryGv_reserved : s2Step295EntryGvBefore.reserve s2Step295EntryGvFresh.toFinset=some s2Step295EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step295EntryGvFresh,arenaWires]
  · norm_num [s2Step295EntryGvBefore,s2Step295EntryFBefore,s2Step295EntryGvFresh,arenaWires]
  · simp only [s2Step295EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step295EntryGv_checked : planRowResizeLog s2Step295EntryGvBefore s2Step295EntryGvRow 163 s2Step295EntryGvFresh=
    some (s2Step295EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩,growRow 771 s2Step295EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step295EntryGvBefore s2Step295EntryGvAfter s2Step295EntryGvRow 163 s2Step295EntryGvFresh
    s2Step295EntryGv_distinct s2Step295EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step295EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step295EntryGvRow.payload++s2Step295EntryGvFresh) s2Step295EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step295EntryBank_rows : planWindowRowsLog s2Step295EntryFBefore [(s2Step295EntryFRow,123),(s2Step295EntryGRow,123),(s2Step295EntryFvRow,163),(s2Step295EntryGvRow,163)] [s2Step295EntryFFresh,s2Step295EntryGFresh,s2Step295EntryFvFresh,s2Step295EntryGvFresh]=
    some (s2Step295EntryGvAfter,[s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut],(growRow 768 s2Step295EntryFFresh ++ (growRow 769 s2Step295EntryGFresh ++ (growRow 770 s2Step295EntryFvFresh ++ (growRow 771 s2Step295EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step295EntryGvAfter [] []=some (s2Step295EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step295EntryGvBefore s2Step295EntryGvAfter s2Step295EntryGvAfter
    s2Step295EntryGvRow s2Step295EntryGvOut 163 s2Step295EntryGvFresh [] [] []
    (growRow 771 s2Step295EntryGvFresh) ([]) s2Step295EntryGv_Incoming s2Step295EntryGv_checked h4 s2Step295EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step295EntryFvBefore s2Step295EntryFvAfter s2Step295EntryGvAfter
    s2Step295EntryFvRow s2Step295EntryFvOut 163 s2Step295EntryFvFresh [(s2Step295EntryGvRow,163)] [s2Step295EntryGvFresh] [s2Step295EntryGvOut]
    (growRow 770 s2Step295EntryFvFresh) ((growRow 771 s2Step295EntryGvFresh ++ [])) s2Step295EntryFv_Incoming s2Step295EntryFv_checked h3 s2Step295EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step295EntryGBefore s2Step295EntryGAfter s2Step295EntryGvAfter
    s2Step295EntryGRow s2Step295EntryGOut 123 s2Step295EntryGFresh [(s2Step295EntryFvRow,163),(s2Step295EntryGvRow,163)] [s2Step295EntryFvFresh,s2Step295EntryGvFresh] [s2Step295EntryFvOut,s2Step295EntryGvOut]
    (growRow 769 s2Step295EntryGFresh) ((growRow 770 s2Step295EntryFvFresh ++ (growRow 771 s2Step295EntryGvFresh ++ []))) s2Step295EntryG_Incoming s2Step295EntryG_checked h2 s2Step295EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step295EntryFBefore s2Step295EntryFAfter s2Step295EntryGvAfter
    s2Step295EntryFRow s2Step295EntryFOut 123 s2Step295EntryFFresh [(s2Step295EntryGRow,123),(s2Step295EntryFvRow,163),(s2Step295EntryGvRow,163)] [s2Step295EntryGFresh,s2Step295EntryFvFresh,s2Step295EntryGvFresh] [s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut]
    (growRow 768 s2Step295EntryFFresh) ((growRow 769 s2Step295EntryGFresh ++ (growRow 770 s2Step295EntryFvFresh ++ (growRow 771 s2Step295EntryGvFresh ++ [])))) s2Step295EntryF_Incoming s2Step295EntryF_checked h1 s2Step295EntryF_Outgoing
  exact h0

private theorem s2Step295EntryBank_checked : compileHmrBankResizeLog .entry s2Step295EntryFBefore ⟨s2Step295EntryFRow,s2Step295EntryGRow,s2Step295EntryFvRow,s2Step295EntryGvRow⟩ ⟨123,123,163,163⟩ [s2Step295EntryFFresh,s2Step295EntryGFresh,s2Step295EntryFvFresh,s2Step295EntryGvFresh]=
    some (s2Step295EntryGvAfter,⟨s2Step295EntryFOut,s2Step295EntryGOut,s2Step295EntryFvOut,s2Step295EntryGvOut⟩,(growRow 768 s2Step295EntryFFresh ++ (growRow 769 s2Step295EntryGFresh ++ (growRow 770 s2Step295EntryFvFresh ++ (growRow 771 s2Step295EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step295EntryBank_rows]
  rfl

private def s2Step295ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295ExitFBefore : Arena := s2Step295ExitGAfter

private def s2Step295ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 780],768⟩

private def s2Step295ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 811],770⟩

private def s2Step295ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 785],769⟩

private def s2Step295ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 805],771⟩

private theorem s2Step295ExitBank_incomingDistinct : ([s2Step295ExitGRow,s2Step295ExitFRow,s2Step295ExitFvRow,s2Step295ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295ExitF_Incoming : rowsOwned s2Step295ExitFBefore [s2Step295ExitFRow,s2Step295ExitFvRow,s2Step295ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295ExitGRow,s2Step295ExitFRow,s2Step295ExitFvRow,s2Step295ExitGvRow] 1 s2Step295ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295ExitFBefore (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295ExitBank_outgoingOwned : rowsOwned s2Step295ExitGvAfter [s2Step295ExitGOut,s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step295ExitGvAfter (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295ExitF_Outgoing : rowsOwned s2Step295ExitGvAfter [s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut] :=
  hmrRows_owned_drop s2Step295ExitGvAfter [s2Step295ExitGOut,s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut] 1 s2Step295ExitBank_outgoingOwned

private theorem s2Step295ExitF_distinct : (s2Step295ExitFRow.sign::s2Step295ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295ExitF_owned : (s2Step295ExitFRow.sign::s2Step295ExitFRow.payload).toFinset⊆s2Step295ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295ExitFBefore (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295ExitF_retired : s2Step295ExitFBefore.retireSet s2Step295ExitFExtra.toFinset=s2Step295ExitFAfter := by
  unfold Arena.retireSet s2Step295ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step295ExitFBefore,s2Step295ExitGAfter,s2Step295ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step295ExitF_checked : planRowResizeLog s2Step295ExitFBefore s2Step295ExitFRow 123 []=
    some (s2Step295ExitFAfter,s2Step295ExitFOut,shrinkRow 768 s2Step295ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step295ExitFBefore s2Step295ExitFRow 123 s2Step295ExitF_distinct s2Step295ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step295ExitFRow.payload.take 123) s2Step295ExitFRow.sign=s2Step295ExitFOut := by decide +kernel
  have hi : s2Step295ExitFRow.payload.drop 123=s2Step295ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step295ExitF_retired] at result
  exact result

private def s2Step295ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295ExitFvBefore : Arena := s2Step295ExitFAfter

private theorem s2Step295ExitFv_Incoming : rowsOwned s2Step295ExitFvBefore [s2Step295ExitFvRow,s2Step295ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295ExitGRow,s2Step295ExitFRow,s2Step295ExitFvRow,s2Step295ExitGvRow] 2 s2Step295ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295ExitFvBefore (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295ExitFv_Outgoing : rowsOwned s2Step295ExitGvAfter [s2Step295ExitFvOut,s2Step295ExitGvOut] :=
  hmrRows_owned_drop s2Step295ExitGvAfter [s2Step295ExitGOut,s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut] 2 s2Step295ExitBank_outgoingOwned

private theorem s2Step295ExitFv_distinct : (s2Step295ExitFvRow.sign::s2Step295ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295ExitFv_owned : (s2Step295ExitFvRow.sign::s2Step295ExitFvRow.payload).toFinset⊆s2Step295ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295ExitFvBefore (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295ExitFv_retired : s2Step295ExitFvBefore.retireSet s2Step295ExitFvExtra.toFinset=s2Step295ExitFvAfter := by
  unfold Arena.retireSet s2Step295ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step295ExitFvBefore,s2Step295ExitFAfter,s2Step295ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step295ExitFv_checked : planRowResizeLog s2Step295ExitFvBefore s2Step295ExitFvRow 163 []=
    some (s2Step295ExitFvAfter,s2Step295ExitFvOut,shrinkRow 770 s2Step295ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step295ExitFvBefore s2Step295ExitFvRow 163 s2Step295ExitFv_distinct s2Step295ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step295ExitFvRow.payload.take 163) s2Step295ExitFvRow.sign=s2Step295ExitFvOut := by decide +kernel
  have hi : s2Step295ExitFvRow.payload.drop 163=s2Step295ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step295ExitFv_retired] at result
  exact result

private def s2Step295ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step295ExitG_Incoming : rowsOwned s2Step295ExitGBefore [s2Step295ExitGRow,s2Step295ExitFRow,s2Step295ExitFvRow,s2Step295ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295ExitGRow,s2Step295ExitFRow,s2Step295ExitFvRow,s2Step295ExitGvRow] 0 s2Step295ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295ExitG_Outgoing : rowsOwned s2Step295ExitGvAfter [s2Step295ExitGOut,s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut] :=
  hmrRows_owned_drop s2Step295ExitGvAfter [s2Step295ExitGOut,s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut] 0 s2Step295ExitBank_outgoingOwned

private theorem s2Step295ExitG_distinct : (s2Step295ExitGRow.sign::s2Step295ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295ExitG_owned : (s2Step295ExitGRow.sign::s2Step295ExitGRow.payload).toFinset⊆s2Step295ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295ExitG_retired : s2Step295ExitGBefore.retireSet s2Step295ExitGExtra.toFinset=s2Step295ExitGAfter := by
  unfold Arena.retireSet s2Step295ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step295ExitGBefore,s2Step295ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step295ExitG_checked : planRowResizeLog s2Step295ExitGBefore s2Step295ExitGRow 122 []=
    some (s2Step295ExitGAfter,s2Step295ExitGOut,shrinkRow 769 s2Step295ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step295ExitGBefore s2Step295ExitGRow 122 s2Step295ExitG_distinct s2Step295ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step295ExitGRow.payload.take 122) s2Step295ExitGRow.sign=s2Step295ExitGOut := by decide +kernel
  have hi : s2Step295ExitGRow.payload.drop 122=s2Step295ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step295ExitG_retired] at result
  exact result

private def s2Step295ExitGvBefore : Arena := s2Step295ExitFvAfter

private theorem s2Step295ExitGv_Incoming : rowsOwned s2Step295ExitGvBefore [s2Step295ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295ExitGRow,s2Step295ExitFRow,s2Step295ExitFvRow,s2Step295ExitGvRow] 3 s2Step295ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295ExitGvBefore (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295ExitGv_Outgoing : rowsOwned s2Step295ExitGvAfter [s2Step295ExitGvOut] :=
  hmrRows_owned_drop s2Step295ExitGvAfter [s2Step295ExitGOut,s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut] 3 s2Step295ExitBank_outgoingOwned

private theorem s2Step295ExitGv_distinct : (s2Step295ExitGvRow.sign::s2Step295ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295ExitGv_owned : (s2Step295ExitGvRow.sign::s2Step295ExitGvRow.payload).toFinset⊆s2Step295ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295ExitGvBefore (fun q => (0≤q ∧ q<122) ∨ (123≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295ExitGv_retired : s2Step295ExitGvBefore.retireSet s2Step295ExitGvExtra.toFinset=s2Step295ExitGvAfter := by
  unfold Arena.retireSet s2Step295ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step295ExitGvBefore,s2Step295ExitFvAfter,s2Step295ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step295ExitGv_checked : planRowResizeLog s2Step295ExitGvBefore s2Step295ExitGvRow 163 []=
    some (s2Step295ExitGvAfter,s2Step295ExitGvOut,shrinkRow 771 s2Step295ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step295ExitGvBefore s2Step295ExitGvRow 163 s2Step295ExitGv_distinct s2Step295ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step295ExitGvRow.payload.take 163) s2Step295ExitGvRow.sign=s2Step295ExitGvOut := by decide +kernel
  have hi : s2Step295ExitGvRow.payload.drop 163=s2Step295ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step295ExitGv_retired] at result
  exact result

private theorem s2Step295ExitBank_rows : planWindowRowsLog s2Step295ExitGBefore [(s2Step295ExitGRow,122),(s2Step295ExitFRow,123),(s2Step295ExitFvRow,163),(s2Step295ExitGvRow,163)] [[],[],[],[]]=
    some (s2Step295ExitGvAfter,[s2Step295ExitGOut,s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut],(shrinkRow 769 s2Step295ExitGExtra ++ (shrinkRow 768 s2Step295ExitFExtra ++ (shrinkRow 770 s2Step295ExitFvExtra ++ (shrinkRow 771 s2Step295ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step295ExitGvAfter [] []=some (s2Step295ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step295ExitGvBefore s2Step295ExitGvAfter s2Step295ExitGvAfter
    s2Step295ExitGvRow s2Step295ExitGvOut 163 [] [] [] []
    (shrinkRow 771 s2Step295ExitGvExtra) ([]) s2Step295ExitGv_Incoming s2Step295ExitGv_checked h4 s2Step295ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step295ExitFvBefore s2Step295ExitFvAfter s2Step295ExitGvAfter
    s2Step295ExitFvRow s2Step295ExitFvOut 163 [] [(s2Step295ExitGvRow,163)] [[]] [s2Step295ExitGvOut]
    (shrinkRow 770 s2Step295ExitFvExtra) ((shrinkRow 771 s2Step295ExitGvExtra ++ [])) s2Step295ExitFv_Incoming s2Step295ExitFv_checked h3 s2Step295ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step295ExitFBefore s2Step295ExitFAfter s2Step295ExitGvAfter
    s2Step295ExitFRow s2Step295ExitFOut 123 [] [(s2Step295ExitFvRow,163),(s2Step295ExitGvRow,163)] [[],[]] [s2Step295ExitFvOut,s2Step295ExitGvOut]
    (shrinkRow 768 s2Step295ExitFExtra) ((shrinkRow 770 s2Step295ExitFvExtra ++ (shrinkRow 771 s2Step295ExitGvExtra ++ []))) s2Step295ExitF_Incoming s2Step295ExitF_checked h2 s2Step295ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step295ExitGBefore s2Step295ExitGAfter s2Step295ExitGvAfter
    s2Step295ExitGRow s2Step295ExitGOut 122 [] [(s2Step295ExitFRow,123),(s2Step295ExitFvRow,163),(s2Step295ExitGvRow,163)] [[],[],[]] [s2Step295ExitFOut,s2Step295ExitFvOut,s2Step295ExitGvOut]
    (shrinkRow 769 s2Step295ExitGExtra) ((shrinkRow 768 s2Step295ExitFExtra ++ (shrinkRow 770 s2Step295ExitFvExtra ++ (shrinkRow 771 s2Step295ExitGvExtra ++ [])))) s2Step295ExitG_Incoming s2Step295ExitG_checked h1 s2Step295ExitG_Outgoing
  exact h0

private theorem s2Step295ExitBank_checked : compileHmrBankResizeLog .exit s2Step295ExitGBefore ⟨s2Step295ExitFRow,s2Step295ExitGRow,s2Step295ExitFvRow,s2Step295ExitGvRow⟩ ⟨123,122,163,163⟩ [[],[],[],[]]=
    some (s2Step295ExitGvAfter,⟨s2Step295ExitFOut,s2Step295ExitGOut,s2Step295ExitFvOut,s2Step295ExitGvOut⟩,(shrinkRow 769 s2Step295ExitGExtra ++ (shrinkRow 768 s2Step295ExitFExtra ++ (shrinkRow 770 s2Step295ExitFvExtra ++ (shrinkRow 771 s2Step295ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step295ExitBank_rows]
  rfl

private theorem s2Step295Add0_apart : Disjoint s2Step295Add0Arena.live s2Step295Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step295Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295Add0_card : s2Step295Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step295Add0_borrowed : s2Step295Add0Arena.checkBorrow (hmrHybridCount s2Step295Add0Arena s2Step295Add0B.length) s2Step295Add0Work=some s2Step295Add0During := by
  have len : s2Step295Add0Work.length=hmrHybridCount s2Step295Add0Arena s2Step295Add0B.length := by
    rw [hmrHybridCount,s2Step295Add0_card]
    decide +kernel
  have nd : s2Step295Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step295Add0Arena s2Step295Add0During s2Step295Add0Work.toFinset s2Step295Add0_bounded s2Step295Add0_apart rfl

private theorem s2Step295Add0_distinct : (783::820::847::(s2Step295Add0A++s2Step295Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295Add0_owned : (783::820::847::(s2Step295Add0A++s2Step295Add0B)).toFinset⊆s2Step295Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step295Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295Add0_checked : compileHmrHybridCinLog s2Step295Add0Arena 820 783 847 s2Step295Add0A s2Step295Add0B s2Step295Add0Work=some s2Step295Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step295Add0Arena s2Step295Add0During 820 783 847 s2Step295Add0A s2Step295Add0B s2Step295Add0Work
    (by decide +kernel) (by decide +kernel) s2Step295Add0_distinct
    (fun q hq => s2Step295Add0_owned (List.mem_toFinset.mpr hq)) s2Step295Add0_borrowed

private theorem s2Step295Add1_apart : Disjoint s2Step295Add1Arena.live s2Step295Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step295Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295Add1_card : s2Step295Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step295Add1_borrowed : s2Step295Add1Arena.checkBorrow (hmrHybridCount s2Step295Add1Arena s2Step295Add1B.length) s2Step295Add1Work=some s2Step295Add1During := by
  have len : s2Step295Add1Work.length=hmrHybridCount s2Step295Add1Arena s2Step295Add1B.length := by
    rw [hmrHybridCount,s2Step295Add1_card]
    decide +kernel
  have nd : s2Step295Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step295Add1Arena s2Step295Add1During s2Step295Add1Work.toFinset s2Step295Add1_bounded s2Step295Add1_apart rfl

private theorem s2Step295Add1_distinct : (783::820::847::(s2Step295Add1A++s2Step295Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295Add1_owned : (783::820::847::(s2Step295Add1A++s2Step295Add1B)).toFinset⊆s2Step295Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step295Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295Add1_checked : compileHmrHybridCinLog s2Step295Add1Arena 820 783 847 s2Step295Add1A s2Step295Add1B s2Step295Add1Work=some s2Step295Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step295Add1Arena s2Step295Add1During 820 783 847 s2Step295Add1A s2Step295Add1B s2Step295Add1Work
    (by decide +kernel) (by decide +kernel) s2Step295Add1_distinct
    (fun q hq => s2Step295Add1_owned (List.mem_toFinset.mpr hq)) s2Step295Add1_borrowed

private theorem s2Step295F4_apart : Disjoint (s2Step295Add0A++s2Step295Add0B).toFinset (s2Step295Add1A++s2Step295Add1B).toFinset := by
  have nd : ((s2Step295Add0A++s2Step295Add0B)++(s2Step295Add1A++s2Step295Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step295F4_carry : s2Step295F4FlagArena.checkBorrow 1 [847]=some s2Step295Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step295F4FlagArena,s2Step295HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step295F4FlagArena,s2Step295HeadFvAfter,s2Step295Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step295F4_distinct : (787::820::783::847::((s2Step295Add0A++s2Step295Add1A)++(s2Step295Add0B++s2Step295Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295F4_flag : s2Step295HeadFvAfter.checkBorrow 1 [783]=some s2Step295F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step295HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step295F4_owned : (787::820::((s2Step295Add0A++s2Step295Add1A)++(s2Step295Add0B++s2Step295Add1B))).toFinset⊆s2Step295HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step295HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295F4_checked : compileHmrHybridF4Log s2Step295HeadFvAfter 787 820 s2Step295Add0A s2Step295Add0B s2Step295Add1A s2Step295Add1B [783] [847] s2Step295Add0Work s2Step295Add1Work=some s2Step295F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step295HeadFvAfter s2Step295F4FlagArena s2Step295Add0Arena s2Step295Add0During s2Step295Add1During 787 820
    s2Step295Add0A s2Step295Add0B s2Step295Add1A s2Step295Add1B [783] [847] s2Step295Add0Work s2Step295Add1Work
    (fun q hq => s2Step295F4_owned (List.mem_toFinset.mpr hq)) s2Step295F4_flag s2Step295F4_carry
    s2Step295F4_distinct s2Step295F4_apart s2Step295Add0_checked s2Step295Add1_checked

private theorem s2Step295Front_branch : s2Step295FrontSigmaArena.checkBorrow 1 [820]=some s2Step295HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step295FrontSigmaArena,s2Step295EntryGvAfter,s2Step295EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step295FrontSigmaArena,s2Step295EntryGvAfter,s2Step295EntryFBefore,s2Step295HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step295Front_entry : HmrFrontEntryValid s2Step295EntryFBefore s2Step295FrontBank 123 163 ⟨123,122,163,163⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step295FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step295EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step295EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step295FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step295Front_sigma : s2Step295EntryGvAfter.checkBorrow 1 [787]=some s2Step295FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step295EntryGvAfter,s2Step295EntryFBefore,arenaWires]
  · rfl

private def s2Step295HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295HeadFBefore : Arena := s2Step295HeadGAfter

private def s2Step295HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step295HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821],770⟩

private def s2Step295HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩

private def s2Step295HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private theorem s2Step295HeadBank_incomingDistinct : ([s2Step295HeadGRow,s2Step295HeadFRow,s2Step295HeadGvRow,s2Step295HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295HeadF_Incoming : rowsOwned s2Step295HeadFBefore [s2Step295HeadFRow,s2Step295HeadGvRow,s2Step295HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295HeadGRow,s2Step295HeadFRow,s2Step295HeadGvRow,s2Step295HeadFvRow] 1 s2Step295HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295HeadBank_outgoingOwned : rowsOwned s2Step295HeadFvAfter [s2Step295HeadGOut,s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step295HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295HeadF_Outgoing : rowsOwned s2Step295HeadFvAfter [s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut] :=
  hmrRows_owned_drop s2Step295HeadFvAfter [s2Step295HeadGOut,s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut] 1 s2Step295HeadBank_outgoingOwned

private theorem s2Step295HeadF_distinct : (s2Step295HeadFRow.sign::s2Step295HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295HeadF_owned : (s2Step295HeadFRow.sign::s2Step295HeadFRow.payload).toFinset⊆s2Step295HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295HeadF_reserved : s2Step295HeadFBefore.reserve s2Step295HeadFFresh.toFinset=some s2Step295HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step295HeadFFresh,arenaWires]
  · norm_num [s2Step295HeadFBefore,s2Step295HeadGAfter,s2Step295HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step295HeadFAfter,s2Step295HeadFBefore,s2Step295HeadGAfter,s2Step295HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step295HeadF_checked : planRowResizeLog s2Step295HeadFBefore s2Step295HeadFRow 124 s2Step295HeadFFresh=
    some (s2Step295HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 780],768⟩,growRow 768 s2Step295HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step295HeadFBefore s2Step295HeadFAfter s2Step295HeadFRow 124 s2Step295HeadFFresh
    s2Step295HeadF_distinct s2Step295HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step295HeadF_reserved
  have rowEq : WindowRow.mk (s2Step295HeadFRow.payload++s2Step295HeadFFresh) s2Step295HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 780],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step295HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step295HeadFvBefore : Arena := s2Step295HeadGvAfter

private theorem s2Step295HeadFv_Incoming : rowsOwned s2Step295HeadFvBefore [s2Step295HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295HeadGRow,s2Step295HeadFRow,s2Step295HeadGvRow,s2Step295HeadFvRow] 3 s2Step295HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295HeadFv_Outgoing : rowsOwned s2Step295HeadFvAfter [s2Step295HeadFvOut] :=
  hmrRows_owned_drop s2Step295HeadFvAfter [s2Step295HeadGOut,s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut] 3 s2Step295HeadBank_outgoingOwned

private theorem s2Step295HeadFv_distinct : (s2Step295HeadFvRow.sign::s2Step295HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295HeadFv_owned : (s2Step295HeadFvRow.sign::s2Step295HeadFvRow.payload).toFinset⊆s2Step295HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295HeadFv_reserved : s2Step295HeadFvBefore.reserve s2Step295HeadFvFresh.toFinset=some s2Step295HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step295HeadFvFresh,arenaWires]
  · norm_num [s2Step295HeadFvBefore,s2Step295HeadGvAfter,s2Step295HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step295HeadFvAfter,s2Step295HeadFvBefore,s2Step295HeadGvAfter,s2Step295HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step295HeadFv_checked : planRowResizeLog s2Step295HeadFvBefore s2Step295HeadFvRow 164 s2Step295HeadFvFresh=
    some (s2Step295HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 811],770⟩,growRow 770 s2Step295HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step295HeadFvBefore s2Step295HeadFvAfter s2Step295HeadFvRow 164 s2Step295HeadFvFresh
    s2Step295HeadFv_distinct s2Step295HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step295HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step295HeadFvRow.payload++s2Step295HeadFvFresh) s2Step295HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 811],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step295HeadG_Incoming : rowsOwned s2Step295HeadGBefore [s2Step295HeadGRow,s2Step295HeadFRow,s2Step295HeadGvRow,s2Step295HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295HeadGRow,s2Step295HeadFRow,s2Step295HeadGvRow,s2Step295HeadFvRow] 0 s2Step295HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295HeadG_Outgoing : rowsOwned s2Step295HeadFvAfter [s2Step295HeadGOut,s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut] :=
  hmrRows_owned_drop s2Step295HeadFvAfter [s2Step295HeadGOut,s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut] 0 s2Step295HeadBank_outgoingOwned

private theorem s2Step295HeadG_distinct : (s2Step295HeadGRow.sign::s2Step295HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295HeadG_owned : (s2Step295HeadGRow.sign::s2Step295HeadGRow.payload).toFinset⊆s2Step295HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295HeadG_reserved : s2Step295HeadGBefore.reserve s2Step295HeadGFresh.toFinset=some s2Step295HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step295HeadGFresh,arenaWires]
  · norm_num [s2Step295HeadGBefore,s2Step295HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step295HeadGAfter,s2Step295HeadGBefore,s2Step295HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step295HeadG_checked : planRowResizeLog s2Step295HeadGBefore s2Step295HeadGRow 124 s2Step295HeadGFresh=
    some (s2Step295HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 785],769⟩,growRow 769 s2Step295HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step295HeadGBefore s2Step295HeadGAfter s2Step295HeadGRow 124 s2Step295HeadGFresh
    s2Step295HeadG_distinct s2Step295HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step295HeadG_reserved
  have rowEq : WindowRow.mk (s2Step295HeadGRow.payload++s2Step295HeadGFresh) s2Step295HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step295HeadGvBefore : Arena := s2Step295HeadFAfter

private theorem s2Step295HeadGv_Incoming : rowsOwned s2Step295HeadGvBefore [s2Step295HeadGvRow,s2Step295HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step295HeadGRow,s2Step295HeadFRow,s2Step295HeadGvRow,s2Step295HeadFvRow] 2 s2Step295HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step295HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step295HeadGv_Outgoing : rowsOwned s2Step295HeadFvAfter [s2Step295HeadGvOut,s2Step295HeadFvOut] :=
  hmrRows_owned_drop s2Step295HeadFvAfter [s2Step295HeadGOut,s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut] 2 s2Step295HeadBank_outgoingOwned

private theorem s2Step295HeadGv_distinct : (s2Step295HeadGvRow.sign::s2Step295HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step295HeadGv_owned : (s2Step295HeadGvRow.sign::s2Step295HeadGvRow.payload).toFinset⊆s2Step295HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step295HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step295HeadGv_reserved : s2Step295HeadGvBefore.reserve s2Step295HeadGvFresh.toFinset=some s2Step295HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step295HeadGvFresh,arenaWires]
  · norm_num [s2Step295HeadGvBefore,s2Step295HeadFAfter,s2Step295HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step295HeadGvAfter,s2Step295HeadGvBefore,s2Step295HeadFAfter,s2Step295HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step295HeadGv_checked : planRowResizeLog s2Step295HeadGvBefore s2Step295HeadGvRow 164 s2Step295HeadGvFresh=
    some (s2Step295HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 805],771⟩,growRow 771 s2Step295HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step295HeadGvBefore s2Step295HeadGvAfter s2Step295HeadGvRow 164 s2Step295HeadGvFresh
    s2Step295HeadGv_distinct s2Step295HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step295HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step295HeadGvRow.payload++s2Step295HeadGvFresh) s2Step295HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step295HeadBank_rows : planWindowRowsLog s2Step295HeadGBefore [(s2Step295HeadGRow,124),(s2Step295HeadFRow,124),(s2Step295HeadGvRow,164),(s2Step295HeadFvRow,164)] [s2Step295HeadGFresh,s2Step295HeadFFresh,s2Step295HeadGvFresh,s2Step295HeadFvFresh]=
    some (s2Step295HeadFvAfter,[s2Step295HeadGOut,s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut],(growRow 769 s2Step295HeadGFresh ++ (growRow 768 s2Step295HeadFFresh ++ (growRow 771 s2Step295HeadGvFresh ++ (growRow 770 s2Step295HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step295HeadFvAfter [] []=some (s2Step295HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step295HeadFvBefore s2Step295HeadFvAfter s2Step295HeadFvAfter
    s2Step295HeadFvRow s2Step295HeadFvOut 164 s2Step295HeadFvFresh [] [] []
    (growRow 770 s2Step295HeadFvFresh) ([]) s2Step295HeadFv_Incoming s2Step295HeadFv_checked h4 s2Step295HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step295HeadGvBefore s2Step295HeadGvAfter s2Step295HeadFvAfter
    s2Step295HeadGvRow s2Step295HeadGvOut 164 s2Step295HeadGvFresh [(s2Step295HeadFvRow,164)] [s2Step295HeadFvFresh] [s2Step295HeadFvOut]
    (growRow 771 s2Step295HeadGvFresh) ((growRow 770 s2Step295HeadFvFresh ++ [])) s2Step295HeadGv_Incoming s2Step295HeadGv_checked h3 s2Step295HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step295HeadFBefore s2Step295HeadFAfter s2Step295HeadFvAfter
    s2Step295HeadFRow s2Step295HeadFOut 124 s2Step295HeadFFresh [(s2Step295HeadGvRow,164),(s2Step295HeadFvRow,164)] [s2Step295HeadGvFresh,s2Step295HeadFvFresh] [s2Step295HeadGvOut,s2Step295HeadFvOut]
    (growRow 768 s2Step295HeadFFresh) ((growRow 771 s2Step295HeadGvFresh ++ (growRow 770 s2Step295HeadFvFresh ++ []))) s2Step295HeadF_Incoming s2Step295HeadF_checked h2 s2Step295HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step295HeadGBefore s2Step295HeadGAfter s2Step295HeadFvAfter
    s2Step295HeadGRow s2Step295HeadGOut 124 s2Step295HeadGFresh [(s2Step295HeadFRow,124),(s2Step295HeadGvRow,164),(s2Step295HeadFvRow,164)] [s2Step295HeadFFresh,s2Step295HeadGvFresh,s2Step295HeadFvFresh] [s2Step295HeadFOut,s2Step295HeadGvOut,s2Step295HeadFvOut]
    (growRow 769 s2Step295HeadGFresh) ((growRow 768 s2Step295HeadFFresh ++ (growRow 771 s2Step295HeadGvFresh ++ (growRow 770 s2Step295HeadFvFresh ++ [])))) s2Step295HeadG_Incoming s2Step295HeadG_checked h1 s2Step295HeadG_Outgoing
  exact h0

private theorem s2Step295HeadBank_checked : compileHmrBankResizeLog .headroom s2Step295HeadGBefore ⟨s2Step295HeadFRow,s2Step295HeadGRow,s2Step295HeadFvRow,s2Step295HeadGvRow⟩ ⟨124,124,164,164⟩ [s2Step295HeadGFresh,s2Step295HeadFFresh,s2Step295HeadGvFresh,s2Step295HeadFvFresh]=
    some (s2Step295HeadFvAfter,⟨s2Step295HeadFOut,s2Step295HeadGOut,s2Step295HeadFvOut,s2Step295HeadGvOut⟩,(growRow 769 s2Step295HeadGFresh ++ (growRow 768 s2Step295HeadFFresh ++ (growRow 771 s2Step295HeadGvFresh ++ (growRow 770 s2Step295HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step295HeadBank_rows]
  rfl

private theorem s2Step295Front_checked : compileHmrSourceFrontLog s2Step295EntryFBefore s2Step295FrontBank 123 163 ⟨123,122,163,163⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step295FrontLog=some s2Step295FrontPlan := by
  have pairEq : s2Step295FrontPair=⟨s2Step295HeadFRow,s2Step295HeadGRow,s2Step295HeadFvRow,s2Step295HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step295FrontHead=⟨s2Step295ExitFRow,s2Step295ExitGRow,s2Step295ExitFvRow,s2Step295ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step295Add0A=s2Step295FrontHead.f.wires := by decide +kernel
  have gEq : s2Step295Add0B=s2Step295FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step295Add1A=s2Step295FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step295Add1B=s2Step295FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step295EntryFBefore s2Step295FrontBank 123 163 ⟨123,122,163,163⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step295FrontLog s2Step295FrontPlan
  · exact s2Step295Front_entry
  · exact s2Step295EntryBank_checked
  · exact s2Step295Front_sigma
  · rfl
  · exact s2Step295Front_branch
  · rfl
  · simpa only [s2Step295FrontPlan,pairEq] using s2Step295HeadBank_checked
  · simpa only [s2Step295FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step295F4_checked
  · exact s2Step295Counter_checked
  · rfl
  · simpa only [s2Step295FrontPlan,headEq] using s2Step295ExitBank_checked

private theorem s2Step295Complete_explicit_checked : compileHmrEarlyStepLog s2Step295EntryFBefore s2Step295FrontBank 123 163 ⟨123,122,163,163⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 55 s2Step295CompleteLog=some s2Step295CompletePlan := by
  let Q := s2Step295EarlyControlPlan
  have hq := s2Step295EarlyControl_plan_checked
  have fv1 : s2Step295CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step295CompleteOut.fv.payload[2]?.getD s2Step295CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step295CompleteOut.fv.payload[3]?.getD s2Step295CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step295CompleteOut.fv.payload[4]?.getD s2Step295CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step295EntryFBefore s2Step295EarlyControlArena s2Step295FrontBank 123 163 ⟨123,122,163,163⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 55 s2Step295CompleteLog s2Step295FrontPlan Q
    s2Step295Front_checked s2Step295Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step295Complete_owned s2Step295Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step295EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 787 s2Step295CompleteOut.fv.second (s2Step295CompleteOut.fv.payload[2]?.getD s2Step295CompleteOut.fv.sign) (s2Step295CompleteOut.fv.payload[3]?.getD s2Step295CompleteOut.fv.sign) (s2Step295CompleteOut.fv.payload[4]?.getD s2Step295CompleteOut.fv.sign) 820 55 s2Step295EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep295Arena : Arena := s2Step295EntryFBefore
def s2PrivateStep295Bank : WindowBank := s2Step295FrontBank
def s2PrivateStep295Spec : HmrSourceWalkStepLog := ⟨123,163,⟨123,122,163,163⟩,55,.early s2Step295CompleteLog⟩
def s2PrivateStep295Plan : HmrSourceStepPlan := .early s2Step295CompletePlan
theorem s2PrivateStep295_source : s2PrivateStep295Spec=s2ObservedLogs288[7] := rfl
theorem s2PrivateStep295_checked : compileHmrSourceStepLog s2PrivateStep295Arena s2PrivateStep295Bank
    s2PrivateStep295Spec.fgWidth s2PrivateStep295Spec.vWidth s2PrivateStep295Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 295 s2PrivateStep295Spec.need none s2PrivateStep295Spec.log=some s2PrivateStep295Plan := by
  change compileHmrSourceStepLog s2Step295EntryFBefore s2Step295FrontBank 123 163 ⟨123,122,163,163⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 295 55 none (.early s2Step295CompleteLog)=some (.early s2Step295CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 295<498)]
  rw [s2Step295Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
