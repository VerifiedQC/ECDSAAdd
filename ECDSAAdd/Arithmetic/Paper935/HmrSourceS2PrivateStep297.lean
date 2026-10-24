import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep295
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

private def s2Step297CompleteMoves : List (Wire × Wire) := [(806,634)]

private def s2Step297EarlyControlLog : HmrEarlyControlLog := ⟨[806, 783, 847, 805, 882],[787],[820],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step297FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [882, 787], [], [832]],[[820], [805], [783], [847]],[[], [], [], []]⟩,[780],[811],[830],[800],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step297CompleteLog : HmrEarlyStepLog := ⟨s2Step297FrontLog,s2Step297CompleteMoves,s2Step297EarlyControlLog⟩

private def s2Step297ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩

private def s2Step297ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step297ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step297ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩

private def s2Step297FrontOut : WindowBank := ⟨s2Step297ExitFOut,s2Step297ExitGOut,s2Step297ExitFvOut,s2Step297ExitGvOut⟩

private def s2Step297CompleteOut : WindowBank := s2Step297FrontOut.repacked s2Step297CompleteMoves

private def s2Step297EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step297EarlyControlPositiveArena,[787],s2Step297EarlyControlEqualityArena,[820],⟨⟨780,false⟩,[⟨⟨787,false⟩,820⟩]⟩⟩

private def s2Step297EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,806⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,847⟩,⟨⟨776,false⟩,805⟩,⟨⟨777,false⟩,882⟩]⟩

private def s2Step297EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step297EarlyControlZeroArena,s2Step297EarlyControlZeroPlan,s2Step297EarlyControlClassPlan,s2Step297EarlyControlFlagArena,s2Step297EarlyControlFittedArena,s2Step297EarlyControlHistoryArena,s2Step297EarlyControlSigmaArena,s2Step297EarlyControlOutputArena,s2Step297EarlyControlLog⟩

private def s2Step297CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step297Counter_bounded : s2Step297CounterWork.toFinset⊆arenaWires := by norm_num [s2Step297CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step297HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297CounterDuring : Arena := ⟨s2Step297HeadFvAfter.live∪s2Step297CounterWork.toFinset,Finset.union_subset s2Step297HeadFvAfter.bounded s2Step297Counter_bounded⟩

private def s2Step297EntryFFresh : List Wire := []

private def s2Step297EntryFvFresh : List Wire := []

private def s2Step297EntryGFresh : List Wire := [882, 787]

private def s2Step297EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EntryGvFresh : List Wire := [832]

private def s2Step297ExitFExtra : List Wire := [634, 805]

private def s2Step297ExitFvExtra : List Wire := [847]

private def s2Step297ExitGExtra : List Wire := [882, 787, 820]

private def s2Step297ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<634) ∨ (635≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297ExitGvExtra : List Wire := [783]

private def s2Step297Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step297Add0_bounded : s2Step297Add0Work.toFinset⊆arenaWires := by
  have h : s2Step297Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step297Add0During : Arena := ⟨s2Step297Add0Arena.live∪s2Step297Add0Work.toFinset,Finset.union_subset s2Step297Add0Arena.bounded s2Step297Add0_bounded⟩

private def s2Step297Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step297Add1_bounded : s2Step297Add1Work.toFinset⊆arenaWires := by
  have h : s2Step297Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step297Add1During : Arena := ⟨s2Step297Add1Arena.live∪s2Step297Add1Work.toFinset,Finset.union_subset s2Step297Add1Arena.bounded s2Step297Add1_bounded⟩

private def s2Step297F4FlagArena : Arena := ⟨s2Step297HeadFvAfter.live∪{830},Finset.union_subset s2Step297HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step297F4Plan : HmrHybridF4Plan := ⟨s2Step297F4FlagArena,[830],s2Step297Add0Arena,[800],s2Step297Add0During,s2Step297Add0Work,s2Step297Add1During,s2Step297Add1Work⟩

private def s2Step297HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 805],768⟩

private def s2Step297HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 847],770⟩

private def s2Step297HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787, 820],769⟩

private def s2Step297HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 783],771⟩

private def s2Step297FrontHead : WindowBank := ⟨s2Step297HeadFOut,s2Step297HeadGOut,s2Step297HeadFvOut,s2Step297HeadGvOut⟩

private def s2Step297EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step297EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step297EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787],769⟩

private def s2Step297EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩

private def s2Step297FrontPair : WindowBank := ⟨s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut⟩

private def s2Step297FrontSigmaArena : Arena := ⟨s2Step297EntryGvAfter.live∪{780},Finset.union_subset s2Step297EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step297HeadFFresh : List Wire := [805]

private def s2Step297HeadFvFresh : List Wire := [847]

private def s2Step297HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297HeadGFresh : List Wire := [820]

private def s2Step297HeadGvFresh : List Wire := [783]

private def s2Step297FrontPlan : HmrSourceFront := ⟨s2Step297EntryGvAfter,s2Step297FrontPair,(growRow 768 s2Step297EntryFFresh ++ (growRow 769 s2Step297EntryGFresh ++ (growRow 770 s2Step297EntryFvFresh ++ (growRow 771 s2Step297EntryGvFresh ++ [])))),s2Step297FrontSigmaArena,[780],s2Step297HeadGBefore,[811],
  s2Step297HeadFvAfter,s2Step297FrontHead,(growRow 769 s2Step297HeadGFresh ++ (growRow 768 s2Step297HeadFFresh ++ (growRow 771 s2Step297HeadGvFresh ++ (growRow 770 s2Step297HeadFvFresh ++ [])))),s2Step297F4Plan,s2Step297CounterDuring,s2Step297CounterWork,s2Step297ExitGvAfter,s2Step297FrontOut,(shrinkRow 769 s2Step297ExitGExtra ++ (shrinkRow 768 s2Step297ExitFExtra ++ (shrinkRow 770 s2Step297ExitFvExtra ++ (shrinkRow 771 s2Step297ExitGvExtra ++ []))))⟩

private def s2Step297CompletePlan : HmrEarlyStepPlan := ⟨s2Step297FrontPlan,s2Step297EarlyControlArena,s2Step297EarlyControlPlan,s2Step297CompleteMoves⟩

