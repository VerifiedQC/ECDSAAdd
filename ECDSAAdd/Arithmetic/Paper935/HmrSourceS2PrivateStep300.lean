import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep298
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

private def s2Step300CompleteMoves : List (Wire × Wire) := [(793,120)]

private def s2Step300EarlyControlLog : HmrEarlyControlLog := ⟨[793, 820, 787, 797, 806],[811],[830],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step300FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[797], [787], [820], [783]],[[], [], [], []]⟩,[847],[805],[806],[811],[830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 811, 830, 800]⟩

private def s2Step300CompleteLog : HmrEarlyStepLog := ⟨s2Step300FrontLog,s2Step300CompleteMoves,s2Step300EarlyControlLog⟩

private def s2Step300ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩

private def s2Step300ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step300ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119],769⟩

private def s2Step300ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩

private def s2Step300FrontOut : WindowBank := ⟨s2Step300ExitFOut,s2Step300ExitGOut,s2Step300ExitFvOut,s2Step300ExitGvOut⟩

private def s2Step300CompleteOut : WindowBank := s2Step300FrontOut.repacked s2Step300CompleteMoves

private def s2Step300EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step300EarlyControlPositiveArena,[811],s2Step300EarlyControlEqualityArena,[830],⟨⟨847,false⟩,[⟨⟨811,false⟩,830⟩]⟩⟩

private def s2Step300EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨774,false⟩,820⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,806⟩]⟩

private def s2Step300EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step300EarlyControlZeroArena,s2Step300EarlyControlZeroPlan,s2Step300EarlyControlClassPlan,s2Step300EarlyControlFlagArena,s2Step300EarlyControlFittedArena,s2Step300EarlyControlHistoryArena,s2Step300EarlyControlSigmaArena,s2Step300EarlyControlOutputArena,s2Step300EarlyControlLog⟩

private def s2Step300CounterWork : List Wire := [806, 811, 830, 800]

private theorem s2Step300Counter_bounded : s2Step300CounterWork.toFinset⊆arenaWires := by norm_num [s2Step300CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step300HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300CounterDuring : Arena := ⟨s2Step300HeadFvAfter.live∪s2Step300CounterWork.toFinset,Finset.union_subset s2Step300HeadFvAfter.bounded s2Step300Counter_bounded⟩

private def s2Step300EntryFFresh : List Wire := []

private def s2Step300EntryFvFresh : List Wire := []

private def s2Step300EntryGFresh : List Wire := []

private def s2Step300EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300EntryGvAfter : Arena := s2Step300EntryFBefore

private def s2Step300EntryGvFresh : List Wire := []

private def s2Step300ExitFExtra : List Wire := [787]

private def s2Step300ExitGExtra : List Wire := [120, 797]

private def s2Step300ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300ExitGvExtra : List Wire := [820]

private def s2Step300Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step300Add0_bounded : s2Step300Add0Work.toFinset⊆arenaWires := by
  have h : s2Step300Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step300Add0During : Arena := ⟨s2Step300Add0Arena.live∪s2Step300Add0Work.toFinset,Finset.union_subset s2Step300Add0Arena.bounded s2Step300Add0_bounded⟩

private def s2Step300Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step300Add1_bounded : s2Step300Add1Work.toFinset⊆arenaWires := by
  have h : s2Step300Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step300Add1During : Arena := ⟨s2Step300Add1Arena.live∪s2Step300Add1Work.toFinset,Finset.union_subset s2Step300Add1Arena.bounded s2Step300Add1_bounded⟩

private def s2Step300F4FlagArena : Arena := ⟨s2Step300HeadFvAfter.live∪{806},Finset.union_subset s2Step300HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step300F4Plan : HmrHybridF4Plan := ⟨s2Step300F4FlagArena,[806],s2Step300Add0Arena,[811],s2Step300Add0During,s2Step300Add0Work,s2Step300Add1During,s2Step300Add1Work⟩

private def s2Step300HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 787],768⟩

private def s2Step300HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step300HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 797],769⟩

private def s2Step300HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 820],771⟩

private def s2Step300FrontHead : WindowBank := ⟨s2Step300HeadFOut,s2Step300HeadGOut,s2Step300HeadFvOut,s2Step300HeadGvOut⟩

private def s2Step300EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩

private def s2Step300EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step300EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step300EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩

private def s2Step300FrontPair : WindowBank := ⟨s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut⟩

private def s2Step300FrontSigmaArena : Arena := ⟨s2Step300EntryGvAfter.live∪{847},Finset.union_subset s2Step300EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step300HeadFFresh : List Wire := [787]

private def s2Step300HeadFvFresh : List Wire := [783]

private def s2Step300HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300HeadGFresh : List Wire := [797]

private def s2Step300HeadGvFresh : List Wire := [820]

private def s2Step300FrontPlan : HmrSourceFront := ⟨s2Step300EntryGvAfter,s2Step300FrontPair,(growRow 768 s2Step300EntryFFresh ++ (growRow 769 s2Step300EntryGFresh ++ (growRow 770 s2Step300EntryFvFresh ++ (growRow 771 s2Step300EntryGvFresh ++ [])))),s2Step300FrontSigmaArena,[847],s2Step300HeadGBefore,[805],
  s2Step300HeadFvAfter,s2Step300FrontHead,(growRow 769 s2Step300HeadGFresh ++ (growRow 768 s2Step300HeadFFresh ++ (growRow 771 s2Step300HeadGvFresh ++ (growRow 770 s2Step300HeadFvFresh ++ [])))),s2Step300F4Plan,s2Step300CounterDuring,s2Step300CounterWork,s2Step300ExitGvAfter,s2Step300FrontOut,(shrinkRow 769 s2Step300ExitGExtra ++ (shrinkRow 768 s2Step300ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step300ExitGvExtra ++ []))))⟩

private def s2Step300CompletePlan : HmrEarlyStepPlan := ⟨s2Step300FrontPlan,s2Step300EarlyControlArena,s2Step300EarlyControlPlan,s2Step300CompleteMoves⟩

