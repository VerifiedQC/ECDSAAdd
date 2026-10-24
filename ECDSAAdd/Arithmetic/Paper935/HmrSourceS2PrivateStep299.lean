import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep297
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

private def s2Step299CompleteMoves : List (Wire × Wire) := [(797,633)]

private def s2Step299EarlyControlLog : HmrEarlyControlLog := ⟨[797, 787, 820, 783, 806],[811],[830],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step299FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [806], [], [780]],[[811], [783], [787], [820]],[[], [], [], []]⟩,[805],[847],[830],[800],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step299CompleteLog : HmrEarlyStepLog := ⟨s2Step299FrontLog,s2Step299CompleteMoves,s2Step299EarlyControlLog⟩

private def s2Step299ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632],768⟩

private def s2Step299ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step299ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step299ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩

private def s2Step299FrontOut : WindowBank := ⟨s2Step299ExitFOut,s2Step299ExitGOut,s2Step299ExitFvOut,s2Step299ExitGvOut⟩

private def s2Step299CompleteOut : WindowBank := s2Step299FrontOut.repacked s2Step299CompleteMoves

private def s2Step299EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step299EarlyControlPositiveArena,[811],s2Step299EarlyControlEqualityArena,[830],⟨⟨805,false⟩,[⟨⟨811,false⟩,830⟩]⟩⟩

private def s2Step299EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,797⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,820⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,806⟩]⟩

private def s2Step299EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step299EarlyControlZeroArena,s2Step299EarlyControlZeroPlan,s2Step299EarlyControlClassPlan,s2Step299EarlyControlFlagArena,s2Step299EarlyControlFittedArena,s2Step299EarlyControlHistoryArena,s2Step299EarlyControlSigmaArena,s2Step299EarlyControlOutputArena,s2Step299EarlyControlLog⟩

private def s2Step299CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step299Counter_bounded : s2Step299CounterWork.toFinset⊆arenaWires := by norm_num [s2Step299CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step299HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299CounterDuring : Arena := ⟨s2Step299HeadFvAfter.live∪s2Step299CounterWork.toFinset,Finset.union_subset s2Step299HeadFvAfter.bounded s2Step299Counter_bounded⟩

private def s2Step299EntryFFresh : List Wire := []

private def s2Step299EntryFvFresh : List Wire := []

private def s2Step299EntryGFresh : List Wire := [806]

private def s2Step299EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EntryGvFresh : List Wire := [780]

private def s2Step299ExitFExtra : List Wire := [633, 783]

private def s2Step299ExitFvExtra : List Wire := [820]

private def s2Step299ExitGExtra : List Wire := [806, 811]

private def s2Step299ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<633) ∨ (634≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299ExitGvExtra : List Wire := [787]

private def s2Step299Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step299Add0_bounded : s2Step299Add0Work.toFinset⊆arenaWires := by
  have h : s2Step299Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step299Add0During : Arena := ⟨s2Step299Add0Arena.live∪s2Step299Add0Work.toFinset,Finset.union_subset s2Step299Add0Arena.bounded s2Step299Add0_bounded⟩

private def s2Step299Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step299Add1_bounded : s2Step299Add1Work.toFinset⊆arenaWires := by
  have h : s2Step299Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step299Add1During : Arena := ⟨s2Step299Add1Arena.live∪s2Step299Add1Work.toFinset,Finset.union_subset s2Step299Add1Arena.bounded s2Step299Add1_bounded⟩

private def s2Step299F4FlagArena : Arena := ⟨s2Step299HeadFvAfter.live∪{830},Finset.union_subset s2Step299HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step299F4Plan : HmrHybridF4Plan := ⟨s2Step299F4FlagArena,[830],s2Step299Add0Arena,[800],s2Step299Add0During,s2Step299Add0Work,s2Step299Add1During,s2Step299Add1Work⟩

private def s2Step299HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 783],768⟩

private def s2Step299HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 820],770⟩

private def s2Step299HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806, 811],769⟩

private def s2Step299HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 787],771⟩

private def s2Step299FrontHead : WindowBank := ⟨s2Step299HeadFOut,s2Step299HeadGOut,s2Step299HeadFvOut,s2Step299HeadGvOut⟩

private def s2Step299EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩

private def s2Step299EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step299EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806],769⟩

private def s2Step299EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩

private def s2Step299FrontPair : WindowBank := ⟨s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut⟩

private def s2Step299FrontSigmaArena : Arena := ⟨s2Step299EntryGvAfter.live∪{805},Finset.union_subset s2Step299EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step299HeadFFresh : List Wire := [783]

private def s2Step299HeadFvFresh : List Wire := [820]

private def s2Step299HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299HeadGFresh : List Wire := [811]

private def s2Step299HeadGvFresh : List Wire := [787]

private def s2Step299FrontPlan : HmrSourceFront := ⟨s2Step299EntryGvAfter,s2Step299FrontPair,(growRow 768 s2Step299EntryFFresh ++ (growRow 769 s2Step299EntryGFresh ++ (growRow 770 s2Step299EntryFvFresh ++ (growRow 771 s2Step299EntryGvFresh ++ [])))),s2Step299FrontSigmaArena,[805],s2Step299HeadGBefore,[847],
  s2Step299HeadFvAfter,s2Step299FrontHead,(growRow 769 s2Step299HeadGFresh ++ (growRow 768 s2Step299HeadFFresh ++ (growRow 771 s2Step299HeadGvFresh ++ (growRow 770 s2Step299HeadFvFresh ++ [])))),s2Step299F4Plan,s2Step299CounterDuring,s2Step299CounterWork,s2Step299ExitGvAfter,s2Step299FrontOut,(shrinkRow 769 s2Step299ExitGExtra ++ (shrinkRow 768 s2Step299ExitFExtra ++ (shrinkRow 770 s2Step299ExitFvExtra ++ (shrinkRow 771 s2Step299ExitGvExtra ++ []))))⟩

private def s2Step299CompletePlan : HmrEarlyStepPlan := ⟨s2Step299FrontPlan,s2Step299EarlyControlArena,s2Step299EarlyControlPlan,s2Step299CompleteMoves⟩