private theorem s2Step297Complete_apart : List.Disjoint (s2Step297CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [780, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step297CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[780, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step297Complete_owned : (s2Step297CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step297CompleteMoveArena : Arena := ⟨s2Step297ExitGvAfter.live∪{634},Finset.union_subset s2Step297ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step297Complete_repack : s2Step297ExitGvAfter.checkRepack s2Step297CompleteMoves=some s2Step297EarlyControlArena := by
  have owned : 806∈s2Step297ExitGvAfter.live := by norm_num [s2Step297ExitGvAfter,arenaWires]
  have reserve : s2Step297ExitGvAfter.reserve {634}=some s2Step297CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step297ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step297CompleteMoveArena.retireSet {806}=s2Step297EarlyControlArena := by
    unfold Arena.retireSet s2Step297EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step297CompleteMoveArena,s2Step297ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step297CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step297CompleteMoveArena.retireSet {806}).checkRepack []=some s2Step297EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step297EarlyControl_branchOwned : ([811] : List Wire).toFinset⊆s2Step297EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_branch : compileHmrBranchRetirement s2Step297EarlyControlSigmaArena 811=some s2Step297EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step297EarlyControl_branchOwned
  · ext q
    simp [s2Step297EarlyControlOutputArena,s2Step297EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step297EarlyControl_classEqualityBorrow : s2Step297EarlyControlPositiveArena.checkBorrow (([780, 787] : List Wire).length-1) s2Step297EarlyControlLog.classWork=some s2Step297EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step297EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step297EarlyControlEqualityArena,s2Step297EarlyControlPositiveArena,s2Step297EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step297EarlyControl_classEqualityOwned : ([780, 787] : List Wire).toFinset⊆s2Step297EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_classEquality : compileHmrEqualityLog s2Step297EarlyControlPositiveArena [780, 787] 0 s2Step297EarlyControlLog.classWork=some (s2Step297EarlyControlEqualityArena,s2Step297EarlyControlLog.classWork,s2Step297EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step297EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step297EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step297EarlyControl_classOwned : ([777, 882, 780] : List Wire).toFinset⊆s2Step297EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_positiveBorrow : s2Step297EarlyControlZeroArena.checkBorrow (1) s2Step297EarlyControlLog.positiveWork=some s2Step297EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step297EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step297EarlyControlPositiveArena,s2Step297EarlyControlZeroArena,s2Step297EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step297EarlyControl_class : compileHmrSourceClassLog s2Step297EarlyControlZeroArena false 777 s2Step297EarlyControlZeroPlan.top 0 780 s2Step297EarlyControlLog.positiveWork s2Step297EarlyControlLog.classWork=some s2Step297EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step297EarlyControlClassPlan s2Step297EarlyControlZeroArena false 777 s2Step297EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s2Step297EarlyControl_classOwned
  · exact s2Step297EarlyControl_positiveBorrow
  · exact s2Step297EarlyControl_classEquality

private theorem s2Step297EarlyControl_entryRecordOwned : ([811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s2Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_fitBorrow : s2Step297EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step297EarlyControlLog.recordFresh=some s2Step297EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step297EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step297EarlyControlFittedArena,s2Step297EarlyControlFlagArena,s2Step297EarlyControlLog,arenaWires]

private theorem s2Step297EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step297EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_fit : compileHmrRecordGrowLog s2Step297EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step297EarlyControlLog.recordFresh=some s2Step297EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step297EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step297EarlyControl_fitBorrow

private theorem s2Step297EarlyControl_flagsBorrow : s2Step297EarlyControlEqualityArena.checkBorrow (6) s2Step297EarlyControlLog.flagWork=some s2Step297EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step297EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step297EarlyControlFlagArena,s2Step297EarlyControlEqualityArena,s2Step297EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step297EarlyControl_flagsOwned : ([820, 253, 252, 251] : List Wire).toFinset⊆s2Step297EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_flags : compileHmrFlagsLog s2Step297EarlyControlClassPlan.equalityArena s2Step297EarlyControlClassPlan.equality.top 253 252 251 s2Step297EarlyControlLog.flagWork=some s2Step297EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step297EarlyControl_flagsOwned⟩
  · exact s2Step297EarlyControl_flagsBorrow

private theorem s2Step297EarlyControl_historyBorrow : s2Step297EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step297EarlyControlLog.recordFresh=some s2Step297EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step297EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step297EarlyControlHistoryArena,s2Step297EarlyControlArena,s2Step297EarlyControlLog,arenaWires]

private theorem s2Step297EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_history : compileHmrRecordGrowLog s2Step297EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step297EarlyControlLog.recordFresh=some s2Step297EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step297EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step297EarlyControl_historyBorrow

private theorem s2Step297EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s2Step297EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s2Step297EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_sigmaRelease : s2Step297EarlyControlHistoryArena.release {780} (fun _ => false)=some s2Step297EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step297EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step297EarlyControlSigmaArena,s2Step297EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step297EarlyControl_sigma : compileHmrSigmaDropLog s2Step297EarlyControlHistoryArena false 0 0 254 780 []=some s2Step297EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step297EarlyControl_sigmaOwned⟩
  · exact s2Step297EarlyControl_sigmaRelease

private theorem s2Step297EarlyControl_zeroBorrow : s2Step297EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step297EarlyControlLog.zeroWork=some s2Step297EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step297EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step297EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step297EarlyControlZeroArena,s2Step297EarlyControlArena,s2Step297EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step297EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step297EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step297EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EarlyControl_zero : compileHmrEqualityLog s2Step297EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step297EarlyControlLog.zeroWork=some (s2Step297EarlyControlZeroArena,s2Step297EarlyControlLog.zeroWork,s2Step297EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step297EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step297EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step297EarlyControl_logged : s2Step297EarlyControlPlan.Logged s2Step297EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 780 254 253 252 251 811 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step297EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step297EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step297EarlyControl_zero
  · exact s2Step297EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step297EarlyControl_flags
  · exact s2Step297EarlyControl_fit
  · exact s2Step297EarlyControl_history
  · exact s2Step297EarlyControl_sigma
  · exact s2Step297EarlyControl_branch

private theorem s2Step297EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step297EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 780 254 253 252 251 811 55 s2Step297EarlyControlLog=some s2Step297EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step297EarlyControlPlan s2Step297EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 780 254 253 252 251 811 55 s2Step297EarlyControl_logged

private def s2Step297EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step297EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step297EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step297EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812],771⟩

private def s2Step297FrontBank : WindowBank := ⟨s2Step297EntryFRow,s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow⟩

private def s2Step297Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 805, 768]

private def s2Step297Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787, 820, 769]

private def s2Step297Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 847, 770]

private def s2Step297Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 783, 771]

private theorem s2Step297Counter_apart : Disjoint s2Step297HeadFvAfter.live s2Step297CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step297HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297Counter_borrowed : s2Step297HeadFvAfter.checkBorrow 4 s2Step297CounterWork=some s2Step297CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step297HeadFvAfter s2Step297CounterDuring s2Step297CounterWork.toFinset s2Step297Counter_bounded s2Step297Counter_apart rfl

private theorem s2Step297Counter_owned : (780::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step297HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step297HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297Counter_checked : compileHmrCounterStepLog s2Step297HeadFvAfter true 780 [772, 773, 774, 775, 776, 777] s2Step297CounterWork=some s2Step297CounterDuring := by
  have owned : ∀q∈780::[772, 773, 774, 775, 776, 777],q∈s2Step297HeadFvAfter.live := fun q hq => s2Step297Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step297Counter_borrowed

private def s2Step297EntryFAfter : Arena := s2Step297EntryFBefore

private theorem s2Step297EntryBank_incomingDistinct : ([s2Step297EntryFRow,s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297EntryF_Incoming : rowsOwned s2Step297EntryFBefore [s2Step297EntryFRow,s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297EntryFRow,s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow] 0 s2Step297EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297EntryBank_outgoingOwned : rowsOwned s2Step297EntryGvAfter [s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step297EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297EntryF_Outgoing : rowsOwned s2Step297EntryGvAfter [s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut] :=
  hmrRows_owned_drop s2Step297EntryGvAfter [s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut] 0 s2Step297EntryBank_outgoingOwned

private theorem s2Step297EntryF_distinct : (s2Step297EntryFRow.sign::s2Step297EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297EntryF_owned : (s2Step297EntryFRow.sign::s2Step297EntryFRow.payload).toFinset⊆s2Step297EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EntryF_reserved : s2Step297EntryFBefore.reserve s2Step297EntryFFresh.toFinset=some s2Step297EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step297EntryFFresh,arenaWires]
  · norm_num [s2Step297EntryFBefore,s2Step297EntryFFresh,arenaWires]
  · simp only [s2Step297EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step297EntryF_checked : planRowResizeLog s2Step297EntryFBefore s2Step297EntryFRow 123 s2Step297EntryFFresh=
    some (s2Step297EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩,growRow 768 s2Step297EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step297EntryFBefore s2Step297EntryFAfter s2Step297EntryFRow 123 s2Step297EntryFFresh
    s2Step297EntryF_distinct s2Step297EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step297EntryF_reserved
  have rowEq : WindowRow.mk (s2Step297EntryFRow.payload++s2Step297EntryFFresh) s2Step297EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step297EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297EntryFvAfter : Arena := s2Step297EntryGAfter

private def s2Step297EntryFvBefore : Arena := s2Step297EntryGAfter

private theorem s2Step297EntryFv_Incoming : rowsOwned s2Step297EntryFvBefore [s2Step297EntryFvRow,s2Step297EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297EntryFRow,s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow] 2 s2Step297EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297EntryFv_Outgoing : rowsOwned s2Step297EntryGvAfter [s2Step297EntryFvOut,s2Step297EntryGvOut] :=
  hmrRows_owned_drop s2Step297EntryGvAfter [s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut] 2 s2Step297EntryBank_outgoingOwned

private theorem s2Step297EntryFv_distinct : (s2Step297EntryFvRow.sign::s2Step297EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297EntryFv_owned : (s2Step297EntryFvRow.sign::s2Step297EntryFvRow.payload).toFinset⊆s2Step297EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EntryFv_reserved : s2Step297EntryFvBefore.reserve s2Step297EntryFvFresh.toFinset=some s2Step297EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step297EntryFvFresh,arenaWires]
  · norm_num [s2Step297EntryFvBefore,s2Step297EntryGAfter,s2Step297EntryFvFresh,arenaWires]
  · simp only [s2Step297EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step297EntryFv_checked : planRowResizeLog s2Step297EntryFvBefore s2Step297EntryFvRow 164 s2Step297EntryFvFresh=
    some (s2Step297EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩,growRow 770 s2Step297EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step297EntryFvBefore s2Step297EntryFvAfter s2Step297EntryFvRow 164 s2Step297EntryFvFresh
    s2Step297EntryFv_distinct s2Step297EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step297EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step297EntryFvRow.payload++s2Step297EntryFvFresh) s2Step297EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step297EntryGBefore : Arena := s2Step297EntryFBefore

private theorem s2Step297EntryG_Incoming : rowsOwned s2Step297EntryGBefore [s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297EntryFRow,s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow] 1 s2Step297EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297EntryG_Outgoing : rowsOwned s2Step297EntryGvAfter [s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut] :=
  hmrRows_owned_drop s2Step297EntryGvAfter [s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut] 1 s2Step297EntryBank_outgoingOwned

private theorem s2Step297EntryG_distinct : (s2Step297EntryGRow.sign::s2Step297EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297EntryG_owned : (s2Step297EntryGRow.sign::s2Step297EntryGRow.payload).toFinset⊆s2Step297EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EntryG_reserved : s2Step297EntryGBefore.reserve s2Step297EntryGFresh.toFinset=some s2Step297EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step297EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step297EntryGBefore,s2Step297EntryFBefore,s2Step297EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step297EntryGAfter,s2Step297EntryGBefore,s2Step297EntryFBefore,s2Step297EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step297EntryG_checked : planRowResizeLog s2Step297EntryGBefore s2Step297EntryGRow 123 s2Step297EntryGFresh=
    some (s2Step297EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787],769⟩,growRow 769 s2Step297EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step297EntryGBefore s2Step297EntryGAfter s2Step297EntryGRow 123 s2Step297EntryGFresh
    s2Step297EntryG_distinct s2Step297EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step297EntryG_reserved
  have rowEq : WindowRow.mk (s2Step297EntryGRow.payload++s2Step297EntryGFresh) s2Step297EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step297EntryGvBefore : Arena := s2Step297EntryGAfter

private theorem s2Step297EntryGv_Incoming : rowsOwned s2Step297EntryGvBefore [s2Step297EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297EntryFRow,s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow] 3 s2Step297EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297EntryGv_Outgoing : rowsOwned s2Step297EntryGvAfter [s2Step297EntryGvOut] :=
  hmrRows_owned_drop s2Step297EntryGvAfter [s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut] 3 s2Step297EntryBank_outgoingOwned

private theorem s2Step297EntryGv_distinct : (s2Step297EntryGvRow.sign::s2Step297EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297EntryGv_owned : (s2Step297EntryGvRow.sign::s2Step297EntryGvRow.payload).toFinset⊆s2Step297EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297EntryGv_reserved : s2Step297EntryGvBefore.reserve s2Step297EntryGvFresh.toFinset=some s2Step297EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step297EntryGvFresh,arenaWires]
  · norm_num [s2Step297EntryGvBefore,s2Step297EntryGAfter,s2Step297EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step297EntryGvAfter,s2Step297EntryGvBefore,s2Step297EntryGAfter,s2Step297EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step297EntryGv_checked : planRowResizeLog s2Step297EntryGvBefore s2Step297EntryGvRow 164 s2Step297EntryGvFresh=
    some (s2Step297EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩,growRow 771 s2Step297EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step297EntryGvBefore s2Step297EntryGvAfter s2Step297EntryGvRow 164 s2Step297EntryGvFresh
    s2Step297EntryGv_distinct s2Step297EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step297EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step297EntryGvRow.payload++s2Step297EntryGvFresh) s2Step297EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step297EntryBank_rows : planWindowRowsLog s2Step297EntryFBefore [(s2Step297EntryFRow,123),(s2Step297EntryGRow,123),(s2Step297EntryFvRow,164),(s2Step297EntryGvRow,164)] [s2Step297EntryFFresh,s2Step297EntryGFresh,s2Step297EntryFvFresh,s2Step297EntryGvFresh]=
    some (s2Step297EntryGvAfter,[s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut],(growRow 768 s2Step297EntryFFresh ++ (growRow 769 s2Step297EntryGFresh ++ (growRow 770 s2Step297EntryFvFresh ++ (growRow 771 s2Step297EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step297EntryGvAfter [] []=some (s2Step297EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step297EntryGvBefore s2Step297EntryGvAfter s2Step297EntryGvAfter
    s2Step297EntryGvRow s2Step297EntryGvOut 164 s2Step297EntryGvFresh [] [] []
    (growRow 771 s2Step297EntryGvFresh) ([]) s2Step297EntryGv_Incoming s2Step297EntryGv_checked h4 s2Step297EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step297EntryFvBefore s2Step297EntryFvAfter s2Step297EntryGvAfter
    s2Step297EntryFvRow s2Step297EntryFvOut 164 s2Step297EntryFvFresh [(s2Step297EntryGvRow,164)] [s2Step297EntryGvFresh] [s2Step297EntryGvOut]
    (growRow 770 s2Step297EntryFvFresh) ((growRow 771 s2Step297EntryGvFresh ++ [])) s2Step297EntryFv_Incoming s2Step297EntryFv_checked h3 s2Step297EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step297EntryGBefore s2Step297EntryGAfter s2Step297EntryGvAfter
    s2Step297EntryGRow s2Step297EntryGOut 123 s2Step297EntryGFresh [(s2Step297EntryFvRow,164),(s2Step297EntryGvRow,164)] [s2Step297EntryFvFresh,s2Step297EntryGvFresh] [s2Step297EntryFvOut,s2Step297EntryGvOut]
    (growRow 769 s2Step297EntryGFresh) ((growRow 770 s2Step297EntryFvFresh ++ (growRow 771 s2Step297EntryGvFresh ++ []))) s2Step297EntryG_Incoming s2Step297EntryG_checked h2 s2Step297EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step297EntryFBefore s2Step297EntryFAfter s2Step297EntryGvAfter
    s2Step297EntryFRow s2Step297EntryFOut 123 s2Step297EntryFFresh [(s2Step297EntryGRow,123),(s2Step297EntryFvRow,164),(s2Step297EntryGvRow,164)] [s2Step297EntryGFresh,s2Step297EntryFvFresh,s2Step297EntryGvFresh] [s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut]
    (growRow 768 s2Step297EntryFFresh) ((growRow 769 s2Step297EntryGFresh ++ (growRow 770 s2Step297EntryFvFresh ++ (growRow 771 s2Step297EntryGvFresh ++ [])))) s2Step297EntryF_Incoming s2Step297EntryF_checked h1 s2Step297EntryF_Outgoing
  exact h0

private theorem s2Step297EntryBank_checked : compileHmrBankResizeLog .entry s2Step297EntryFBefore ⟨s2Step297EntryFRow,s2Step297EntryGRow,s2Step297EntryFvRow,s2Step297EntryGvRow⟩ ⟨123,123,164,164⟩ [s2Step297EntryFFresh,s2Step297EntryGFresh,s2Step297EntryFvFresh,s2Step297EntryGvFresh]=
    some (s2Step297EntryGvAfter,⟨s2Step297EntryFOut,s2Step297EntryGOut,s2Step297EntryFvOut,s2Step297EntryGvOut⟩,(growRow 768 s2Step297EntryFFresh ++ (growRow 769 s2Step297EntryGFresh ++ (growRow 770 s2Step297EntryFvFresh ++ (growRow 771 s2Step297EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step297EntryBank_rows]
  rfl

private def s2Step297ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<634) ∨ (635≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297ExitFBefore : Arena := s2Step297ExitGAfter

private def s2Step297ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 805],768⟩

private def s2Step297ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 847],770⟩

private def s2Step297ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787, 820],769⟩

private def s2Step297ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 783],771⟩

private theorem s2Step297ExitBank_incomingDistinct : ([s2Step297ExitGRow,s2Step297ExitFRow,s2Step297ExitFvRow,s2Step297ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297ExitF_Incoming : rowsOwned s2Step297ExitFBefore [s2Step297ExitFRow,s2Step297ExitFvRow,s2Step297ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297ExitGRow,s2Step297ExitFRow,s2Step297ExitFvRow,s2Step297ExitGvRow] 1 s2Step297ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297ExitBank_outgoingOwned : rowsOwned s2Step297ExitGvAfter [s2Step297ExitGOut,s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step297ExitGvAfter (fun q => (0≤q ∧ q<634) ∨ (635≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297ExitF_Outgoing : rowsOwned s2Step297ExitGvAfter [s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut] :=
  hmrRows_owned_drop s2Step297ExitGvAfter [s2Step297ExitGOut,s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut] 1 s2Step297ExitBank_outgoingOwned

private theorem s2Step297ExitF_distinct : (s2Step297ExitFRow.sign::s2Step297ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297ExitF_owned : (s2Step297ExitFRow.sign::s2Step297ExitFRow.payload).toFinset⊆s2Step297ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297ExitF_retired : s2Step297ExitFBefore.retireSet s2Step297ExitFExtra.toFinset=s2Step297ExitFAfter := by
  unfold Arena.retireSet s2Step297ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step297ExitFBefore,s2Step297ExitGAfter,s2Step297ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step297ExitF_checked : planRowResizeLog s2Step297ExitFBefore s2Step297ExitFRow 122 []=
    some (s2Step297ExitFAfter,s2Step297ExitFOut,shrinkRow 768 s2Step297ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step297ExitFBefore s2Step297ExitFRow 122 s2Step297ExitF_distinct s2Step297ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step297ExitFRow.payload.take 122) s2Step297ExitFRow.sign=s2Step297ExitFOut := by decide +kernel
  have hi : s2Step297ExitFRow.payload.drop 122=s2Step297ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step297ExitF_retired] at result
  exact result

private def s2Step297ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<634) ∨ (635≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297ExitFvBefore : Arena := s2Step297ExitFAfter

private theorem s2Step297ExitFv_Incoming : rowsOwned s2Step297ExitFvBefore [s2Step297ExitFvRow,s2Step297ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297ExitGRow,s2Step297ExitFRow,s2Step297ExitFvRow,s2Step297ExitGvRow] 2 s2Step297ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297ExitFvBefore (fun q => (0≤q ∧ q<634) ∨ (635≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297ExitFv_Outgoing : rowsOwned s2Step297ExitGvAfter [s2Step297ExitFvOut,s2Step297ExitGvOut] :=
  hmrRows_owned_drop s2Step297ExitGvAfter [s2Step297ExitGOut,s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut] 2 s2Step297ExitBank_outgoingOwned

private theorem s2Step297ExitFv_distinct : (s2Step297ExitFvRow.sign::s2Step297ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297ExitFv_owned : (s2Step297ExitFvRow.sign::s2Step297ExitFvRow.payload).toFinset⊆s2Step297ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297ExitFvBefore (fun q => (0≤q ∧ q<634) ∨ (635≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297ExitFv_retired : s2Step297ExitFvBefore.retireSet s2Step297ExitFvExtra.toFinset=s2Step297ExitFvAfter := by
  unfold Arena.retireSet s2Step297ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step297ExitFvBefore,s2Step297ExitFAfter,s2Step297ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step297ExitFv_checked : planRowResizeLog s2Step297ExitFvBefore s2Step297ExitFvRow 164 []=
    some (s2Step297ExitFvAfter,s2Step297ExitFvOut,shrinkRow 770 s2Step297ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step297ExitFvBefore s2Step297ExitFvRow 164 s2Step297ExitFv_distinct s2Step297ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step297ExitFvRow.payload.take 164) s2Step297ExitFvRow.sign=s2Step297ExitFvOut := by decide +kernel
  have hi : s2Step297ExitFvRow.payload.drop 164=s2Step297ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step297ExitFv_retired] at result
  exact result

private def s2Step297ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step297ExitG_Incoming : rowsOwned s2Step297ExitGBefore [s2Step297ExitGRow,s2Step297ExitFRow,s2Step297ExitFvRow,s2Step297ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297ExitGRow,s2Step297ExitFRow,s2Step297ExitFvRow,s2Step297ExitGvRow] 0 s2Step297ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297ExitG_Outgoing : rowsOwned s2Step297ExitGvAfter [s2Step297ExitGOut,s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut] :=
  hmrRows_owned_drop s2Step297ExitGvAfter [s2Step297ExitGOut,s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut] 0 s2Step297ExitBank_outgoingOwned

private theorem s2Step297ExitG_distinct : (s2Step297ExitGRow.sign::s2Step297ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297ExitG_owned : (s2Step297ExitGRow.sign::s2Step297ExitGRow.payload).toFinset⊆s2Step297ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297ExitG_retired : s2Step297ExitGBefore.retireSet s2Step297ExitGExtra.toFinset=s2Step297ExitGAfter := by
  unfold Arena.retireSet s2Step297ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step297ExitGBefore,s2Step297ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step297ExitG_checked : planRowResizeLog s2Step297ExitGBefore s2Step297ExitGRow 121 []=
    some (s2Step297ExitGAfter,s2Step297ExitGOut,shrinkRow 769 s2Step297ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step297ExitGBefore s2Step297ExitGRow 121 s2Step297ExitG_distinct s2Step297ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step297ExitGRow.payload.take 121) s2Step297ExitGRow.sign=s2Step297ExitGOut := by decide +kernel
  have hi : s2Step297ExitGRow.payload.drop 121=s2Step297ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step297ExitG_retired] at result
  exact result

private def s2Step297ExitGvBefore : Arena := s2Step297ExitFvAfter

private theorem s2Step297ExitGv_Incoming : rowsOwned s2Step297ExitGvBefore [s2Step297ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297ExitGRow,s2Step297ExitFRow,s2Step297ExitFvRow,s2Step297ExitGvRow] 3 s2Step297ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297ExitGvBefore (fun q => (0≤q ∧ q<634) ∨ (635≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297ExitGv_Outgoing : rowsOwned s2Step297ExitGvAfter [s2Step297ExitGvOut] :=
  hmrRows_owned_drop s2Step297ExitGvAfter [s2Step297ExitGOut,s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut] 3 s2Step297ExitBank_outgoingOwned

private theorem s2Step297ExitGv_distinct : (s2Step297ExitGvRow.sign::s2Step297ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297ExitGv_owned : (s2Step297ExitGvRow.sign::s2Step297ExitGvRow.payload).toFinset⊆s2Step297ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297ExitGvBefore (fun q => (0≤q ∧ q<634) ∨ (635≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297ExitGv_retired : s2Step297ExitGvBefore.retireSet s2Step297ExitGvExtra.toFinset=s2Step297ExitGvAfter := by
  unfold Arena.retireSet s2Step297ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step297ExitGvBefore,s2Step297ExitFvAfter,s2Step297ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step297ExitGv_checked : planRowResizeLog s2Step297ExitGvBefore s2Step297ExitGvRow 164 []=
    some (s2Step297ExitGvAfter,s2Step297ExitGvOut,shrinkRow 771 s2Step297ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step297ExitGvBefore s2Step297ExitGvRow 164 s2Step297ExitGv_distinct s2Step297ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step297ExitGvRow.payload.take 164) s2Step297ExitGvRow.sign=s2Step297ExitGvOut := by decide +kernel
  have hi : s2Step297ExitGvRow.payload.drop 164=s2Step297ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step297ExitGv_retired] at result
  exact result

private theorem s2Step297ExitBank_rows : planWindowRowsLog s2Step297ExitGBefore [(s2Step297ExitGRow,121),(s2Step297ExitFRow,122),(s2Step297ExitFvRow,164),(s2Step297ExitGvRow,164)] [[],[],[],[]]=
    some (s2Step297ExitGvAfter,[s2Step297ExitGOut,s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut],(shrinkRow 769 s2Step297ExitGExtra ++ (shrinkRow 768 s2Step297ExitFExtra ++ (shrinkRow 770 s2Step297ExitFvExtra ++ (shrinkRow 771 s2Step297ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step297ExitGvAfter [] []=some (s2Step297ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step297ExitGvBefore s2Step297ExitGvAfter s2Step297ExitGvAfter
    s2Step297ExitGvRow s2Step297ExitGvOut 164 [] [] [] []
    (shrinkRow 771 s2Step297ExitGvExtra) ([]) s2Step297ExitGv_Incoming s2Step297ExitGv_checked h4 s2Step297ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step297ExitFvBefore s2Step297ExitFvAfter s2Step297ExitGvAfter
    s2Step297ExitFvRow s2Step297ExitFvOut 164 [] [(s2Step297ExitGvRow,164)] [[]] [s2Step297ExitGvOut]
    (shrinkRow 770 s2Step297ExitFvExtra) ((shrinkRow 771 s2Step297ExitGvExtra ++ [])) s2Step297ExitFv_Incoming s2Step297ExitFv_checked h3 s2Step297ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step297ExitFBefore s2Step297ExitFAfter s2Step297ExitGvAfter
    s2Step297ExitFRow s2Step297ExitFOut 122 [] [(s2Step297ExitFvRow,164),(s2Step297ExitGvRow,164)] [[],[]] [s2Step297ExitFvOut,s2Step297ExitGvOut]
    (shrinkRow 768 s2Step297ExitFExtra) ((shrinkRow 770 s2Step297ExitFvExtra ++ (shrinkRow 771 s2Step297ExitGvExtra ++ []))) s2Step297ExitF_Incoming s2Step297ExitF_checked h2 s2Step297ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step297ExitGBefore s2Step297ExitGAfter s2Step297ExitGvAfter
    s2Step297ExitGRow s2Step297ExitGOut 121 [] [(s2Step297ExitFRow,122),(s2Step297ExitFvRow,164),(s2Step297ExitGvRow,164)] [[],[],[]] [s2Step297ExitFOut,s2Step297ExitFvOut,s2Step297ExitGvOut]
    (shrinkRow 769 s2Step297ExitGExtra) ((shrinkRow 768 s2Step297ExitFExtra ++ (shrinkRow 770 s2Step297ExitFvExtra ++ (shrinkRow 771 s2Step297ExitGvExtra ++ [])))) s2Step297ExitG_Incoming s2Step297ExitG_checked h1 s2Step297ExitG_Outgoing
  exact h0

private theorem s2Step297ExitBank_checked : compileHmrBankResizeLog .exit s2Step297ExitGBefore ⟨s2Step297ExitFRow,s2Step297ExitGRow,s2Step297ExitFvRow,s2Step297ExitGvRow⟩ ⟨122,121,164,164⟩ [[],[],[],[]]=
    some (s2Step297ExitGvAfter,⟨s2Step297ExitFOut,s2Step297ExitGOut,s2Step297ExitFvOut,s2Step297ExitGvOut⟩,(shrinkRow 769 s2Step297ExitGExtra ++ (shrinkRow 768 s2Step297ExitFExtra ++ (shrinkRow 770 s2Step297ExitFvExtra ++ (shrinkRow 771 s2Step297ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step297ExitBank_rows]
  rfl

private theorem s2Step297Add0_apart : Disjoint s2Step297Add0Arena.live s2Step297Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step297Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297Add0_card : s2Step297Add0Arena.live.card=903 := by
  decide +kernel

private theorem s2Step297Add0_borrowed : s2Step297Add0Arena.checkBorrow (hmrHybridCount s2Step297Add0Arena s2Step297Add0B.length) s2Step297Add0Work=some s2Step297Add0During := by
  have len : s2Step297Add0Work.length=hmrHybridCount s2Step297Add0Arena s2Step297Add0B.length := by
    rw [hmrHybridCount,s2Step297Add0_card]
    decide +kernel
  have nd : s2Step297Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step297Add0Arena s2Step297Add0During s2Step297Add0Work.toFinset s2Step297Add0_bounded s2Step297Add0_apart rfl

private theorem s2Step297Add0_distinct : (830::811::800::(s2Step297Add0A++s2Step297Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297Add0_owned : (830::811::800::(s2Step297Add0A++s2Step297Add0B)).toFinset⊆s2Step297Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step297Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297Add0_checked : compileHmrHybridCinLog s2Step297Add0Arena 811 830 800 s2Step297Add0A s2Step297Add0B s2Step297Add0Work=some s2Step297Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step297Add0Arena s2Step297Add0During 811 830 800 s2Step297Add0A s2Step297Add0B s2Step297Add0Work
    (by decide +kernel) (by decide +kernel) s2Step297Add0_distinct
    (fun q hq => s2Step297Add0_owned (List.mem_toFinset.mpr hq)) s2Step297Add0_borrowed

private theorem s2Step297Add1_apart : Disjoint s2Step297Add1Arena.live s2Step297Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step297Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297Add1_card : s2Step297Add1Arena.live.card=903 := by
  decide +kernel

private theorem s2Step297Add1_borrowed : s2Step297Add1Arena.checkBorrow (hmrHybridCount s2Step297Add1Arena s2Step297Add1B.length) s2Step297Add1Work=some s2Step297Add1During := by
  have len : s2Step297Add1Work.length=hmrHybridCount s2Step297Add1Arena s2Step297Add1B.length := by
    rw [hmrHybridCount,s2Step297Add1_card]
    decide +kernel
  have nd : s2Step297Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step297Add1Arena s2Step297Add1During s2Step297Add1Work.toFinset s2Step297Add1_bounded s2Step297Add1_apart rfl

private theorem s2Step297Add1_distinct : (830::811::800::(s2Step297Add1A++s2Step297Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297Add1_owned : (830::811::800::(s2Step297Add1A++s2Step297Add1B)).toFinset⊆s2Step297Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step297Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297Add1_checked : compileHmrHybridCinLog s2Step297Add1Arena 811 830 800 s2Step297Add1A s2Step297Add1B s2Step297Add1Work=some s2Step297Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step297Add1Arena s2Step297Add1During 811 830 800 s2Step297Add1A s2Step297Add1B s2Step297Add1Work
    (by decide +kernel) (by decide +kernel) s2Step297Add1_distinct
    (fun q hq => s2Step297Add1_owned (List.mem_toFinset.mpr hq)) s2Step297Add1_borrowed

private theorem s2Step297F4_apart : Disjoint (s2Step297Add0A++s2Step297Add0B).toFinset (s2Step297Add1A++s2Step297Add1B).toFinset := by
  have nd : ((s2Step297Add0A++s2Step297Add0B)++(s2Step297Add1A++s2Step297Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step297F4_carry : s2Step297F4FlagArena.checkBorrow 1 [800]=some s2Step297Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step297F4FlagArena,s2Step297HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step297F4FlagArena,s2Step297HeadFvAfter,s2Step297Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step297F4_distinct : (780::811::830::800::((s2Step297Add0A++s2Step297Add1A)++(s2Step297Add0B++s2Step297Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297F4_flag : s2Step297HeadFvAfter.checkBorrow 1 [830]=some s2Step297F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step297HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step297F4_owned : (780::811::((s2Step297Add0A++s2Step297Add1A)++(s2Step297Add0B++s2Step297Add1B))).toFinset⊆s2Step297HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step297HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297F4_checked : compileHmrHybridF4Log s2Step297HeadFvAfter 780 811 s2Step297Add0A s2Step297Add0B s2Step297Add1A s2Step297Add1B [830] [800] s2Step297Add0Work s2Step297Add1Work=some s2Step297F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step297HeadFvAfter s2Step297F4FlagArena s2Step297Add0Arena s2Step297Add0During s2Step297Add1During 780 811
    s2Step297Add0A s2Step297Add0B s2Step297Add1A s2Step297Add1B [830] [800] s2Step297Add0Work s2Step297Add1Work
    (fun q hq => s2Step297F4_owned (List.mem_toFinset.mpr hq)) s2Step297F4_flag s2Step297F4_carry
    s2Step297F4_distinct s2Step297F4_apart s2Step297Add0_checked s2Step297Add1_checked

private theorem s2Step297Front_branch : s2Step297FrontSigmaArena.checkBorrow 1 [811]=some s2Step297HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step297FrontSigmaArena,s2Step297EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step297FrontSigmaArena,s2Step297EntryGvAfter,s2Step297HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step297Front_entry : HmrFrontEntryValid s2Step297EntryFBefore s2Step297FrontBank 123 164 ⟨122,121,164,164⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step297FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step297EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step297EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step297FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step297Front_sigma : s2Step297EntryGvAfter.checkBorrow 1 [780]=some s2Step297FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step297EntryGvAfter,arenaWires]
  · rfl

private def s2Step297HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297HeadFBefore : Arena := s2Step297HeadGAfter

private def s2Step297HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634],768⟩

private def s2Step297HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step297HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787],769⟩

private def s2Step297HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩

private theorem s2Step297HeadBank_incomingDistinct : ([s2Step297HeadGRow,s2Step297HeadFRow,s2Step297HeadGvRow,s2Step297HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297HeadF_Incoming : rowsOwned s2Step297HeadFBefore [s2Step297HeadFRow,s2Step297HeadGvRow,s2Step297HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297HeadGRow,s2Step297HeadFRow,s2Step297HeadGvRow,s2Step297HeadFvRow] 1 s2Step297HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297HeadBank_outgoingOwned : rowsOwned s2Step297HeadFvAfter [s2Step297HeadGOut,s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step297HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297HeadF_Outgoing : rowsOwned s2Step297HeadFvAfter [s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut] :=
  hmrRows_owned_drop s2Step297HeadFvAfter [s2Step297HeadGOut,s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut] 1 s2Step297HeadBank_outgoingOwned

private theorem s2Step297HeadF_distinct : (s2Step297HeadFRow.sign::s2Step297HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297HeadF_owned : (s2Step297HeadFRow.sign::s2Step297HeadFRow.payload).toFinset⊆s2Step297HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297HeadF_reserved : s2Step297HeadFBefore.reserve s2Step297HeadFFresh.toFinset=some s2Step297HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step297HeadFFresh,arenaWires]
  · norm_num [s2Step297HeadFBefore,s2Step297HeadGAfter,s2Step297HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step297HeadFAfter,s2Step297HeadFBefore,s2Step297HeadGAfter,s2Step297HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step297HeadF_checked : planRowResizeLog s2Step297HeadFBefore s2Step297HeadFRow 124 s2Step297HeadFFresh=
    some (s2Step297HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 805],768⟩,growRow 768 s2Step297HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step297HeadFBefore s2Step297HeadFAfter s2Step297HeadFRow 124 s2Step297HeadFFresh
    s2Step297HeadF_distinct s2Step297HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step297HeadF_reserved
  have rowEq : WindowRow.mk (s2Step297HeadFRow.payload++s2Step297HeadFFresh) s2Step297HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 805],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step297HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step297HeadFvBefore : Arena := s2Step297HeadGvAfter

private theorem s2Step297HeadFv_Incoming : rowsOwned s2Step297HeadFvBefore [s2Step297HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297HeadGRow,s2Step297HeadFRow,s2Step297HeadGvRow,s2Step297HeadFvRow] 3 s2Step297HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297HeadFv_Outgoing : rowsOwned s2Step297HeadFvAfter [s2Step297HeadFvOut] :=
  hmrRows_owned_drop s2Step297HeadFvAfter [s2Step297HeadGOut,s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut] 3 s2Step297HeadBank_outgoingOwned

private theorem s2Step297HeadFv_distinct : (s2Step297HeadFvRow.sign::s2Step297HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297HeadFv_owned : (s2Step297HeadFvRow.sign::s2Step297HeadFvRow.payload).toFinset⊆s2Step297HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297HeadFv_reserved : s2Step297HeadFvBefore.reserve s2Step297HeadFvFresh.toFinset=some s2Step297HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step297HeadFvFresh,arenaWires]
  · norm_num [s2Step297HeadFvBefore,s2Step297HeadGvAfter,s2Step297HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step297HeadFvAfter,s2Step297HeadFvBefore,s2Step297HeadGvAfter,s2Step297HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step297HeadFv_checked : planRowResizeLog s2Step297HeadFvBefore s2Step297HeadFvRow 165 s2Step297HeadFvFresh=
    some (s2Step297HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 847],770⟩,growRow 770 s2Step297HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step297HeadFvBefore s2Step297HeadFvAfter s2Step297HeadFvRow 165 s2Step297HeadFvFresh
    s2Step297HeadFv_distinct s2Step297HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step297HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step297HeadFvRow.payload++s2Step297HeadFvFresh) s2Step297HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step297HeadG_Incoming : rowsOwned s2Step297HeadGBefore [s2Step297HeadGRow,s2Step297HeadFRow,s2Step297HeadGvRow,s2Step297HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297HeadGRow,s2Step297HeadFRow,s2Step297HeadGvRow,s2Step297HeadFvRow] 0 s2Step297HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297HeadG_Outgoing : rowsOwned s2Step297HeadFvAfter [s2Step297HeadGOut,s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut] :=
  hmrRows_owned_drop s2Step297HeadFvAfter [s2Step297HeadGOut,s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut] 0 s2Step297HeadBank_outgoingOwned

private theorem s2Step297HeadG_distinct : (s2Step297HeadGRow.sign::s2Step297HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297HeadG_owned : (s2Step297HeadGRow.sign::s2Step297HeadGRow.payload).toFinset⊆s2Step297HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297HeadG_reserved : s2Step297HeadGBefore.reserve s2Step297HeadGFresh.toFinset=some s2Step297HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step297HeadGFresh,arenaWires]
  · norm_num [s2Step297HeadGBefore,s2Step297HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step297HeadGAfter,s2Step297HeadGBefore,s2Step297HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step297HeadG_checked : planRowResizeLog s2Step297HeadGBefore s2Step297HeadGRow 124 s2Step297HeadGFresh=
    some (s2Step297HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787, 820],769⟩,growRow 769 s2Step297HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step297HeadGBefore s2Step297HeadGAfter s2Step297HeadGRow 124 s2Step297HeadGFresh
    s2Step297HeadG_distinct s2Step297HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step297HeadG_reserved
  have rowEq : WindowRow.mk (s2Step297HeadGRow.payload++s2Step297HeadGFresh) s2Step297HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 882, 787, 820],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step297HeadGvBefore : Arena := s2Step297HeadFAfter

private theorem s2Step297HeadGv_Incoming : rowsOwned s2Step297HeadGvBefore [s2Step297HeadGvRow,s2Step297HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step297HeadGRow,s2Step297HeadFRow,s2Step297HeadGvRow,s2Step297HeadFvRow] 2 s2Step297HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step297HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step297HeadGv_Outgoing : rowsOwned s2Step297HeadFvAfter [s2Step297HeadGvOut,s2Step297HeadFvOut] :=
  hmrRows_owned_drop s2Step297HeadFvAfter [s2Step297HeadGOut,s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut] 2 s2Step297HeadBank_outgoingOwned

private theorem s2Step297HeadGv_distinct : (s2Step297HeadGvRow.sign::s2Step297HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step297HeadGv_owned : (s2Step297HeadGvRow.sign::s2Step297HeadGvRow.payload).toFinset⊆s2Step297HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step297HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step297HeadGv_reserved : s2Step297HeadGvBefore.reserve s2Step297HeadGvFresh.toFinset=some s2Step297HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step297HeadGvFresh,arenaWires]
  · norm_num [s2Step297HeadGvBefore,s2Step297HeadFAfter,s2Step297HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step297HeadGvAfter,s2Step297HeadGvBefore,s2Step297HeadFAfter,s2Step297HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step297HeadGv_checked : planRowResizeLog s2Step297HeadGvBefore s2Step297HeadGvRow 165 s2Step297HeadGvFresh=
    some (s2Step297HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 783],771⟩,growRow 771 s2Step297HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step297HeadGvBefore s2Step297HeadGvAfter s2Step297HeadGvRow 165 s2Step297HeadGvFresh
    s2Step297HeadGv_distinct s2Step297HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step297HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step297HeadGvRow.payload++s2Step297HeadGvFresh) s2Step297HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step297HeadBank_rows : planWindowRowsLog s2Step297HeadGBefore [(s2Step297HeadGRow,124),(s2Step297HeadFRow,124),(s2Step297HeadGvRow,165),(s2Step297HeadFvRow,165)] [s2Step297HeadGFresh,s2Step297HeadFFresh,s2Step297HeadGvFresh,s2Step297HeadFvFresh]=
    some (s2Step297HeadFvAfter,[s2Step297HeadGOut,s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut],(growRow 769 s2Step297HeadGFresh ++ (growRow 768 s2Step297HeadFFresh ++ (growRow 771 s2Step297HeadGvFresh ++ (growRow 770 s2Step297HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step297HeadFvAfter [] []=some (s2Step297HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step297HeadFvBefore s2Step297HeadFvAfter s2Step297HeadFvAfter
    s2Step297HeadFvRow s2Step297HeadFvOut 165 s2Step297HeadFvFresh [] [] []
    (growRow 770 s2Step297HeadFvFresh) ([]) s2Step297HeadFv_Incoming s2Step297HeadFv_checked h4 s2Step297HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step297HeadGvBefore s2Step297HeadGvAfter s2Step297HeadFvAfter
    s2Step297HeadGvRow s2Step297HeadGvOut 165 s2Step297HeadGvFresh [(s2Step297HeadFvRow,165)] [s2Step297HeadFvFresh] [s2Step297HeadFvOut]
    (growRow 771 s2Step297HeadGvFresh) ((growRow 770 s2Step297HeadFvFresh ++ [])) s2Step297HeadGv_Incoming s2Step297HeadGv_checked h3 s2Step297HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step297HeadFBefore s2Step297HeadFAfter s2Step297HeadFvAfter
    s2Step297HeadFRow s2Step297HeadFOut 124 s2Step297HeadFFresh [(s2Step297HeadGvRow,165),(s2Step297HeadFvRow,165)] [s2Step297HeadGvFresh,s2Step297HeadFvFresh] [s2Step297HeadGvOut,s2Step297HeadFvOut]
    (growRow 768 s2Step297HeadFFresh) ((growRow 771 s2Step297HeadGvFresh ++ (growRow 770 s2Step297HeadFvFresh ++ []))) s2Step297HeadF_Incoming s2Step297HeadF_checked h2 s2Step297HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step297HeadGBefore s2Step297HeadGAfter s2Step297HeadFvAfter
    s2Step297HeadGRow s2Step297HeadGOut 124 s2Step297HeadGFresh [(s2Step297HeadFRow,124),(s2Step297HeadGvRow,165),(s2Step297HeadFvRow,165)] [s2Step297HeadFFresh,s2Step297HeadGvFresh,s2Step297HeadFvFresh] [s2Step297HeadFOut,s2Step297HeadGvOut,s2Step297HeadFvOut]
    (growRow 769 s2Step297HeadGFresh) ((growRow 768 s2Step297HeadFFresh ++ (growRow 771 s2Step297HeadGvFresh ++ (growRow 770 s2Step297HeadFvFresh ++ [])))) s2Step297HeadG_Incoming s2Step297HeadG_checked h1 s2Step297HeadG_Outgoing
  exact h0

private theorem s2Step297HeadBank_checked : compileHmrBankResizeLog .headroom s2Step297HeadGBefore ⟨s2Step297HeadFRow,s2Step297HeadGRow,s2Step297HeadFvRow,s2Step297HeadGvRow⟩ ⟨124,124,165,165⟩ [s2Step297HeadGFresh,s2Step297HeadFFresh,s2Step297HeadGvFresh,s2Step297HeadFvFresh]=
    some (s2Step297HeadFvAfter,⟨s2Step297HeadFOut,s2Step297HeadGOut,s2Step297HeadFvOut,s2Step297HeadGvOut⟩,(growRow 769 s2Step297HeadGFresh ++ (growRow 768 s2Step297HeadFFresh ++ (growRow 771 s2Step297HeadGvFresh ++ (growRow 770 s2Step297HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step297HeadBank_rows]
  rfl

private theorem s2Step297Front_checked : compileHmrSourceFrontLog s2Step297EntryFBefore s2Step297FrontBank 123 164 ⟨122,121,164,164⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step297FrontLog=some s2Step297FrontPlan := by
  have pairEq : s2Step297FrontPair=⟨s2Step297HeadFRow,s2Step297HeadGRow,s2Step297HeadFvRow,s2Step297HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step297FrontHead=⟨s2Step297ExitFRow,s2Step297ExitGRow,s2Step297ExitFvRow,s2Step297ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step297Add0A=s2Step297FrontHead.f.wires := by decide +kernel
  have gEq : s2Step297Add0B=s2Step297FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step297Add1A=s2Step297FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step297Add1B=s2Step297FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step297EntryFBefore s2Step297FrontBank 123 164 ⟨122,121,164,164⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step297FrontLog s2Step297FrontPlan
  · exact s2Step297Front_entry
  · exact s2Step297EntryBank_checked
  · exact s2Step297Front_sigma
  · rfl
  · exact s2Step297Front_branch
  · rfl
  · simpa only [s2Step297FrontPlan,pairEq] using s2Step297HeadBank_checked
  · simpa only [s2Step297FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step297F4_checked
  · exact s2Step297Counter_checked
  · rfl
  · simpa only [s2Step297FrontPlan,headEq] using s2Step297ExitBank_checked

private theorem s2Step297Complete_explicit_checked : compileHmrEarlyStepLog s2Step297EntryFBefore s2Step297FrontBank 123 164 ⟨122,121,164,164⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step297CompleteLog=some s2Step297CompletePlan := by
  let Q := s2Step297EarlyControlPlan
  have hq := s2Step297EarlyControl_plan_checked
  have fv1 : s2Step297CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step297CompleteOut.fv.payload[2]?.getD s2Step297CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step297CompleteOut.fv.payload[3]?.getD s2Step297CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step297CompleteOut.fv.payload[4]?.getD s2Step297CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step297EntryFBefore s2Step297EarlyControlArena s2Step297FrontBank 123 164 ⟨122,121,164,164⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step297CompleteLog s2Step297FrontPlan Q
    s2Step297Front_checked s2Step297Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step297Complete_owned s2Step297Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step297EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 780 s2Step297CompleteOut.fv.second (s2Step297CompleteOut.fv.payload[2]?.getD s2Step297CompleteOut.fv.sign) (s2Step297CompleteOut.fv.payload[3]?.getD s2Step297CompleteOut.fv.sign) (s2Step297CompleteOut.fv.payload[4]?.getD s2Step297CompleteOut.fv.sign) 811 55 s2Step297EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep297Arena : Arena := s2Step297EntryFBefore
def s2PrivateStep297Bank : WindowBank := s2Step297FrontBank
def s2PrivateStep297Spec : HmrSourceWalkStepLog := ⟨123,164,⟨122,121,164,164⟩,55,.early s2Step297CompleteLog⟩
def s2PrivateStep297Plan : HmrSourceStepPlan := .early s2Step297CompletePlan
theorem s2PrivateStep297_source : s2PrivateStep297Spec=s2ObservedLogs288[9] := rfl
theorem s2PrivateStep297_checked : compileHmrSourceStepLog s2PrivateStep297Arena s2PrivateStep297Bank
    s2PrivateStep297Spec.fgWidth s2PrivateStep297Spec.vWidth s2PrivateStep297Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 297 s2PrivateStep297Spec.need none s2PrivateStep297Spec.log=some s2PrivateStep297Plan := by
  change compileHmrSourceStepLog s2Step297EntryFBefore s2Step297FrontBank 123 164 ⟨122,121,164,164⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 297 55 none (.early s2Step297CompleteLog)=some (.early s2Step297CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 297<498)]
  rw [s2Step297Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