private theorem s2Step300Complete_apart : List.Disjoint (s2Step300CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [847, 805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step300CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[847, 805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step300Complete_owned : (s2Step300CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step300EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step300CompleteMoveArena : Arena := ⟨s2Step300ExitGvAfter.live∪{120},Finset.union_subset s2Step300ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step300Complete_repack : s2Step300ExitGvAfter.checkRepack s2Step300CompleteMoves=some s2Step300EarlyControlArena := by
  have owned : 793∈s2Step300ExitGvAfter.live := by norm_num [s2Step300ExitGvAfter,arenaWires]
  have reserve : s2Step300ExitGvAfter.reserve {120}=some s2Step300CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step300ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step300CompleteMoveArena.retireSet {793}=s2Step300EarlyControlArena := by
    unfold Arena.retireSet s2Step300EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step300CompleteMoveArena,s2Step300ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step300CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step300CompleteMoveArena.retireSet {793}).checkRepack []=some s2Step300EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step300EarlyControl_branchOwned : ([805] : List Wire).toFinset⊆s2Step300EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_branch : compileHmrBranchRetirement s2Step300EarlyControlSigmaArena 805=some s2Step300EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step300EarlyControl_branchOwned
  · ext q
    simp [s2Step300EarlyControlOutputArena,s2Step300EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step300EarlyControl_classEqualityBorrow : s2Step300EarlyControlPositiveArena.checkBorrow (([847, 811] : List Wire).length-1) s2Step300EarlyControlLog.classWork=some s2Step300EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step300EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step300EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step300EarlyControlEqualityArena,s2Step300EarlyControlPositiveArena,s2Step300EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step300EarlyControl_classEqualityOwned : ([847, 811] : List Wire).toFinset⊆s2Step300EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_classEquality : compileHmrEqualityLog s2Step300EarlyControlPositiveArena [847, 811] 0 s2Step300EarlyControlLog.classWork=some (s2Step300EarlyControlEqualityArena,s2Step300EarlyControlLog.classWork,s2Step300EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step300EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step300EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step300EarlyControl_classOwned : ([777, 806, 847] : List Wire).toFinset⊆s2Step300EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_positiveBorrow : s2Step300EarlyControlZeroArena.checkBorrow (1) s2Step300EarlyControlLog.positiveWork=some s2Step300EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step300EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step300EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step300EarlyControlPositiveArena,s2Step300EarlyControlZeroArena,s2Step300EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step300EarlyControl_class : compileHmrSourceClassLog s2Step300EarlyControlZeroArena false 777 s2Step300EarlyControlZeroPlan.top 0 847 s2Step300EarlyControlLog.positiveWork s2Step300EarlyControlLog.classWork=some s2Step300EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step300EarlyControlClassPlan s2Step300EarlyControlZeroArena false 777 s2Step300EarlyControlZeroPlan.top 0 847
  constructor
  · decide +kernel
  · exact s2Step300EarlyControl_classOwned
  · exact s2Step300EarlyControl_positiveBorrow
  · exact s2Step300EarlyControl_classEquality

private theorem s2Step300EarlyControl_entryRecordOwned : ([805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step300EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_entrySigmaOwned : ([847, 254] : List Wire).toFinset⊆s2Step300EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_fitBorrow : s2Step300EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step300EarlyControlLog.recordFresh=some s2Step300EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step300EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step300EarlyControlFlagArena (fun q => (0≤q ∧ q<908)) rfl
      decide +kernel
    · ext q
      simp [s2Step300EarlyControlFittedArena,s2Step300EarlyControlFlagArena,s2Step300EarlyControlLog,arenaWires]

private theorem s2Step300EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step300EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlFlagArena (fun q => (0≤q ∧ q<908)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_fit : compileHmrRecordGrowLog s2Step300EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step300EarlyControlLog.recordFresh=some s2Step300EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step300EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step300EarlyControl_fitBorrow

private theorem s2Step300EarlyControl_flagsBorrow : s2Step300EarlyControlEqualityArena.checkBorrow (6) s2Step300EarlyControlLog.flagWork=some s2Step300EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step300EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step300EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step300EarlyControlFlagArena,s2Step300EarlyControlEqualityArena,s2Step300EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step300EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step300EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_flags : compileHmrFlagsLog s2Step300EarlyControlClassPlan.equalityArena s2Step300EarlyControlClassPlan.equality.top 253 252 251 s2Step300EarlyControlLog.flagWork=some s2Step300EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step300EarlyControl_flagsOwned⟩
  · exact s2Step300EarlyControl_flagsBorrow

private theorem s2Step300EarlyControl_historyBorrow : s2Step300EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step300EarlyControlLog.recordFresh=some s2Step300EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step300EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step300EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step300EarlyControlHistoryArena,s2Step300EarlyControlArena,s2Step300EarlyControlLog,arenaWires]

private theorem s2Step300EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step300EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_history : compileHmrRecordGrowLog s2Step300EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step300EarlyControlLog.recordFresh=some s2Step300EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step300EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step300EarlyControl_historyBorrow

private theorem s2Step300EarlyControl_sigmaOwned : ([254, 847] : List Wire).toFinset⊆s2Step300EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_sigmaReleaseOwned : ([847] : List Wire).toFinset⊆s2Step300EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_sigmaRelease : s2Step300EarlyControlHistoryArena.release {847} (fun _ => false)=some s2Step300EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step300EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step300EarlyControlSigmaArena,s2Step300EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step300EarlyControl_sigma : compileHmrSigmaDropLog s2Step300EarlyControlHistoryArena false 0 0 254 847 []=some s2Step300EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step300EarlyControl_sigmaOwned⟩
  · exact s2Step300EarlyControl_sigmaRelease

private theorem s2Step300EarlyControl_zeroBorrow : s2Step300EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step300EarlyControlLog.zeroWork=some s2Step300EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step300EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step300EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step300EarlyControlZeroArena,s2Step300EarlyControlArena,s2Step300EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step300EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step300EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step300EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EarlyControl_zero : compileHmrEqualityLog s2Step300EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step300EarlyControlLog.zeroWork=some (s2Step300EarlyControlZeroArena,s2Step300EarlyControlLog.zeroWork,s2Step300EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step300EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step300EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step300EarlyControl_logged : s2Step300EarlyControlPlan.Logged s2Step300EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 847 254 253 252 251 805 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step300EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step300EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step300EarlyControl_zero
  · exact s2Step300EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step300EarlyControl_flags
  · exact s2Step300EarlyControl_fit
  · exact s2Step300EarlyControl_history
  · exact s2Step300EarlyControl_sigma
  · exact s2Step300EarlyControl_branch

private theorem s2Step300EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step300EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 847 254 253 252 251 805 55 s2Step300EarlyControlLog=some s2Step300EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step300EarlyControlPlan s2Step300EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 847 254 253 252 251 805 55 s2Step300EarlyControl_logged

private def s2Step300EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩

private def s2Step300EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step300EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step300EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩

private def s2Step300FrontBank : WindowBank := ⟨s2Step300EntryFRow,s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow⟩

private def s2Step300Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 787, 768]

private def s2Step300Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 797, 769]

private def s2Step300Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 770]

private def s2Step300Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 820, 771]

private theorem s2Step300Counter_apart : Disjoint s2Step300HeadFvAfter.live s2Step300CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step300HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300Counter_borrowed : s2Step300HeadFvAfter.checkBorrow 4 s2Step300CounterWork=some s2Step300CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step300HeadFvAfter s2Step300CounterDuring s2Step300CounterWork.toFinset s2Step300Counter_bounded s2Step300Counter_apart rfl

private theorem s2Step300Counter_owned : (847::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step300HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step300HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300Counter_checked : compileHmrCounterStepLog s2Step300HeadFvAfter true 847 [772, 773, 774, 775, 776, 777] s2Step300CounterWork=some s2Step300CounterDuring := by
  have owned : ∀q∈847::[772, 773, 774, 775, 776, 777],q∈s2Step300HeadFvAfter.live := fun q hq => s2Step300Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step300Counter_borrowed

private def s2Step300EntryFAfter : Arena := s2Step300EntryFBefore

private theorem s2Step300EntryBank_incomingDistinct : ([s2Step300EntryFRow,s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300EntryF_Incoming : rowsOwned s2Step300EntryFBefore [s2Step300EntryFRow,s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300EntryFRow,s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow] 0 s2Step300EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300EntryBank_outgoingOwned : rowsOwned s2Step300EntryGvAfter [s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step300EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300EntryF_Outgoing : rowsOwned s2Step300EntryGvAfter [s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut] :=
  hmrRows_owned_drop s2Step300EntryGvAfter [s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut] 0 s2Step300EntryBank_outgoingOwned

private theorem s2Step300EntryF_distinct : (s2Step300EntryFRow.sign::s2Step300EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300EntryF_owned : (s2Step300EntryFRow.sign::s2Step300EntryFRow.payload).toFinset⊆s2Step300EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EntryF_reserved : s2Step300EntryFBefore.reserve s2Step300EntryFFresh.toFinset=some s2Step300EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step300EntryFFresh,arenaWires]
  · norm_num [s2Step300EntryFBefore,s2Step300EntryFFresh,arenaWires]
  · simp only [s2Step300EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step300EntryF_checked : planRowResizeLog s2Step300EntryFBefore s2Step300EntryFRow 121 s2Step300EntryFFresh=
    some (s2Step300EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩,growRow 768 s2Step300EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step300EntryFBefore s2Step300EntryFAfter s2Step300EntryFRow 121 s2Step300EntryFFresh
    s2Step300EntryF_distinct s2Step300EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300EntryF_reserved
  have rowEq : WindowRow.mk (s2Step300EntryFRow.payload++s2Step300EntryFFresh) s2Step300EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step300EntryFvAfter : Arena := s2Step300EntryFBefore

private def s2Step300EntryFvBefore : Arena := s2Step300EntryFBefore

private theorem s2Step300EntryFv_Incoming : rowsOwned s2Step300EntryFvBefore [s2Step300EntryFvRow,s2Step300EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300EntryFRow,s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow] 2 s2Step300EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300EntryFv_Outgoing : rowsOwned s2Step300EntryGvAfter [s2Step300EntryFvOut,s2Step300EntryGvOut] :=
  hmrRows_owned_drop s2Step300EntryGvAfter [s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut] 2 s2Step300EntryBank_outgoingOwned

private theorem s2Step300EntryFv_distinct : (s2Step300EntryFvRow.sign::s2Step300EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300EntryFv_owned : (s2Step300EntryFvRow.sign::s2Step300EntryFvRow.payload).toFinset⊆s2Step300EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EntryFv_reserved : s2Step300EntryFvBefore.reserve s2Step300EntryFvFresh.toFinset=some s2Step300EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step300EntryFvFresh,arenaWires]
  · norm_num [s2Step300EntryFvBefore,s2Step300EntryFBefore,s2Step300EntryFvFresh,arenaWires]
  · simp only [s2Step300EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step300EntryFv_checked : planRowResizeLog s2Step300EntryFvBefore s2Step300EntryFvRow 165 s2Step300EntryFvFresh=
    some (s2Step300EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩,growRow 770 s2Step300EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step300EntryFvBefore s2Step300EntryFvAfter s2Step300EntryFvRow 165 s2Step300EntryFvFresh
    s2Step300EntryFv_distinct s2Step300EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step300EntryFvRow.payload++s2Step300EntryFvFresh) s2Step300EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step300EntryGAfter : Arena := s2Step300EntryFBefore

private def s2Step300EntryGBefore : Arena := s2Step300EntryFBefore

private theorem s2Step300EntryG_Incoming : rowsOwned s2Step300EntryGBefore [s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300EntryFRow,s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow] 1 s2Step300EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300EntryG_Outgoing : rowsOwned s2Step300EntryGvAfter [s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut] :=
  hmrRows_owned_drop s2Step300EntryGvAfter [s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut] 1 s2Step300EntryBank_outgoingOwned

private theorem s2Step300EntryG_distinct : (s2Step300EntryGRow.sign::s2Step300EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300EntryG_owned : (s2Step300EntryGRow.sign::s2Step300EntryGRow.payload).toFinset⊆s2Step300EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EntryG_reserved : s2Step300EntryGBefore.reserve s2Step300EntryGFresh.toFinset=some s2Step300EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step300EntryGFresh,arenaWires]
  · norm_num [s2Step300EntryGBefore,s2Step300EntryFBefore,s2Step300EntryGFresh,arenaWires]
  · simp only [s2Step300EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step300EntryG_checked : planRowResizeLog s2Step300EntryGBefore s2Step300EntryGRow 121 s2Step300EntryGFresh=
    some (s2Step300EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩,growRow 769 s2Step300EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step300EntryGBefore s2Step300EntryGAfter s2Step300EntryGRow 121 s2Step300EntryGFresh
    s2Step300EntryG_distinct s2Step300EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300EntryG_reserved
  have rowEq : WindowRow.mk (s2Step300EntryGRow.payload++s2Step300EntryGFresh) s2Step300EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step300EntryGvBefore : Arena := s2Step300EntryFBefore

private theorem s2Step300EntryGv_Incoming : rowsOwned s2Step300EntryGvBefore [s2Step300EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300EntryFRow,s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow] 3 s2Step300EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300EntryGv_Outgoing : rowsOwned s2Step300EntryGvAfter [s2Step300EntryGvOut] :=
  hmrRows_owned_drop s2Step300EntryGvAfter [s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut] 3 s2Step300EntryBank_outgoingOwned

private theorem s2Step300EntryGv_distinct : (s2Step300EntryGvRow.sign::s2Step300EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300EntryGv_owned : (s2Step300EntryGvRow.sign::s2Step300EntryGvRow.payload).toFinset⊆s2Step300EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300EntryGv_reserved : s2Step300EntryGvBefore.reserve s2Step300EntryGvFresh.toFinset=some s2Step300EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step300EntryGvFresh,arenaWires]
  · norm_num [s2Step300EntryGvBefore,s2Step300EntryFBefore,s2Step300EntryGvFresh,arenaWires]
  · simp only [s2Step300EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step300EntryGv_checked : planRowResizeLog s2Step300EntryGvBefore s2Step300EntryGvRow 165 s2Step300EntryGvFresh=
    some (s2Step300EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩,growRow 771 s2Step300EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step300EntryGvBefore s2Step300EntryGvAfter s2Step300EntryGvRow 165 s2Step300EntryGvFresh
    s2Step300EntryGv_distinct s2Step300EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step300EntryGvRow.payload++s2Step300EntryGvFresh) s2Step300EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step300EntryBank_rows : planWindowRowsLog s2Step300EntryFBefore [(s2Step300EntryFRow,121),(s2Step300EntryGRow,121),(s2Step300EntryFvRow,165),(s2Step300EntryGvRow,165)] [s2Step300EntryFFresh,s2Step300EntryGFresh,s2Step300EntryFvFresh,s2Step300EntryGvFresh]=
    some (s2Step300EntryGvAfter,[s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut],(growRow 768 s2Step300EntryFFresh ++ (growRow 769 s2Step300EntryGFresh ++ (growRow 770 s2Step300EntryFvFresh ++ (growRow 771 s2Step300EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step300EntryGvAfter [] []=some (s2Step300EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step300EntryGvBefore s2Step300EntryGvAfter s2Step300EntryGvAfter
    s2Step300EntryGvRow s2Step300EntryGvOut 165 s2Step300EntryGvFresh [] [] []
    (growRow 771 s2Step300EntryGvFresh) ([]) s2Step300EntryGv_Incoming s2Step300EntryGv_checked h4 s2Step300EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step300EntryFvBefore s2Step300EntryFvAfter s2Step300EntryGvAfter
    s2Step300EntryFvRow s2Step300EntryFvOut 165 s2Step300EntryFvFresh [(s2Step300EntryGvRow,165)] [s2Step300EntryGvFresh] [s2Step300EntryGvOut]
    (growRow 770 s2Step300EntryFvFresh) ((growRow 771 s2Step300EntryGvFresh ++ [])) s2Step300EntryFv_Incoming s2Step300EntryFv_checked h3 s2Step300EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step300EntryGBefore s2Step300EntryGAfter s2Step300EntryGvAfter
    s2Step300EntryGRow s2Step300EntryGOut 121 s2Step300EntryGFresh [(s2Step300EntryFvRow,165),(s2Step300EntryGvRow,165)] [s2Step300EntryFvFresh,s2Step300EntryGvFresh] [s2Step300EntryFvOut,s2Step300EntryGvOut]
    (growRow 769 s2Step300EntryGFresh) ((growRow 770 s2Step300EntryFvFresh ++ (growRow 771 s2Step300EntryGvFresh ++ []))) s2Step300EntryG_Incoming s2Step300EntryG_checked h2 s2Step300EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step300EntryFBefore s2Step300EntryFAfter s2Step300EntryGvAfter
    s2Step300EntryFRow s2Step300EntryFOut 121 s2Step300EntryFFresh [(s2Step300EntryGRow,121),(s2Step300EntryFvRow,165),(s2Step300EntryGvRow,165)] [s2Step300EntryGFresh,s2Step300EntryFvFresh,s2Step300EntryGvFresh] [s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut]
    (growRow 768 s2Step300EntryFFresh) ((growRow 769 s2Step300EntryGFresh ++ (growRow 770 s2Step300EntryFvFresh ++ (growRow 771 s2Step300EntryGvFresh ++ [])))) s2Step300EntryF_Incoming s2Step300EntryF_checked h1 s2Step300EntryF_Outgoing
  exact h0

private theorem s2Step300EntryBank_checked : compileHmrBankResizeLog .entry s2Step300EntryFBefore ⟨s2Step300EntryFRow,s2Step300EntryGRow,s2Step300EntryFvRow,s2Step300EntryGvRow⟩ ⟨121,121,165,165⟩ [s2Step300EntryFFresh,s2Step300EntryGFresh,s2Step300EntryFvFresh,s2Step300EntryGvFresh]=
    some (s2Step300EntryGvAfter,⟨s2Step300EntryFOut,s2Step300EntryGOut,s2Step300EntryFvOut,s2Step300EntryGvOut⟩,(growRow 768 s2Step300EntryFFresh ++ (growRow 769 s2Step300EntryGFresh ++ (growRow 770 s2Step300EntryFvFresh ++ (growRow 771 s2Step300EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step300EntryBank_rows]
  rfl

private def s2Step300ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300ExitFBefore : Arena := s2Step300ExitGAfter

private def s2Step300ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 787],768⟩

private def s2Step300ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step300ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 797],769⟩

private def s2Step300ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 820],771⟩

private theorem s2Step300ExitBank_incomingDistinct : ([s2Step300ExitGRow,s2Step300ExitFRow,s2Step300ExitFvRow,s2Step300ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300ExitF_Incoming : rowsOwned s2Step300ExitFBefore [s2Step300ExitFRow,s2Step300ExitFvRow,s2Step300ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300ExitGRow,s2Step300ExitFRow,s2Step300ExitFvRow,s2Step300ExitGvRow] 1 s2Step300ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300ExitFBefore (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300ExitBank_outgoingOwned : rowsOwned s2Step300ExitGvAfter [s2Step300ExitGOut,s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step300ExitGvAfter (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300ExitF_Outgoing : rowsOwned s2Step300ExitGvAfter [s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut] :=
  hmrRows_owned_drop s2Step300ExitGvAfter [s2Step300ExitGOut,s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut] 1 s2Step300ExitBank_outgoingOwned

private theorem s2Step300ExitF_distinct : (s2Step300ExitFRow.sign::s2Step300ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300ExitF_owned : (s2Step300ExitFRow.sign::s2Step300ExitFRow.payload).toFinset⊆s2Step300ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300ExitFBefore (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300ExitF_retired : s2Step300ExitFBefore.retireSet s2Step300ExitFExtra.toFinset=s2Step300ExitFAfter := by
  unfold Arena.retireSet s2Step300ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step300ExitFBefore,s2Step300ExitGAfter,s2Step300ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step300ExitF_checked : planRowResizeLog s2Step300ExitFBefore s2Step300ExitFRow 121 []=
    some (s2Step300ExitFAfter,s2Step300ExitFOut,shrinkRow 768 s2Step300ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step300ExitFBefore s2Step300ExitFRow 121 s2Step300ExitF_distinct s2Step300ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step300ExitFRow.payload.take 121) s2Step300ExitFRow.sign=s2Step300ExitFOut := by decide +kernel
  have hi : s2Step300ExitFRow.payload.drop 121=s2Step300ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step300ExitF_retired] at result
  exact result

private def s2Step300ExitFvAfter : Arena := s2Step300ExitFAfter

private def s2Step300ExitFvBefore : Arena := s2Step300ExitFAfter

private theorem s2Step300ExitFv_Incoming : rowsOwned s2Step300ExitFvBefore [s2Step300ExitFvRow,s2Step300ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300ExitGRow,s2Step300ExitFRow,s2Step300ExitFvRow,s2Step300ExitGvRow] 2 s2Step300ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300ExitFvBefore (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300ExitFv_Outgoing : rowsOwned s2Step300ExitGvAfter [s2Step300ExitFvOut,s2Step300ExitGvOut] :=
  hmrRows_owned_drop s2Step300ExitGvAfter [s2Step300ExitGOut,s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut] 2 s2Step300ExitBank_outgoingOwned

private theorem s2Step300ExitFv_distinct : (s2Step300ExitFvRow.sign::s2Step300ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300ExitFv_owned : (s2Step300ExitFvRow.sign::s2Step300ExitFvRow.payload).toFinset⊆s2Step300ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300ExitFvBefore (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300ExitFv_reserved : s2Step300ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step300ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step300ExitFv_checked : planRowResizeLog s2Step300ExitFvBefore s2Step300ExitFvRow 166 []=
    some (s2Step300ExitFvAfter,s2Step300ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step300ExitFvBefore s2Step300ExitFvAfter s2Step300ExitFvRow 166 []
    s2Step300ExitFv_distinct s2Step300ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step300ExitFvRow.payload++[]) s2Step300ExitFvRow.sign=s2Step300ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step300ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step300ExitG_Incoming : rowsOwned s2Step300ExitGBefore [s2Step300ExitGRow,s2Step300ExitFRow,s2Step300ExitFvRow,s2Step300ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300ExitGRow,s2Step300ExitFRow,s2Step300ExitFvRow,s2Step300ExitGvRow] 0 s2Step300ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300ExitG_Outgoing : rowsOwned s2Step300ExitGvAfter [s2Step300ExitGOut,s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut] :=
  hmrRows_owned_drop s2Step300ExitGvAfter [s2Step300ExitGOut,s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut] 0 s2Step300ExitBank_outgoingOwned

private theorem s2Step300ExitG_distinct : (s2Step300ExitGRow.sign::s2Step300ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300ExitG_owned : (s2Step300ExitGRow.sign::s2Step300ExitGRow.payload).toFinset⊆s2Step300ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300ExitG_retired : s2Step300ExitGBefore.retireSet s2Step300ExitGExtra.toFinset=s2Step300ExitGAfter := by
  unfold Arena.retireSet s2Step300ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step300ExitGBefore,s2Step300ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step300ExitG_checked : planRowResizeLog s2Step300ExitGBefore s2Step300ExitGRow 120 []=
    some (s2Step300ExitGAfter,s2Step300ExitGOut,shrinkRow 769 s2Step300ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step300ExitGBefore s2Step300ExitGRow 120 s2Step300ExitG_distinct s2Step300ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step300ExitGRow.payload.take 120) s2Step300ExitGRow.sign=s2Step300ExitGOut := by decide +kernel
  have hi : s2Step300ExitGRow.payload.drop 120=s2Step300ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step300ExitG_retired] at result
  exact result

private def s2Step300ExitGvBefore : Arena := s2Step300ExitFAfter

private theorem s2Step300ExitGv_Incoming : rowsOwned s2Step300ExitGvBefore [s2Step300ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300ExitGRow,s2Step300ExitFRow,s2Step300ExitFvRow,s2Step300ExitGvRow] 3 s2Step300ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300ExitGvBefore (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300ExitGv_Outgoing : rowsOwned s2Step300ExitGvAfter [s2Step300ExitGvOut] :=
  hmrRows_owned_drop s2Step300ExitGvAfter [s2Step300ExitGOut,s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut] 3 s2Step300ExitBank_outgoingOwned

private theorem s2Step300ExitGv_distinct : (s2Step300ExitGvRow.sign::s2Step300ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300ExitGv_owned : (s2Step300ExitGvRow.sign::s2Step300ExitGvRow.payload).toFinset⊆s2Step300ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300ExitGvBefore (fun q => (0≤q ∧ q<120) ∨ (121≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300ExitGv_retired : s2Step300ExitGvBefore.retireSet s2Step300ExitGvExtra.toFinset=s2Step300ExitGvAfter := by
  unfold Arena.retireSet s2Step300ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step300ExitGvBefore,s2Step300ExitFAfter,s2Step300ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step300ExitGv_checked : planRowResizeLog s2Step300ExitGvBefore s2Step300ExitGvRow 165 []=
    some (s2Step300ExitGvAfter,s2Step300ExitGvOut,shrinkRow 771 s2Step300ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step300ExitGvBefore s2Step300ExitGvRow 165 s2Step300ExitGv_distinct s2Step300ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step300ExitGvRow.payload.take 165) s2Step300ExitGvRow.sign=s2Step300ExitGvOut := by decide +kernel
  have hi : s2Step300ExitGvRow.payload.drop 165=s2Step300ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step300ExitGv_retired] at result
  exact result

private theorem s2Step300ExitBank_rows : planWindowRowsLog s2Step300ExitGBefore [(s2Step300ExitGRow,120),(s2Step300ExitFRow,121),(s2Step300ExitFvRow,166),(s2Step300ExitGvRow,165)] [[],[],[],[]]=
    some (s2Step300ExitGvAfter,[s2Step300ExitGOut,s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut],(shrinkRow 769 s2Step300ExitGExtra ++ (shrinkRow 768 s2Step300ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step300ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step300ExitGvAfter [] []=some (s2Step300ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step300ExitGvBefore s2Step300ExitGvAfter s2Step300ExitGvAfter
    s2Step300ExitGvRow s2Step300ExitGvOut 165 [] [] [] []
    (shrinkRow 771 s2Step300ExitGvExtra) ([]) s2Step300ExitGv_Incoming s2Step300ExitGv_checked h4 s2Step300ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step300ExitFvBefore s2Step300ExitFvAfter s2Step300ExitGvAfter
    s2Step300ExitFvRow s2Step300ExitFvOut 166 [] [(s2Step300ExitGvRow,165)] [[]] [s2Step300ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step300ExitGvExtra ++ [])) s2Step300ExitFv_Incoming s2Step300ExitFv_checked h3 s2Step300ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step300ExitFBefore s2Step300ExitFAfter s2Step300ExitGvAfter
    s2Step300ExitFRow s2Step300ExitFOut 121 [] [(s2Step300ExitFvRow,166),(s2Step300ExitGvRow,165)] [[],[]] [s2Step300ExitFvOut,s2Step300ExitGvOut]
    (shrinkRow 768 s2Step300ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step300ExitGvExtra ++ []))) s2Step300ExitF_Incoming s2Step300ExitF_checked h2 s2Step300ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step300ExitGBefore s2Step300ExitGAfter s2Step300ExitGvAfter
    s2Step300ExitGRow s2Step300ExitGOut 120 [] [(s2Step300ExitFRow,121),(s2Step300ExitFvRow,166),(s2Step300ExitGvRow,165)] [[],[],[]] [s2Step300ExitFOut,s2Step300ExitFvOut,s2Step300ExitGvOut]
    (shrinkRow 769 s2Step300ExitGExtra) ((shrinkRow 768 s2Step300ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step300ExitGvExtra ++ [])))) s2Step300ExitG_Incoming s2Step300ExitG_checked h1 s2Step300ExitG_Outgoing
  exact h0

private theorem s2Step300ExitBank_checked : compileHmrBankResizeLog .exit s2Step300ExitGBefore ⟨s2Step300ExitFRow,s2Step300ExitGRow,s2Step300ExitFvRow,s2Step300ExitGvRow⟩ ⟨121,120,166,165⟩ [[],[],[],[]]=
    some (s2Step300ExitGvAfter,⟨s2Step300ExitFOut,s2Step300ExitGOut,s2Step300ExitFvOut,s2Step300ExitGvOut⟩,(shrinkRow 769 s2Step300ExitGExtra ++ (shrinkRow 768 s2Step300ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step300ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step300ExitBank_rows]
  rfl

private theorem s2Step300Add0_apart : Disjoint s2Step300Add0Arena.live s2Step300Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step300Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300Add0_card : s2Step300Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step300Add0_borrowed : s2Step300Add0Arena.checkBorrow (hmrHybridCount s2Step300Add0Arena s2Step300Add0B.length) s2Step300Add0Work=some s2Step300Add0During := by
  have len : s2Step300Add0Work.length=hmrHybridCount s2Step300Add0Arena s2Step300Add0B.length := by
    rw [hmrHybridCount,s2Step300Add0_card]
    decide +kernel
  have nd : s2Step300Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step300Add0Arena s2Step300Add0During s2Step300Add0Work.toFinset s2Step300Add0_bounded s2Step300Add0_apart rfl

private theorem s2Step300Add0_distinct : (806::805::811::(s2Step300Add0A++s2Step300Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300Add0_owned : (806::805::811::(s2Step300Add0A++s2Step300Add0B)).toFinset⊆s2Step300Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step300Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300Add0_checked : compileHmrHybridCinLog s2Step300Add0Arena 805 806 811 s2Step300Add0A s2Step300Add0B s2Step300Add0Work=some s2Step300Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step300Add0Arena s2Step300Add0During 805 806 811 s2Step300Add0A s2Step300Add0B s2Step300Add0Work
    (by decide +kernel) (by decide +kernel) s2Step300Add0_distinct
    (fun q hq => s2Step300Add0_owned (List.mem_toFinset.mpr hq)) s2Step300Add0_borrowed

private theorem s2Step300Add1_apart : Disjoint s2Step300Add1Arena.live s2Step300Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step300Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300Add1_card : s2Step300Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step300Add1_borrowed : s2Step300Add1Arena.checkBorrow (hmrHybridCount s2Step300Add1Arena s2Step300Add1B.length) s2Step300Add1Work=some s2Step300Add1During := by
  have len : s2Step300Add1Work.length=hmrHybridCount s2Step300Add1Arena s2Step300Add1B.length := by
    rw [hmrHybridCount,s2Step300Add1_card]
    decide +kernel
  have nd : s2Step300Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step300Add1Arena s2Step300Add1During s2Step300Add1Work.toFinset s2Step300Add1_bounded s2Step300Add1_apart rfl

private theorem s2Step300Add1_distinct : (806::805::811::(s2Step300Add1A++s2Step300Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300Add1_owned : (806::805::811::(s2Step300Add1A++s2Step300Add1B)).toFinset⊆s2Step300Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step300Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300Add1_checked : compileHmrHybridCinLog s2Step300Add1Arena 805 806 811 s2Step300Add1A s2Step300Add1B s2Step300Add1Work=some s2Step300Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step300Add1Arena s2Step300Add1During 805 806 811 s2Step300Add1A s2Step300Add1B s2Step300Add1Work
    (by decide +kernel) (by decide +kernel) s2Step300Add1_distinct
    (fun q hq => s2Step300Add1_owned (List.mem_toFinset.mpr hq)) s2Step300Add1_borrowed

private theorem s2Step300F4_apart : Disjoint (s2Step300Add0A++s2Step300Add0B).toFinset (s2Step300Add1A++s2Step300Add1B).toFinset := by
  have nd : ((s2Step300Add0A++s2Step300Add0B)++(s2Step300Add1A++s2Step300Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step300F4_carry : s2Step300F4FlagArena.checkBorrow 1 [811]=some s2Step300Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step300F4FlagArena,s2Step300HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step300F4FlagArena,s2Step300HeadFvAfter,s2Step300Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step300F4_distinct : (847::805::806::811::((s2Step300Add0A++s2Step300Add1A)++(s2Step300Add0B++s2Step300Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300F4_flag : s2Step300HeadFvAfter.checkBorrow 1 [806]=some s2Step300F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step300HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step300F4_owned : (847::805::((s2Step300Add0A++s2Step300Add1A)++(s2Step300Add0B++s2Step300Add1B))).toFinset⊆s2Step300HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step300HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300F4_checked : compileHmrHybridF4Log s2Step300HeadFvAfter 847 805 s2Step300Add0A s2Step300Add0B s2Step300Add1A s2Step300Add1B [806] [811] s2Step300Add0Work s2Step300Add1Work=some s2Step300F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step300HeadFvAfter s2Step300F4FlagArena s2Step300Add0Arena s2Step300Add0During s2Step300Add1During 847 805
    s2Step300Add0A s2Step300Add0B s2Step300Add1A s2Step300Add1B [806] [811] s2Step300Add0Work s2Step300Add1Work
    (fun q hq => s2Step300F4_owned (List.mem_toFinset.mpr hq)) s2Step300F4_flag s2Step300F4_carry
    s2Step300F4_distinct s2Step300F4_apart s2Step300Add0_checked s2Step300Add1_checked

private theorem s2Step300Front_branch : s2Step300FrontSigmaArena.checkBorrow 1 [805]=some s2Step300HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step300FrontSigmaArena,s2Step300EntryGvAfter,s2Step300EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step300FrontSigmaArena,s2Step300EntryGvAfter,s2Step300EntryFBefore,s2Step300HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step300Front_entry : HmrFrontEntryValid s2Step300EntryFBefore s2Step300FrontBank 121 165 ⟨121,120,166,165⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step300FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step300EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step300EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step300FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step300Front_sigma : s2Step300EntryGvAfter.checkBorrow 1 [847]=some s2Step300FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step300EntryGvAfter,s2Step300EntryFBefore,arenaWires]
  · rfl

private def s2Step300HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300HeadFBefore : Arena := s2Step300HeadGAfter

private def s2Step300HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩

private def s2Step300HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step300HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step300HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩

private theorem s2Step300HeadBank_incomingDistinct : ([s2Step300HeadGRow,s2Step300HeadFRow,s2Step300HeadGvRow,s2Step300HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300HeadF_Incoming : rowsOwned s2Step300HeadFBefore [s2Step300HeadFRow,s2Step300HeadGvRow,s2Step300HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300HeadGRow,s2Step300HeadFRow,s2Step300HeadGvRow,s2Step300HeadFvRow] 1 s2Step300HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300HeadBank_outgoingOwned : rowsOwned s2Step300HeadFvAfter [s2Step300HeadGOut,s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step300HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300HeadF_Outgoing : rowsOwned s2Step300HeadFvAfter [s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut] :=
  hmrRows_owned_drop s2Step300HeadFvAfter [s2Step300HeadGOut,s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut] 1 s2Step300HeadBank_outgoingOwned

private theorem s2Step300HeadF_distinct : (s2Step300HeadFRow.sign::s2Step300HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300HeadF_owned : (s2Step300HeadFRow.sign::s2Step300HeadFRow.payload).toFinset⊆s2Step300HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300HeadF_reserved : s2Step300HeadFBefore.reserve s2Step300HeadFFresh.toFinset=some s2Step300HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step300HeadFFresh,arenaWires]
  · norm_num [s2Step300HeadFBefore,s2Step300HeadGAfter,s2Step300HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step300HeadFAfter,s2Step300HeadFBefore,s2Step300HeadGAfter,s2Step300HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step300HeadF_checked : planRowResizeLog s2Step300HeadFBefore s2Step300HeadFRow 122 s2Step300HeadFFresh=
    some (s2Step300HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 787],768⟩,growRow 768 s2Step300HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step300HeadFBefore s2Step300HeadFAfter s2Step300HeadFRow 122 s2Step300HeadFFresh
    s2Step300HeadF_distinct s2Step300HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300HeadF_reserved
  have rowEq : WindowRow.mk (s2Step300HeadFRow.payload++s2Step300HeadFFresh) s2Step300HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step300HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step300HeadFvBefore : Arena := s2Step300HeadGvAfter

private theorem s2Step300HeadFv_Incoming : rowsOwned s2Step300HeadFvBefore [s2Step300HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300HeadGRow,s2Step300HeadFRow,s2Step300HeadGvRow,s2Step300HeadFvRow] 3 s2Step300HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300HeadFv_Outgoing : rowsOwned s2Step300HeadFvAfter [s2Step300HeadFvOut] :=
  hmrRows_owned_drop s2Step300HeadFvAfter [s2Step300HeadGOut,s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut] 3 s2Step300HeadBank_outgoingOwned

private theorem s2Step300HeadFv_distinct : (s2Step300HeadFvRow.sign::s2Step300HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300HeadFv_owned : (s2Step300HeadFvRow.sign::s2Step300HeadFvRow.payload).toFinset⊆s2Step300HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300HeadFv_reserved : s2Step300HeadFvBefore.reserve s2Step300HeadFvFresh.toFinset=some s2Step300HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step300HeadFvFresh,arenaWires]
  · norm_num [s2Step300HeadFvBefore,s2Step300HeadGvAfter,s2Step300HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step300HeadFvAfter,s2Step300HeadFvBefore,s2Step300HeadGvAfter,s2Step300HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step300HeadFv_checked : planRowResizeLog s2Step300HeadFvBefore s2Step300HeadFvRow 166 s2Step300HeadFvFresh=
    some (s2Step300HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩,growRow 770 s2Step300HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step300HeadFvBefore s2Step300HeadFvAfter s2Step300HeadFvRow 166 s2Step300HeadFvFresh
    s2Step300HeadFv_distinct s2Step300HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step300HeadFvRow.payload++s2Step300HeadFvFresh) s2Step300HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step300HeadG_Incoming : rowsOwned s2Step300HeadGBefore [s2Step300HeadGRow,s2Step300HeadFRow,s2Step300HeadGvRow,s2Step300HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300HeadGRow,s2Step300HeadFRow,s2Step300HeadGvRow,s2Step300HeadFvRow] 0 s2Step300HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300HeadG_Outgoing : rowsOwned s2Step300HeadFvAfter [s2Step300HeadGOut,s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut] :=
  hmrRows_owned_drop s2Step300HeadFvAfter [s2Step300HeadGOut,s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut] 0 s2Step300HeadBank_outgoingOwned

private theorem s2Step300HeadG_distinct : (s2Step300HeadGRow.sign::s2Step300HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300HeadG_owned : (s2Step300HeadGRow.sign::s2Step300HeadGRow.payload).toFinset⊆s2Step300HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300HeadG_reserved : s2Step300HeadGBefore.reserve s2Step300HeadGFresh.toFinset=some s2Step300HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step300HeadGFresh,arenaWires]
  · norm_num [s2Step300HeadGBefore,s2Step300HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step300HeadGAfter,s2Step300HeadGBefore,s2Step300HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step300HeadG_checked : planRowResizeLog s2Step300HeadGBefore s2Step300HeadGRow 122 s2Step300HeadGFresh=
    some (s2Step300HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 797],769⟩,growRow 769 s2Step300HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step300HeadGBefore s2Step300HeadGAfter s2Step300HeadGRow 122 s2Step300HeadGFresh
    s2Step300HeadG_distinct s2Step300HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300HeadG_reserved
  have rowEq : WindowRow.mk (s2Step300HeadGRow.payload++s2Step300HeadGFresh) s2Step300HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step300HeadGvBefore : Arena := s2Step300HeadFAfter

private theorem s2Step300HeadGv_Incoming : rowsOwned s2Step300HeadGvBefore [s2Step300HeadGvRow,s2Step300HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step300HeadGRow,s2Step300HeadFRow,s2Step300HeadGvRow,s2Step300HeadFvRow] 2 s2Step300HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step300HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step300HeadGv_Outgoing : rowsOwned s2Step300HeadFvAfter [s2Step300HeadGvOut,s2Step300HeadFvOut] :=
  hmrRows_owned_drop s2Step300HeadFvAfter [s2Step300HeadGOut,s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut] 2 s2Step300HeadBank_outgoingOwned

private theorem s2Step300HeadGv_distinct : (s2Step300HeadGvRow.sign::s2Step300HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step300HeadGv_owned : (s2Step300HeadGvRow.sign::s2Step300HeadGvRow.payload).toFinset⊆s2Step300HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step300HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step300HeadGv_reserved : s2Step300HeadGvBefore.reserve s2Step300HeadGvFresh.toFinset=some s2Step300HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step300HeadGvFresh,arenaWires]
  · norm_num [s2Step300HeadGvBefore,s2Step300HeadFAfter,s2Step300HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step300HeadGvAfter,s2Step300HeadGvBefore,s2Step300HeadFAfter,s2Step300HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step300HeadGv_checked : planRowResizeLog s2Step300HeadGvBefore s2Step300HeadGvRow 166 s2Step300HeadGvFresh=
    some (s2Step300HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 820],771⟩,growRow 771 s2Step300HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step300HeadGvBefore s2Step300HeadGvAfter s2Step300HeadGvRow 166 s2Step300HeadGvFresh
    s2Step300HeadGv_distinct s2Step300HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step300HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step300HeadGvRow.payload++s2Step300HeadGvFresh) s2Step300HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 820],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step300HeadBank_rows : planWindowRowsLog s2Step300HeadGBefore [(s2Step300HeadGRow,122),(s2Step300HeadFRow,122),(s2Step300HeadGvRow,166),(s2Step300HeadFvRow,166)] [s2Step300HeadGFresh,s2Step300HeadFFresh,s2Step300HeadGvFresh,s2Step300HeadFvFresh]=
    some (s2Step300HeadFvAfter,[s2Step300HeadGOut,s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut],(growRow 769 s2Step300HeadGFresh ++ (growRow 768 s2Step300HeadFFresh ++ (growRow 771 s2Step300HeadGvFresh ++ (growRow 770 s2Step300HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step300HeadFvAfter [] []=some (s2Step300HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step300HeadFvBefore s2Step300HeadFvAfter s2Step300HeadFvAfter
    s2Step300HeadFvRow s2Step300HeadFvOut 166 s2Step300HeadFvFresh [] [] []
    (growRow 770 s2Step300HeadFvFresh) ([]) s2Step300HeadFv_Incoming s2Step300HeadFv_checked h4 s2Step300HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step300HeadGvBefore s2Step300HeadGvAfter s2Step300HeadFvAfter
    s2Step300HeadGvRow s2Step300HeadGvOut 166 s2Step300HeadGvFresh [(s2Step300HeadFvRow,166)] [s2Step300HeadFvFresh] [s2Step300HeadFvOut]
    (growRow 771 s2Step300HeadGvFresh) ((growRow 770 s2Step300HeadFvFresh ++ [])) s2Step300HeadGv_Incoming s2Step300HeadGv_checked h3 s2Step300HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step300HeadFBefore s2Step300HeadFAfter s2Step300HeadFvAfter
    s2Step300HeadFRow s2Step300HeadFOut 122 s2Step300HeadFFresh [(s2Step300HeadGvRow,166),(s2Step300HeadFvRow,166)] [s2Step300HeadGvFresh,s2Step300HeadFvFresh] [s2Step300HeadGvOut,s2Step300HeadFvOut]
    (growRow 768 s2Step300HeadFFresh) ((growRow 771 s2Step300HeadGvFresh ++ (growRow 770 s2Step300HeadFvFresh ++ []))) s2Step300HeadF_Incoming s2Step300HeadF_checked h2 s2Step300HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step300HeadGBefore s2Step300HeadGAfter s2Step300HeadFvAfter
    s2Step300HeadGRow s2Step300HeadGOut 122 s2Step300HeadGFresh [(s2Step300HeadFRow,122),(s2Step300HeadGvRow,166),(s2Step300HeadFvRow,166)] [s2Step300HeadFFresh,s2Step300HeadGvFresh,s2Step300HeadFvFresh] [s2Step300HeadFOut,s2Step300HeadGvOut,s2Step300HeadFvOut]
    (growRow 769 s2Step300HeadGFresh) ((growRow 768 s2Step300HeadFFresh ++ (growRow 771 s2Step300HeadGvFresh ++ (growRow 770 s2Step300HeadFvFresh ++ [])))) s2Step300HeadG_Incoming s2Step300HeadG_checked h1 s2Step300HeadG_Outgoing
  exact h0

private theorem s2Step300HeadBank_checked : compileHmrBankResizeLog .headroom s2Step300HeadGBefore ⟨s2Step300HeadFRow,s2Step300HeadGRow,s2Step300HeadFvRow,s2Step300HeadGvRow⟩ ⟨122,122,166,166⟩ [s2Step300HeadGFresh,s2Step300HeadFFresh,s2Step300HeadGvFresh,s2Step300HeadFvFresh]=
    some (s2Step300HeadFvAfter,⟨s2Step300HeadFOut,s2Step300HeadGOut,s2Step300HeadFvOut,s2Step300HeadGvOut⟩,(growRow 769 s2Step300HeadGFresh ++ (growRow 768 s2Step300HeadFFresh ++ (growRow 771 s2Step300HeadGvFresh ++ (growRow 770 s2Step300HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step300HeadBank_rows]
  rfl

private theorem s2Step300Front_checked : compileHmrSourceFrontLog s2Step300EntryFBefore s2Step300FrontBank 121 165 ⟨121,120,166,165⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step300FrontLog=some s2Step300FrontPlan := by
  have pairEq : s2Step300FrontPair=⟨s2Step300HeadFRow,s2Step300HeadGRow,s2Step300HeadFvRow,s2Step300HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step300FrontHead=⟨s2Step300ExitFRow,s2Step300ExitGRow,s2Step300ExitFvRow,s2Step300ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step300Add0A=s2Step300FrontHead.f.wires := by decide +kernel
  have gEq : s2Step300Add0B=s2Step300FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step300Add1A=s2Step300FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step300Add1B=s2Step300FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step300EntryFBefore s2Step300FrontBank 121 165 ⟨121,120,166,165⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step300FrontLog s2Step300FrontPlan
  · exact s2Step300Front_entry
  · exact s2Step300EntryBank_checked
  · exact s2Step300Front_sigma
  · rfl
  · exact s2Step300Front_branch
  · rfl
  · simpa only [s2Step300FrontPlan,pairEq] using s2Step300HeadBank_checked
  · simpa only [s2Step300FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step300F4_checked
  · exact s2Step300Counter_checked
  · rfl
  · simpa only [s2Step300FrontPlan,headEq] using s2Step300ExitBank_checked

private theorem s2Step300Complete_explicit_checked : compileHmrEarlyStepLog s2Step300EntryFBefore s2Step300FrontBank 121 165 ⟨121,120,166,165⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step300CompleteLog=some s2Step300CompletePlan := by
  let Q := s2Step300EarlyControlPlan
  have hq := s2Step300EarlyControl_plan_checked
  have fv1 : s2Step300CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step300CompleteOut.fv.payload[2]?.getD s2Step300CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step300CompleteOut.fv.payload[3]?.getD s2Step300CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step300CompleteOut.fv.payload[4]?.getD s2Step300CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step300EntryFBefore s2Step300EarlyControlArena s2Step300FrontBank 121 165 ⟨121,120,166,165⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step300CompleteLog s2Step300FrontPlan Q
    s2Step300Front_checked s2Step300Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step300Complete_owned s2Step300Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step300EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 847 s2Step300CompleteOut.fv.second (s2Step300CompleteOut.fv.payload[2]?.getD s2Step300CompleteOut.fv.sign) (s2Step300CompleteOut.fv.payload[3]?.getD s2Step300CompleteOut.fv.sign) (s2Step300CompleteOut.fv.payload[4]?.getD s2Step300CompleteOut.fv.sign) 805 55 s2Step300EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep300Arena : Arena := s2Step300EntryFBefore
def s2PrivateStep300Bank : WindowBank := s2Step300FrontBank
def s2PrivateStep300Spec : HmrSourceWalkStepLog := ⟨121,165,⟨121,120,166,165⟩,55,.early s2Step300CompleteLog⟩
def s2PrivateStep300Plan : HmrSourceStepPlan := .early s2Step300CompletePlan
theorem s2PrivateStep300_source : s2PrivateStep300Spec=s2ObservedLogs288[12] := rfl
theorem s2PrivateStep300_checked : compileHmrSourceStepLog s2PrivateStep300Arena s2PrivateStep300Bank
    s2PrivateStep300Spec.fgWidth s2PrivateStep300Spec.vWidth s2PrivateStep300Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 300 s2PrivateStep300Spec.need none s2PrivateStep300Spec.log=some s2PrivateStep300Plan := by
  change compileHmrSourceStepLog s2Step300EntryFBefore s2Step300FrontBank 121 165 ⟨121,120,166,165⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 300 55 none (.early s2Step300CompleteLog)=some (.early s2Step300CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 300<498)]
  rw [s2Step300Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