private theorem s2Step299Complete_apart : List.Disjoint (s2Step299CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [805, 847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step299CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[805, 847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step299Complete_owned : (s2Step299CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step299EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step299CompleteMoveArena : Arena := ⟨s2Step299ExitGvAfter.live∪{633},Finset.union_subset s2Step299ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step299Complete_repack : s2Step299ExitGvAfter.checkRepack s2Step299CompleteMoves=some s2Step299EarlyControlArena := by
  have owned : 797∈s2Step299ExitGvAfter.live := by norm_num [s2Step299ExitGvAfter,arenaWires]
  have reserve : s2Step299ExitGvAfter.reserve {633}=some s2Step299CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step299ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step299CompleteMoveArena.retireSet {797}=s2Step299EarlyControlArena := by
    unfold Arena.retireSet s2Step299EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step299CompleteMoveArena,s2Step299ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step299CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step299CompleteMoveArena.retireSet {797}).checkRepack []=some s2Step299EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step299EarlyControl_branchOwned : ([847] : List Wire).toFinset⊆s2Step299EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_branch : compileHmrBranchRetirement s2Step299EarlyControlSigmaArena 847=some s2Step299EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step299EarlyControl_branchOwned
  · ext q
    simp [s2Step299EarlyControlOutputArena,s2Step299EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step299EarlyControl_classEqualityBorrow : s2Step299EarlyControlPositiveArena.checkBorrow (([805, 811] : List Wire).length-1) s2Step299EarlyControlLog.classWork=some s2Step299EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step299EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step299EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step299EarlyControlEqualityArena,s2Step299EarlyControlPositiveArena,s2Step299EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step299EarlyControl_classEqualityOwned : ([805, 811] : List Wire).toFinset⊆s2Step299EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_classEquality : compileHmrEqualityLog s2Step299EarlyControlPositiveArena [805, 811] 0 s2Step299EarlyControlLog.classWork=some (s2Step299EarlyControlEqualityArena,s2Step299EarlyControlLog.classWork,s2Step299EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step299EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step299EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step299EarlyControl_classOwned : ([777, 806, 805] : List Wire).toFinset⊆s2Step299EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_positiveBorrow : s2Step299EarlyControlZeroArena.checkBorrow (1) s2Step299EarlyControlLog.positiveWork=some s2Step299EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step299EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step299EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step299EarlyControlPositiveArena,s2Step299EarlyControlZeroArena,s2Step299EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step299EarlyControl_class : compileHmrSourceClassLog s2Step299EarlyControlZeroArena false 777 s2Step299EarlyControlZeroPlan.top 0 805 s2Step299EarlyControlLog.positiveWork s2Step299EarlyControlLog.classWork=some s2Step299EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step299EarlyControlClassPlan s2Step299EarlyControlZeroArena false 777 s2Step299EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s2Step299EarlyControl_classOwned
  · exact s2Step299EarlyControl_positiveBorrow
  · exact s2Step299EarlyControl_classEquality

private theorem s2Step299EarlyControl_entryRecordOwned : ([847, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step299EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_entrySigmaOwned : ([805, 254] : List Wire).toFinset⊆s2Step299EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_fitBorrow : s2Step299EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step299EarlyControlLog.recordFresh=some s2Step299EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step299EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step299EarlyControlFlagArena (fun q => (0≤q ∧ q<908)) rfl
      decide +kernel
    · ext q
      simp [s2Step299EarlyControlFittedArena,s2Step299EarlyControlFlagArena,s2Step299EarlyControlLog,arenaWires]

private theorem s2Step299EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step299EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlFlagArena (fun q => (0≤q ∧ q<908)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_fit : compileHmrRecordGrowLog s2Step299EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step299EarlyControlLog.recordFresh=some s2Step299EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step299EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step299EarlyControl_fitBorrow

private theorem s2Step299EarlyControl_flagsBorrow : s2Step299EarlyControlEqualityArena.checkBorrow (6) s2Step299EarlyControlLog.flagWork=some s2Step299EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step299EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step299EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step299EarlyControlFlagArena,s2Step299EarlyControlEqualityArena,s2Step299EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step299EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step299EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_flags : compileHmrFlagsLog s2Step299EarlyControlClassPlan.equalityArena s2Step299EarlyControlClassPlan.equality.top 253 252 251 s2Step299EarlyControlLog.flagWork=some s2Step299EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step299EarlyControl_flagsOwned⟩
  · exact s2Step299EarlyControl_flagsBorrow

private theorem s2Step299EarlyControl_historyBorrow : s2Step299EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step299EarlyControlLog.recordFresh=some s2Step299EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step299EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step299EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step299EarlyControlHistoryArena,s2Step299EarlyControlArena,s2Step299EarlyControlLog,arenaWires]

private theorem s2Step299EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step299EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_history : compileHmrRecordGrowLog s2Step299EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step299EarlyControlLog.recordFresh=some s2Step299EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step299EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step299EarlyControl_historyBorrow

private theorem s2Step299EarlyControl_sigmaOwned : ([254, 805] : List Wire).toFinset⊆s2Step299EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s2Step299EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_sigmaRelease : s2Step299EarlyControlHistoryArena.release {805} (fun _ => false)=some s2Step299EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step299EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step299EarlyControlSigmaArena,s2Step299EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step299EarlyControl_sigma : compileHmrSigmaDropLog s2Step299EarlyControlHistoryArena false 0 0 254 805 []=some s2Step299EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step299EarlyControl_sigmaOwned⟩
  · exact s2Step299EarlyControl_sigmaRelease

private theorem s2Step299EarlyControl_zeroBorrow : s2Step299EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step299EarlyControlLog.zeroWork=some s2Step299EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step299EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step299EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step299EarlyControlZeroArena,s2Step299EarlyControlArena,s2Step299EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step299EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step299EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step299EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EarlyControl_zero : compileHmrEqualityLog s2Step299EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step299EarlyControlLog.zeroWork=some (s2Step299EarlyControlZeroArena,s2Step299EarlyControlLog.zeroWork,s2Step299EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step299EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step299EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step299EarlyControl_logged : s2Step299EarlyControlPlan.Logged s2Step299EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 805 254 253 252 251 847 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step299EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step299EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step299EarlyControl_zero
  · exact s2Step299EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step299EarlyControl_flags
  · exact s2Step299EarlyControl_fit
  · exact s2Step299EarlyControl_history
  · exact s2Step299EarlyControl_sigma
  · exact s2Step299EarlyControl_branch

private theorem s2Step299EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step299EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 805 254 253 252 251 847 55 s2Step299EarlyControlLog=some s2Step299EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step299EarlyControlPlan s2Step299EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 805 254 253 252 251 847 55 s2Step299EarlyControl_logged

private def s2Step299EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩

private def s2Step299EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step299EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step299EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩

private def s2Step299FrontBank : WindowBank := ⟨s2Step299EntryFRow,s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow⟩

private def s2Step299Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 783, 768]

private def s2Step299Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806, 811, 769]

private def s2Step299Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 820, 770]

private def s2Step299Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 787, 771]

private theorem s2Step299Counter_apart : Disjoint s2Step299HeadFvAfter.live s2Step299CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step299HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299Counter_borrowed : s2Step299HeadFvAfter.checkBorrow 4 s2Step299CounterWork=some s2Step299CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step299HeadFvAfter s2Step299CounterDuring s2Step299CounterWork.toFinset s2Step299Counter_bounded s2Step299Counter_apart rfl

private theorem s2Step299Counter_owned : (805::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step299HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step299HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299Counter_checked : compileHmrCounterStepLog s2Step299HeadFvAfter true 805 [772, 773, 774, 775, 776, 777] s2Step299CounterWork=some s2Step299CounterDuring := by
  have owned : ∀q∈805::[772, 773, 774, 775, 776, 777],q∈s2Step299HeadFvAfter.live := fun q hq => s2Step299Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step299Counter_borrowed

private def s2Step299EntryFAfter : Arena := s2Step299EntryFBefore

private theorem s2Step299EntryBank_incomingDistinct : ([s2Step299EntryFRow,s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299EntryF_Incoming : rowsOwned s2Step299EntryFBefore [s2Step299EntryFRow,s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299EntryFRow,s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow] 0 s2Step299EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299EntryBank_outgoingOwned : rowsOwned s2Step299EntryGvAfter [s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step299EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299EntryF_Outgoing : rowsOwned s2Step299EntryGvAfter [s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut] :=
  hmrRows_owned_drop s2Step299EntryGvAfter [s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut] 0 s2Step299EntryBank_outgoingOwned

private theorem s2Step299EntryF_distinct : (s2Step299EntryFRow.sign::s2Step299EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299EntryF_owned : (s2Step299EntryFRow.sign::s2Step299EntryFRow.payload).toFinset⊆s2Step299EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EntryF_reserved : s2Step299EntryFBefore.reserve s2Step299EntryFFresh.toFinset=some s2Step299EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step299EntryFFresh,arenaWires]
  · norm_num [s2Step299EntryFBefore,s2Step299EntryFFresh,arenaWires]
  · simp only [s2Step299EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step299EntryF_checked : planRowResizeLog s2Step299EntryFBefore s2Step299EntryFRow 122 s2Step299EntryFFresh=
    some (s2Step299EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩,growRow 768 s2Step299EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step299EntryFBefore s2Step299EntryFAfter s2Step299EntryFRow 122 s2Step299EntryFFresh
    s2Step299EntryF_distinct s2Step299EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step299EntryF_reserved
  have rowEq : WindowRow.mk (s2Step299EntryFRow.payload++s2Step299EntryFFresh) s2Step299EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step299EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299EntryFvAfter : Arena := s2Step299EntryGAfter

private def s2Step299EntryFvBefore : Arena := s2Step299EntryGAfter

private theorem s2Step299EntryFv_Incoming : rowsOwned s2Step299EntryFvBefore [s2Step299EntryFvRow,s2Step299EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299EntryFRow,s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow] 2 s2Step299EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299EntryFv_Outgoing : rowsOwned s2Step299EntryGvAfter [s2Step299EntryFvOut,s2Step299EntryGvOut] :=
  hmrRows_owned_drop s2Step299EntryGvAfter [s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut] 2 s2Step299EntryBank_outgoingOwned

private theorem s2Step299EntryFv_distinct : (s2Step299EntryFvRow.sign::s2Step299EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299EntryFv_owned : (s2Step299EntryFvRow.sign::s2Step299EntryFvRow.payload).toFinset⊆s2Step299EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EntryFv_reserved : s2Step299EntryFvBefore.reserve s2Step299EntryFvFresh.toFinset=some s2Step299EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step299EntryFvFresh,arenaWires]
  · norm_num [s2Step299EntryFvBefore,s2Step299EntryGAfter,s2Step299EntryFvFresh,arenaWires]
  · simp only [s2Step299EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step299EntryFv_checked : planRowResizeLog s2Step299EntryFvBefore s2Step299EntryFvRow 165 s2Step299EntryFvFresh=
    some (s2Step299EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩,growRow 770 s2Step299EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step299EntryFvBefore s2Step299EntryFvAfter s2Step299EntryFvRow 165 s2Step299EntryFvFresh
    s2Step299EntryFv_distinct s2Step299EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step299EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step299EntryFvRow.payload++s2Step299EntryFvFresh) s2Step299EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step299EntryGBefore : Arena := s2Step299EntryFBefore

private theorem s2Step299EntryG_Incoming : rowsOwned s2Step299EntryGBefore [s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299EntryFRow,s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow] 1 s2Step299EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299EntryG_Outgoing : rowsOwned s2Step299EntryGvAfter [s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut] :=
  hmrRows_owned_drop s2Step299EntryGvAfter [s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut] 1 s2Step299EntryBank_outgoingOwned

private theorem s2Step299EntryG_distinct : (s2Step299EntryGRow.sign::s2Step299EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299EntryG_owned : (s2Step299EntryGRow.sign::s2Step299EntryGRow.payload).toFinset⊆s2Step299EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EntryG_reserved : s2Step299EntryGBefore.reserve s2Step299EntryGFresh.toFinset=some s2Step299EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step299EntryGFresh,arenaWires]
  · norm_num [s2Step299EntryGBefore,s2Step299EntryFBefore,s2Step299EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step299EntryGAfter,s2Step299EntryGBefore,s2Step299EntryFBefore,s2Step299EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step299EntryG_checked : planRowResizeLog s2Step299EntryGBefore s2Step299EntryGRow 122 s2Step299EntryGFresh=
    some (s2Step299EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806],769⟩,growRow 769 s2Step299EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step299EntryGBefore s2Step299EntryGAfter s2Step299EntryGRow 122 s2Step299EntryGFresh
    s2Step299EntryG_distinct s2Step299EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step299EntryG_reserved
  have rowEq : WindowRow.mk (s2Step299EntryGRow.payload++s2Step299EntryGFresh) s2Step299EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step299EntryGvBefore : Arena := s2Step299EntryGAfter

private theorem s2Step299EntryGv_Incoming : rowsOwned s2Step299EntryGvBefore [s2Step299EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299EntryFRow,s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow] 3 s2Step299EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299EntryGv_Outgoing : rowsOwned s2Step299EntryGvAfter [s2Step299EntryGvOut] :=
  hmrRows_owned_drop s2Step299EntryGvAfter [s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut] 3 s2Step299EntryBank_outgoingOwned

private theorem s2Step299EntryGv_distinct : (s2Step299EntryGvRow.sign::s2Step299EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299EntryGv_owned : (s2Step299EntryGvRow.sign::s2Step299EntryGvRow.payload).toFinset⊆s2Step299EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299EntryGv_reserved : s2Step299EntryGvBefore.reserve s2Step299EntryGvFresh.toFinset=some s2Step299EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step299EntryGvFresh,arenaWires]
  · norm_num [s2Step299EntryGvBefore,s2Step299EntryGAfter,s2Step299EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step299EntryGvAfter,s2Step299EntryGvBefore,s2Step299EntryGAfter,s2Step299EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step299EntryGv_checked : planRowResizeLog s2Step299EntryGvBefore s2Step299EntryGvRow 165 s2Step299EntryGvFresh=
    some (s2Step299EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩,growRow 771 s2Step299EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step299EntryGvBefore s2Step299EntryGvAfter s2Step299EntryGvRow 165 s2Step299EntryGvFresh
    s2Step299EntryGv_distinct s2Step299EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step299EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step299EntryGvRow.payload++s2Step299EntryGvFresh) s2Step299EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step299EntryBank_rows : planWindowRowsLog s2Step299EntryFBefore [(s2Step299EntryFRow,122),(s2Step299EntryGRow,122),(s2Step299EntryFvRow,165),(s2Step299EntryGvRow,165)] [s2Step299EntryFFresh,s2Step299EntryGFresh,s2Step299EntryFvFresh,s2Step299EntryGvFresh]=
    some (s2Step299EntryGvAfter,[s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut],(growRow 768 s2Step299EntryFFresh ++ (growRow 769 s2Step299EntryGFresh ++ (growRow 770 s2Step299EntryFvFresh ++ (growRow 771 s2Step299EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step299EntryGvAfter [] []=some (s2Step299EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step299EntryGvBefore s2Step299EntryGvAfter s2Step299EntryGvAfter
    s2Step299EntryGvRow s2Step299EntryGvOut 165 s2Step299EntryGvFresh [] [] []
    (growRow 771 s2Step299EntryGvFresh) ([]) s2Step299EntryGv_Incoming s2Step299EntryGv_checked h4 s2Step299EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step299EntryFvBefore s2Step299EntryFvAfter s2Step299EntryGvAfter
    s2Step299EntryFvRow s2Step299EntryFvOut 165 s2Step299EntryFvFresh [(s2Step299EntryGvRow,165)] [s2Step299EntryGvFresh] [s2Step299EntryGvOut]
    (growRow 770 s2Step299EntryFvFresh) ((growRow 771 s2Step299EntryGvFresh ++ [])) s2Step299EntryFv_Incoming s2Step299EntryFv_checked h3 s2Step299EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step299EntryGBefore s2Step299EntryGAfter s2Step299EntryGvAfter
    s2Step299EntryGRow s2Step299EntryGOut 122 s2Step299EntryGFresh [(s2Step299EntryFvRow,165),(s2Step299EntryGvRow,165)] [s2Step299EntryFvFresh,s2Step299EntryGvFresh] [s2Step299EntryFvOut,s2Step299EntryGvOut]
    (growRow 769 s2Step299EntryGFresh) ((growRow 770 s2Step299EntryFvFresh ++ (growRow 771 s2Step299EntryGvFresh ++ []))) s2Step299EntryG_Incoming s2Step299EntryG_checked h2 s2Step299EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step299EntryFBefore s2Step299EntryFAfter s2Step299EntryGvAfter
    s2Step299EntryFRow s2Step299EntryFOut 122 s2Step299EntryFFresh [(s2Step299EntryGRow,122),(s2Step299EntryFvRow,165),(s2Step299EntryGvRow,165)] [s2Step299EntryGFresh,s2Step299EntryFvFresh,s2Step299EntryGvFresh] [s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut]
    (growRow 768 s2Step299EntryFFresh) ((growRow 769 s2Step299EntryGFresh ++ (growRow 770 s2Step299EntryFvFresh ++ (growRow 771 s2Step299EntryGvFresh ++ [])))) s2Step299EntryF_Incoming s2Step299EntryF_checked h1 s2Step299EntryF_Outgoing
  exact h0

private theorem s2Step299EntryBank_checked : compileHmrBankResizeLog .entry s2Step299EntryFBefore ⟨s2Step299EntryFRow,s2Step299EntryGRow,s2Step299EntryFvRow,s2Step299EntryGvRow⟩ ⟨122,122,165,165⟩ [s2Step299EntryFFresh,s2Step299EntryGFresh,s2Step299EntryFvFresh,s2Step299EntryGvFresh]=
    some (s2Step299EntryGvAfter,⟨s2Step299EntryFOut,s2Step299EntryGOut,s2Step299EntryFvOut,s2Step299EntryGvOut⟩,(growRow 768 s2Step299EntryFFresh ++ (growRow 769 s2Step299EntryGFresh ++ (growRow 770 s2Step299EntryFvFresh ++ (growRow 771 s2Step299EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step299EntryBank_rows]
  rfl

private def s2Step299ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<633) ∨ (634≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299ExitFBefore : Arena := s2Step299ExitGAfter

private def s2Step299ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 783],768⟩

private def s2Step299ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 820],770⟩

private def s2Step299ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806, 811],769⟩

private def s2Step299ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 787],771⟩

private theorem s2Step299ExitBank_incomingDistinct : ([s2Step299ExitGRow,s2Step299ExitFRow,s2Step299ExitFvRow,s2Step299ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299ExitF_Incoming : rowsOwned s2Step299ExitFBefore [s2Step299ExitFRow,s2Step299ExitFvRow,s2Step299ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299ExitGRow,s2Step299ExitFRow,s2Step299ExitFvRow,s2Step299ExitGvRow] 1 s2Step299ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299ExitBank_outgoingOwned : rowsOwned s2Step299ExitGvAfter [s2Step299ExitGOut,s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step299ExitGvAfter (fun q => (0≤q ∧ q<633) ∨ (634≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299ExitF_Outgoing : rowsOwned s2Step299ExitGvAfter [s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut] :=
  hmrRows_owned_drop s2Step299ExitGvAfter [s2Step299ExitGOut,s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut] 1 s2Step299ExitBank_outgoingOwned

private theorem s2Step299ExitF_distinct : (s2Step299ExitFRow.sign::s2Step299ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299ExitF_owned : (s2Step299ExitFRow.sign::s2Step299ExitFRow.payload).toFinset⊆s2Step299ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299ExitF_retired : s2Step299ExitFBefore.retireSet s2Step299ExitFExtra.toFinset=s2Step299ExitFAfter := by
  unfold Arena.retireSet s2Step299ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step299ExitFBefore,s2Step299ExitGAfter,s2Step299ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step299ExitF_checked : planRowResizeLog s2Step299ExitFBefore s2Step299ExitFRow 121 []=
    some (s2Step299ExitFAfter,s2Step299ExitFOut,shrinkRow 768 s2Step299ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step299ExitFBefore s2Step299ExitFRow 121 s2Step299ExitF_distinct s2Step299ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step299ExitFRow.payload.take 121) s2Step299ExitFRow.sign=s2Step299ExitFOut := by decide +kernel
  have hi : s2Step299ExitFRow.payload.drop 121=s2Step299ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step299ExitF_retired] at result
  exact result

private def s2Step299ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<633) ∨ (634≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299ExitFvBefore : Arena := s2Step299ExitFAfter

private theorem s2Step299ExitFv_Incoming : rowsOwned s2Step299ExitFvBefore [s2Step299ExitFvRow,s2Step299ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299ExitGRow,s2Step299ExitFRow,s2Step299ExitFvRow,s2Step299ExitGvRow] 2 s2Step299ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299ExitFvBefore (fun q => (0≤q ∧ q<633) ∨ (634≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299ExitFv_Outgoing : rowsOwned s2Step299ExitGvAfter [s2Step299ExitFvOut,s2Step299ExitGvOut] :=
  hmrRows_owned_drop s2Step299ExitGvAfter [s2Step299ExitGOut,s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut] 2 s2Step299ExitBank_outgoingOwned

private theorem s2Step299ExitFv_distinct : (s2Step299ExitFvRow.sign::s2Step299ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299ExitFv_owned : (s2Step299ExitFvRow.sign::s2Step299ExitFvRow.payload).toFinset⊆s2Step299ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299ExitFvBefore (fun q => (0≤q ∧ q<633) ∨ (634≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299ExitFv_retired : s2Step299ExitFvBefore.retireSet s2Step299ExitFvExtra.toFinset=s2Step299ExitFvAfter := by
  unfold Arena.retireSet s2Step299ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step299ExitFvBefore,s2Step299ExitFAfter,s2Step299ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step299ExitFv_checked : planRowResizeLog s2Step299ExitFvBefore s2Step299ExitFvRow 165 []=
    some (s2Step299ExitFvAfter,s2Step299ExitFvOut,shrinkRow 770 s2Step299ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step299ExitFvBefore s2Step299ExitFvRow 165 s2Step299ExitFv_distinct s2Step299ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step299ExitFvRow.payload.take 165) s2Step299ExitFvRow.sign=s2Step299ExitFvOut := by decide +kernel
  have hi : s2Step299ExitFvRow.payload.drop 165=s2Step299ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step299ExitFv_retired] at result
  exact result

private def s2Step299ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step299ExitG_Incoming : rowsOwned s2Step299ExitGBefore [s2Step299ExitGRow,s2Step299ExitFRow,s2Step299ExitFvRow,s2Step299ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299ExitGRow,s2Step299ExitFRow,s2Step299ExitFvRow,s2Step299ExitGvRow] 0 s2Step299ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299ExitG_Outgoing : rowsOwned s2Step299ExitGvAfter [s2Step299ExitGOut,s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut] :=
  hmrRows_owned_drop s2Step299ExitGvAfter [s2Step299ExitGOut,s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut] 0 s2Step299ExitBank_outgoingOwned

private theorem s2Step299ExitG_distinct : (s2Step299ExitGRow.sign::s2Step299ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299ExitG_owned : (s2Step299ExitGRow.sign::s2Step299ExitGRow.payload).toFinset⊆s2Step299ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299ExitG_retired : s2Step299ExitGBefore.retireSet s2Step299ExitGExtra.toFinset=s2Step299ExitGAfter := by
  unfold Arena.retireSet s2Step299ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step299ExitGBefore,s2Step299ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step299ExitG_checked : planRowResizeLog s2Step299ExitGBefore s2Step299ExitGRow 121 []=
    some (s2Step299ExitGAfter,s2Step299ExitGOut,shrinkRow 769 s2Step299ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step299ExitGBefore s2Step299ExitGRow 121 s2Step299ExitG_distinct s2Step299ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step299ExitGRow.payload.take 121) s2Step299ExitGRow.sign=s2Step299ExitGOut := by decide +kernel
  have hi : s2Step299ExitGRow.payload.drop 121=s2Step299ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step299ExitG_retired] at result
  exact result

private def s2Step299ExitGvBefore : Arena := s2Step299ExitFvAfter

private theorem s2Step299ExitGv_Incoming : rowsOwned s2Step299ExitGvBefore [s2Step299ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299ExitGRow,s2Step299ExitFRow,s2Step299ExitFvRow,s2Step299ExitGvRow] 3 s2Step299ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299ExitGvBefore (fun q => (0≤q ∧ q<633) ∨ (634≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299ExitGv_Outgoing : rowsOwned s2Step299ExitGvAfter [s2Step299ExitGvOut] :=
  hmrRows_owned_drop s2Step299ExitGvAfter [s2Step299ExitGOut,s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut] 3 s2Step299ExitBank_outgoingOwned

private theorem s2Step299ExitGv_distinct : (s2Step299ExitGvRow.sign::s2Step299ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299ExitGv_owned : (s2Step299ExitGvRow.sign::s2Step299ExitGvRow.payload).toFinset⊆s2Step299ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299ExitGvBefore (fun q => (0≤q ∧ q<633) ∨ (634≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299ExitGv_retired : s2Step299ExitGvBefore.retireSet s2Step299ExitGvExtra.toFinset=s2Step299ExitGvAfter := by
  unfold Arena.retireSet s2Step299ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step299ExitGvBefore,s2Step299ExitFvAfter,s2Step299ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step299ExitGv_checked : planRowResizeLog s2Step299ExitGvBefore s2Step299ExitGvRow 165 []=
    some (s2Step299ExitGvAfter,s2Step299ExitGvOut,shrinkRow 771 s2Step299ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step299ExitGvBefore s2Step299ExitGvRow 165 s2Step299ExitGv_distinct s2Step299ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step299ExitGvRow.payload.take 165) s2Step299ExitGvRow.sign=s2Step299ExitGvOut := by decide +kernel
  have hi : s2Step299ExitGvRow.payload.drop 165=s2Step299ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step299ExitGv_retired] at result
  exact result

private theorem s2Step299ExitBank_rows : planWindowRowsLog s2Step299ExitGBefore [(s2Step299ExitGRow,121),(s2Step299ExitFRow,121),(s2Step299ExitFvRow,165),(s2Step299ExitGvRow,165)] [[],[],[],[]]=
    some (s2Step299ExitGvAfter,[s2Step299ExitGOut,s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut],(shrinkRow 769 s2Step299ExitGExtra ++ (shrinkRow 768 s2Step299ExitFExtra ++ (shrinkRow 770 s2Step299ExitFvExtra ++ (shrinkRow 771 s2Step299ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step299ExitGvAfter [] []=some (s2Step299ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step299ExitGvBefore s2Step299ExitGvAfter s2Step299ExitGvAfter
    s2Step299ExitGvRow s2Step299ExitGvOut 165 [] [] [] []
    (shrinkRow 771 s2Step299ExitGvExtra) ([]) s2Step299ExitGv_Incoming s2Step299ExitGv_checked h4 s2Step299ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step299ExitFvBefore s2Step299ExitFvAfter s2Step299ExitGvAfter
    s2Step299ExitFvRow s2Step299ExitFvOut 165 [] [(s2Step299ExitGvRow,165)] [[]] [s2Step299ExitGvOut]
    (shrinkRow 770 s2Step299ExitFvExtra) ((shrinkRow 771 s2Step299ExitGvExtra ++ [])) s2Step299ExitFv_Incoming s2Step299ExitFv_checked h3 s2Step299ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step299ExitFBefore s2Step299ExitFAfter s2Step299ExitGvAfter
    s2Step299ExitFRow s2Step299ExitFOut 121 [] [(s2Step299ExitFvRow,165),(s2Step299ExitGvRow,165)] [[],[]] [s2Step299ExitFvOut,s2Step299ExitGvOut]
    (shrinkRow 768 s2Step299ExitFExtra) ((shrinkRow 770 s2Step299ExitFvExtra ++ (shrinkRow 771 s2Step299ExitGvExtra ++ []))) s2Step299ExitF_Incoming s2Step299ExitF_checked h2 s2Step299ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step299ExitGBefore s2Step299ExitGAfter s2Step299ExitGvAfter
    s2Step299ExitGRow s2Step299ExitGOut 121 [] [(s2Step299ExitFRow,121),(s2Step299ExitFvRow,165),(s2Step299ExitGvRow,165)] [[],[],[]] [s2Step299ExitFOut,s2Step299ExitFvOut,s2Step299ExitGvOut]
    (shrinkRow 769 s2Step299ExitGExtra) ((shrinkRow 768 s2Step299ExitFExtra ++ (shrinkRow 770 s2Step299ExitFvExtra ++ (shrinkRow 771 s2Step299ExitGvExtra ++ [])))) s2Step299ExitG_Incoming s2Step299ExitG_checked h1 s2Step299ExitG_Outgoing
  exact h0

private theorem s2Step299ExitBank_checked : compileHmrBankResizeLog .exit s2Step299ExitGBefore ⟨s2Step299ExitFRow,s2Step299ExitGRow,s2Step299ExitFvRow,s2Step299ExitGvRow⟩ ⟨121,121,165,165⟩ [[],[],[],[]]=
    some (s2Step299ExitGvAfter,⟨s2Step299ExitFOut,s2Step299ExitGOut,s2Step299ExitFvOut,s2Step299ExitGvOut⟩,(shrinkRow 769 s2Step299ExitGExtra ++ (shrinkRow 768 s2Step299ExitFExtra ++ (shrinkRow 770 s2Step299ExitFvExtra ++ (shrinkRow 771 s2Step299ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step299ExitBank_rows]
  rfl

private theorem s2Step299Add0_apart : Disjoint s2Step299Add0Arena.live s2Step299Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step299Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299Add0_card : s2Step299Add0Arena.live.card=903 := by
  decide +kernel

private theorem s2Step299Add0_borrowed : s2Step299Add0Arena.checkBorrow (hmrHybridCount s2Step299Add0Arena s2Step299Add0B.length) s2Step299Add0Work=some s2Step299Add0During := by
  have len : s2Step299Add0Work.length=hmrHybridCount s2Step299Add0Arena s2Step299Add0B.length := by
    rw [hmrHybridCount,s2Step299Add0_card]
    decide +kernel
  have nd : s2Step299Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step299Add0Arena s2Step299Add0During s2Step299Add0Work.toFinset s2Step299Add0_bounded s2Step299Add0_apart rfl

private theorem s2Step299Add0_distinct : (830::847::800::(s2Step299Add0A++s2Step299Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299Add0_owned : (830::847::800::(s2Step299Add0A++s2Step299Add0B)).toFinset⊆s2Step299Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step299Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299Add0_checked : compileHmrHybridCinLog s2Step299Add0Arena 847 830 800 s2Step299Add0A s2Step299Add0B s2Step299Add0Work=some s2Step299Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step299Add0Arena s2Step299Add0During 847 830 800 s2Step299Add0A s2Step299Add0B s2Step299Add0Work
    (by decide +kernel) (by decide +kernel) s2Step299Add0_distinct
    (fun q hq => s2Step299Add0_owned (List.mem_toFinset.mpr hq)) s2Step299Add0_borrowed

private theorem s2Step299Add1_apart : Disjoint s2Step299Add1Arena.live s2Step299Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step299Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299Add1_card : s2Step299Add1Arena.live.card=903 := by
  decide +kernel

private theorem s2Step299Add1_borrowed : s2Step299Add1Arena.checkBorrow (hmrHybridCount s2Step299Add1Arena s2Step299Add1B.length) s2Step299Add1Work=some s2Step299Add1During := by
  have len : s2Step299Add1Work.length=hmrHybridCount s2Step299Add1Arena s2Step299Add1B.length := by
    rw [hmrHybridCount,s2Step299Add1_card]
    decide +kernel
  have nd : s2Step299Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step299Add1Arena s2Step299Add1During s2Step299Add1Work.toFinset s2Step299Add1_bounded s2Step299Add1_apart rfl

private theorem s2Step299Add1_distinct : (830::847::800::(s2Step299Add1A++s2Step299Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299Add1_owned : (830::847::800::(s2Step299Add1A++s2Step299Add1B)).toFinset⊆s2Step299Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step299Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299Add1_checked : compileHmrHybridCinLog s2Step299Add1Arena 847 830 800 s2Step299Add1A s2Step299Add1B s2Step299Add1Work=some s2Step299Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step299Add1Arena s2Step299Add1During 847 830 800 s2Step299Add1A s2Step299Add1B s2Step299Add1Work
    (by decide +kernel) (by decide +kernel) s2Step299Add1_distinct
    (fun q hq => s2Step299Add1_owned (List.mem_toFinset.mpr hq)) s2Step299Add1_borrowed

private theorem s2Step299F4_apart : Disjoint (s2Step299Add0A++s2Step299Add0B).toFinset (s2Step299Add1A++s2Step299Add1B).toFinset := by
  have nd : ((s2Step299Add0A++s2Step299Add0B)++(s2Step299Add1A++s2Step299Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step299F4_carry : s2Step299F4FlagArena.checkBorrow 1 [800]=some s2Step299Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step299F4FlagArena,s2Step299HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step299F4FlagArena,s2Step299HeadFvAfter,s2Step299Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step299F4_distinct : (805::847::830::800::((s2Step299Add0A++s2Step299Add1A)++(s2Step299Add0B++s2Step299Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299F4_flag : s2Step299HeadFvAfter.checkBorrow 1 [830]=some s2Step299F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step299HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step299F4_owned : (805::847::((s2Step299Add0A++s2Step299Add1A)++(s2Step299Add0B++s2Step299Add1B))).toFinset⊆s2Step299HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step299HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299F4_checked : compileHmrHybridF4Log s2Step299HeadFvAfter 805 847 s2Step299Add0A s2Step299Add0B s2Step299Add1A s2Step299Add1B [830] [800] s2Step299Add0Work s2Step299Add1Work=some s2Step299F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step299HeadFvAfter s2Step299F4FlagArena s2Step299Add0Arena s2Step299Add0During s2Step299Add1During 805 847
    s2Step299Add0A s2Step299Add0B s2Step299Add1A s2Step299Add1B [830] [800] s2Step299Add0Work s2Step299Add1Work
    (fun q hq => s2Step299F4_owned (List.mem_toFinset.mpr hq)) s2Step299F4_flag s2Step299F4_carry
    s2Step299F4_distinct s2Step299F4_apart s2Step299Add0_checked s2Step299Add1_checked

private theorem s2Step299Front_branch : s2Step299FrontSigmaArena.checkBorrow 1 [847]=some s2Step299HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step299FrontSigmaArena,s2Step299EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step299FrontSigmaArena,s2Step299EntryGvAfter,s2Step299HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step299Front_entry : HmrFrontEntryValid s2Step299EntryFBefore s2Step299FrontBank 122 165 ⟨121,121,165,165⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step299FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step299EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step299EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step299FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step299Front_sigma : s2Step299EntryGvAfter.checkBorrow 1 [805]=some s2Step299FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step299EntryGvAfter,arenaWires]
  · rfl

private def s2Step299HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299HeadFBefore : Arena := s2Step299HeadGAfter

private def s2Step299HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩

private def s2Step299HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step299HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806],769⟩

private def s2Step299HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780],771⟩

private theorem s2Step299HeadBank_incomingDistinct : ([s2Step299HeadGRow,s2Step299HeadFRow,s2Step299HeadGvRow,s2Step299HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299HeadF_Incoming : rowsOwned s2Step299HeadFBefore [s2Step299HeadFRow,s2Step299HeadGvRow,s2Step299HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299HeadGRow,s2Step299HeadFRow,s2Step299HeadGvRow,s2Step299HeadFvRow] 1 s2Step299HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299HeadBank_outgoingOwned : rowsOwned s2Step299HeadFvAfter [s2Step299HeadGOut,s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step299HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299HeadF_Outgoing : rowsOwned s2Step299HeadFvAfter [s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut] :=
  hmrRows_owned_drop s2Step299HeadFvAfter [s2Step299HeadGOut,s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut] 1 s2Step299HeadBank_outgoingOwned

private theorem s2Step299HeadF_distinct : (s2Step299HeadFRow.sign::s2Step299HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299HeadF_owned : (s2Step299HeadFRow.sign::s2Step299HeadFRow.payload).toFinset⊆s2Step299HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299HeadF_reserved : s2Step299HeadFBefore.reserve s2Step299HeadFFresh.toFinset=some s2Step299HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step299HeadFFresh,arenaWires]
  · norm_num [s2Step299HeadFBefore,s2Step299HeadGAfter,s2Step299HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step299HeadFAfter,s2Step299HeadFBefore,s2Step299HeadGAfter,s2Step299HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step299HeadF_checked : planRowResizeLog s2Step299HeadFBefore s2Step299HeadFRow 123 s2Step299HeadFFresh=
    some (s2Step299HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 783],768⟩,growRow 768 s2Step299HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step299HeadFBefore s2Step299HeadFAfter s2Step299HeadFRow 123 s2Step299HeadFFresh
    s2Step299HeadF_distinct s2Step299HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step299HeadF_reserved
  have rowEq : WindowRow.mk (s2Step299HeadFRow.payload++s2Step299HeadFFresh) s2Step299HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step299HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step299HeadFvBefore : Arena := s2Step299HeadGvAfter

private theorem s2Step299HeadFv_Incoming : rowsOwned s2Step299HeadFvBefore [s2Step299HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299HeadGRow,s2Step299HeadFRow,s2Step299HeadGvRow,s2Step299HeadFvRow] 3 s2Step299HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299HeadFv_Outgoing : rowsOwned s2Step299HeadFvAfter [s2Step299HeadFvOut] :=
  hmrRows_owned_drop s2Step299HeadFvAfter [s2Step299HeadGOut,s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut] 3 s2Step299HeadBank_outgoingOwned

private theorem s2Step299HeadFv_distinct : (s2Step299HeadFvRow.sign::s2Step299HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299HeadFv_owned : (s2Step299HeadFvRow.sign::s2Step299HeadFvRow.payload).toFinset⊆s2Step299HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299HeadFv_reserved : s2Step299HeadFvBefore.reserve s2Step299HeadFvFresh.toFinset=some s2Step299HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step299HeadFvFresh,arenaWires]
  · norm_num [s2Step299HeadFvBefore,s2Step299HeadGvAfter,s2Step299HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step299HeadFvAfter,s2Step299HeadFvBefore,s2Step299HeadGvAfter,s2Step299HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step299HeadFv_checked : planRowResizeLog s2Step299HeadFvBefore s2Step299HeadFvRow 166 s2Step299HeadFvFresh=
    some (s2Step299HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 820],770⟩,growRow 770 s2Step299HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step299HeadFvBefore s2Step299HeadFvAfter s2Step299HeadFvRow 166 s2Step299HeadFvFresh
    s2Step299HeadFv_distinct s2Step299HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step299HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step299HeadFvRow.payload++s2Step299HeadFvFresh) s2Step299HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step299HeadG_Incoming : rowsOwned s2Step299HeadGBefore [s2Step299HeadGRow,s2Step299HeadFRow,s2Step299HeadGvRow,s2Step299HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299HeadGRow,s2Step299HeadFRow,s2Step299HeadGvRow,s2Step299HeadFvRow] 0 s2Step299HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299HeadG_Outgoing : rowsOwned s2Step299HeadFvAfter [s2Step299HeadGOut,s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut] :=
  hmrRows_owned_drop s2Step299HeadFvAfter [s2Step299HeadGOut,s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut] 0 s2Step299HeadBank_outgoingOwned

private theorem s2Step299HeadG_distinct : (s2Step299HeadGRow.sign::s2Step299HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299HeadG_owned : (s2Step299HeadGRow.sign::s2Step299HeadGRow.payload).toFinset⊆s2Step299HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299HeadG_reserved : s2Step299HeadGBefore.reserve s2Step299HeadGFresh.toFinset=some s2Step299HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step299HeadGFresh,arenaWires]
  · norm_num [s2Step299HeadGBefore,s2Step299HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step299HeadGAfter,s2Step299HeadGBefore,s2Step299HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step299HeadG_checked : planRowResizeLog s2Step299HeadGBefore s2Step299HeadGRow 123 s2Step299HeadGFresh=
    some (s2Step299HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806, 811],769⟩,growRow 769 s2Step299HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step299HeadGBefore s2Step299HeadGAfter s2Step299HeadGRow 123 s2Step299HeadGFresh
    s2Step299HeadG_distinct s2Step299HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step299HeadG_reserved
  have rowEq : WindowRow.mk (s2Step299HeadGRow.payload++s2Step299HeadGFresh) s2Step299HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 806, 811],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step299HeadGvBefore : Arena := s2Step299HeadFAfter

private theorem s2Step299HeadGv_Incoming : rowsOwned s2Step299HeadGvBefore [s2Step299HeadGvRow,s2Step299HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step299HeadGRow,s2Step299HeadFRow,s2Step299HeadGvRow,s2Step299HeadFvRow] 2 s2Step299HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step299HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step299HeadGv_Outgoing : rowsOwned s2Step299HeadFvAfter [s2Step299HeadGvOut,s2Step299HeadFvOut] :=
  hmrRows_owned_drop s2Step299HeadFvAfter [s2Step299HeadGOut,s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut] 2 s2Step299HeadBank_outgoingOwned

private theorem s2Step299HeadGv_distinct : (s2Step299HeadGvRow.sign::s2Step299HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step299HeadGv_owned : (s2Step299HeadGvRow.sign::s2Step299HeadGvRow.payload).toFinset⊆s2Step299HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step299HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step299HeadGv_reserved : s2Step299HeadGvBefore.reserve s2Step299HeadGvFresh.toFinset=some s2Step299HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step299HeadGvFresh,arenaWires]
  · norm_num [s2Step299HeadGvBefore,s2Step299HeadFAfter,s2Step299HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step299HeadGvAfter,s2Step299HeadGvBefore,s2Step299HeadFAfter,s2Step299HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step299HeadGv_checked : planRowResizeLog s2Step299HeadGvBefore s2Step299HeadGvRow 166 s2Step299HeadGvFresh=
    some (s2Step299HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 787],771⟩,growRow 771 s2Step299HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step299HeadGvBefore s2Step299HeadGvAfter s2Step299HeadGvRow 166 s2Step299HeadGvFresh
    s2Step299HeadGv_distinct s2Step299HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step299HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step299HeadGvRow.payload++s2Step299HeadGvFresh) s2Step299HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step299HeadBank_rows : planWindowRowsLog s2Step299HeadGBefore [(s2Step299HeadGRow,123),(s2Step299HeadFRow,123),(s2Step299HeadGvRow,166),(s2Step299HeadFvRow,166)] [s2Step299HeadGFresh,s2Step299HeadFFresh,s2Step299HeadGvFresh,s2Step299HeadFvFresh]=
    some (s2Step299HeadFvAfter,[s2Step299HeadGOut,s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut],(growRow 769 s2Step299HeadGFresh ++ (growRow 768 s2Step299HeadFFresh ++ (growRow 771 s2Step299HeadGvFresh ++ (growRow 770 s2Step299HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step299HeadFvAfter [] []=some (s2Step299HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step299HeadFvBefore s2Step299HeadFvAfter s2Step299HeadFvAfter
    s2Step299HeadFvRow s2Step299HeadFvOut 166 s2Step299HeadFvFresh [] [] []
    (growRow 770 s2Step299HeadFvFresh) ([]) s2Step299HeadFv_Incoming s2Step299HeadFv_checked h4 s2Step299HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step299HeadGvBefore s2Step299HeadGvAfter s2Step299HeadFvAfter
    s2Step299HeadGvRow s2Step299HeadGvOut 166 s2Step299HeadGvFresh [(s2Step299HeadFvRow,166)] [s2Step299HeadFvFresh] [s2Step299HeadFvOut]
    (growRow 771 s2Step299HeadGvFresh) ((growRow 770 s2Step299HeadFvFresh ++ [])) s2Step299HeadGv_Incoming s2Step299HeadGv_checked h3 s2Step299HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step299HeadFBefore s2Step299HeadFAfter s2Step299HeadFvAfter
    s2Step299HeadFRow s2Step299HeadFOut 123 s2Step299HeadFFresh [(s2Step299HeadGvRow,166),(s2Step299HeadFvRow,166)] [s2Step299HeadGvFresh,s2Step299HeadFvFresh] [s2Step299HeadGvOut,s2Step299HeadFvOut]
    (growRow 768 s2Step299HeadFFresh) ((growRow 771 s2Step299HeadGvFresh ++ (growRow 770 s2Step299HeadFvFresh ++ []))) s2Step299HeadF_Incoming s2Step299HeadF_checked h2 s2Step299HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step299HeadGBefore s2Step299HeadGAfter s2Step299HeadFvAfter
    s2Step299HeadGRow s2Step299HeadGOut 123 s2Step299HeadGFresh [(s2Step299HeadFRow,123),(s2Step299HeadGvRow,166),(s2Step299HeadFvRow,166)] [s2Step299HeadFFresh,s2Step299HeadGvFresh,s2Step299HeadFvFresh] [s2Step299HeadFOut,s2Step299HeadGvOut,s2Step299HeadFvOut]
    (growRow 769 s2Step299HeadGFresh) ((growRow 768 s2Step299HeadFFresh ++ (growRow 771 s2Step299HeadGvFresh ++ (growRow 770 s2Step299HeadFvFresh ++ [])))) s2Step299HeadG_Incoming s2Step299HeadG_checked h1 s2Step299HeadG_Outgoing
  exact h0

private theorem s2Step299HeadBank_checked : compileHmrBankResizeLog .headroom s2Step299HeadGBefore ⟨s2Step299HeadFRow,s2Step299HeadGRow,s2Step299HeadFvRow,s2Step299HeadGvRow⟩ ⟨123,123,166,166⟩ [s2Step299HeadGFresh,s2Step299HeadFFresh,s2Step299HeadGvFresh,s2Step299HeadFvFresh]=
    some (s2Step299HeadFvAfter,⟨s2Step299HeadFOut,s2Step299HeadGOut,s2Step299HeadFvOut,s2Step299HeadGvOut⟩,(growRow 769 s2Step299HeadGFresh ++ (growRow 768 s2Step299HeadFFresh ++ (growRow 771 s2Step299HeadGvFresh ++ (growRow 770 s2Step299HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step299HeadBank_rows]
  rfl

private theorem s2Step299Front_checked : compileHmrSourceFrontLog s2Step299EntryFBefore s2Step299FrontBank 122 165 ⟨121,121,165,165⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step299FrontLog=some s2Step299FrontPlan := by
  have pairEq : s2Step299FrontPair=⟨s2Step299HeadFRow,s2Step299HeadGRow,s2Step299HeadFvRow,s2Step299HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step299FrontHead=⟨s2Step299ExitFRow,s2Step299ExitGRow,s2Step299ExitFvRow,s2Step299ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step299Add0A=s2Step299FrontHead.f.wires := by decide +kernel
  have gEq : s2Step299Add0B=s2Step299FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step299Add1A=s2Step299FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step299Add1B=s2Step299FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step299EntryFBefore s2Step299FrontBank 122 165 ⟨121,121,165,165⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step299FrontLog s2Step299FrontPlan
  · exact s2Step299Front_entry
  · exact s2Step299EntryBank_checked
  · exact s2Step299Front_sigma
  · rfl
  · exact s2Step299Front_branch
  · rfl
  · simpa only [s2Step299FrontPlan,pairEq] using s2Step299HeadBank_checked
  · simpa only [s2Step299FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step299F4_checked
  · exact s2Step299Counter_checked
  · rfl
  · simpa only [s2Step299FrontPlan,headEq] using s2Step299ExitBank_checked

private theorem s2Step299Complete_explicit_checked : compileHmrEarlyStepLog s2Step299EntryFBefore s2Step299FrontBank 122 165 ⟨121,121,165,165⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step299CompleteLog=some s2Step299CompletePlan := by
  let Q := s2Step299EarlyControlPlan
  have hq := s2Step299EarlyControl_plan_checked
  have fv1 : s2Step299CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step299CompleteOut.fv.payload[2]?.getD s2Step299CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step299CompleteOut.fv.payload[3]?.getD s2Step299CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step299CompleteOut.fv.payload[4]?.getD s2Step299CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step299EntryFBefore s2Step299EarlyControlArena s2Step299FrontBank 122 165 ⟨121,121,165,165⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step299CompleteLog s2Step299FrontPlan Q
    s2Step299Front_checked s2Step299Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step299Complete_owned s2Step299Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step299EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 805 s2Step299CompleteOut.fv.second (s2Step299CompleteOut.fv.payload[2]?.getD s2Step299CompleteOut.fv.sign) (s2Step299CompleteOut.fv.payload[3]?.getD s2Step299CompleteOut.fv.sign) (s2Step299CompleteOut.fv.payload[4]?.getD s2Step299CompleteOut.fv.sign) 847 55 s2Step299EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep299Arena : Arena := s2Step299EntryFBefore
def s2PrivateStep299Bank : WindowBank := s2Step299FrontBank
def s2PrivateStep299Spec : HmrSourceWalkStepLog := ⟨122,165,⟨121,121,165,165⟩,55,.early s2Step299CompleteLog⟩
def s2PrivateStep299Plan : HmrSourceStepPlan := .early s2Step299CompletePlan
theorem s2PrivateStep299_source : s2PrivateStep299Spec=s2ObservedLogs288[11] := rfl
theorem s2PrivateStep299_checked : compileHmrSourceStepLog s2PrivateStep299Arena s2PrivateStep299Bank
    s2PrivateStep299Spec.fgWidth s2PrivateStep299Spec.vWidth s2PrivateStep299Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 299 s2PrivateStep299Spec.need none s2PrivateStep299Spec.log=some s2PrivateStep299Plan := by
  change compileHmrSourceStepLog s2Step299EntryFBefore s2Step299FrontBank 122 165 ⟨121,121,165,165⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 299 55 none (.early s2Step299CompleteLog)=some (.early s2Step299CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 299<498)]
  rw [s2Step299Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
