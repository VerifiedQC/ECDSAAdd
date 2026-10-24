import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep300
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

private def s2Step302CompleteMoves : List (Wire × Wire) := [(831,118)]

private def s2Step302EarlyControlLog : HmrEarlyControlLog := ⟨[831, 811, 806, 820, 826],[805],[787],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step302FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [820], [], []],[[826], [806], [811], [797]],[[], [], [], []]⟩,[793],[846],[805],[787],[830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[805, 787, 830, 800]⟩

private def s2Step302CompleteLog : HmrEarlyStepLog := ⟨s2Step302FrontLog,s2Step302CompleteMoves,s2Step302EarlyControlLog⟩

private def s2Step302ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩

private def s2Step302ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step302ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step302ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩

private def s2Step302FrontOut : WindowBank := ⟨s2Step302ExitFOut,s2Step302ExitGOut,s2Step302ExitFvOut,s2Step302ExitGvOut⟩

private def s2Step302CompleteOut : WindowBank := s2Step302FrontOut.repacked s2Step302CompleteMoves

private def s2Step302EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step302EarlyControlPositiveArena,[805],s2Step302EarlyControlEqualityArena,[787],⟨⟨793,false⟩,[⟨⟨805,false⟩,787⟩]⟩⟩

private def s2Step302EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,831⟩,⟨⟨774,false⟩,811⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,820⟩,⟨⟨777,false⟩,826⟩]⟩

private def s2Step302EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step302EarlyControlZeroArena,s2Step302EarlyControlZeroPlan,s2Step302EarlyControlClassPlan,s2Step302EarlyControlFlagArena,s2Step302EarlyControlFittedArena,s2Step302EarlyControlHistoryArena,s2Step302EarlyControlSigmaArena,s2Step302EarlyControlOutputArena,s2Step302EarlyControlLog⟩

private def s2Step302CounterWork : List Wire := [805, 787, 830, 800]

private theorem s2Step302Counter_bounded : s2Step302CounterWork.toFinset⊆arenaWires := by norm_num [s2Step302CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step302HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302CounterDuring : Arena := ⟨s2Step302HeadFvAfter.live∪s2Step302CounterWork.toFinset,Finset.union_subset s2Step302HeadFvAfter.bounded s2Step302Counter_bounded⟩

private def s2Step302EntryFFresh : List Wire := []

private def s2Step302EntryFvFresh : List Wire := []

private def s2Step302EntryGFresh : List Wire := [820]

private def s2Step302EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EntryGvAfter : Arena := s2Step302EntryGAfter

private def s2Step302EntryGvFresh : List Wire := []

private def s2Step302ExitFExtra : List Wire := [806]

private def s2Step302ExitGExtra : List Wire := [118, 820, 826]

private def s2Step302ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302ExitGvExtra : List Wire := [811]

private def s2Step302Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step302Add0_bounded : s2Step302Add0Work.toFinset⊆arenaWires := by
  have h : s2Step302Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step302Add0During : Arena := ⟨s2Step302Add0Arena.live∪s2Step302Add0Work.toFinset,Finset.union_subset s2Step302Add0Arena.bounded s2Step302Add0_bounded⟩

private def s2Step302Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step302Add1_bounded : s2Step302Add1Work.toFinset⊆arenaWires := by
  have h : s2Step302Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step302Add1During : Arena := ⟨s2Step302Add1Arena.live∪s2Step302Add1Work.toFinset,Finset.union_subset s2Step302Add1Arena.bounded s2Step302Add1_bounded⟩

private def s2Step302F4FlagArena : Arena := ⟨s2Step302HeadFvAfter.live∪{805},Finset.union_subset s2Step302HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step302F4Plan : HmrHybridF4Plan := ⟨s2Step302F4FlagArena,[805],s2Step302Add0Arena,[787],s2Step302Add0During,s2Step302Add0Work,s2Step302Add1During,s2Step302Add1Work⟩

private def s2Step302HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 806],768⟩

private def s2Step302HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step302HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820, 826],769⟩

private def s2Step302HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 811],771⟩

private def s2Step302FrontHead : WindowBank := ⟨s2Step302HeadFOut,s2Step302HeadGOut,s2Step302HeadFvOut,s2Step302HeadGvOut⟩

private def s2Step302EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩

private def s2Step302EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step302EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820],769⟩

private def s2Step302EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩

private def s2Step302FrontPair : WindowBank := ⟨s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut⟩

private def s2Step302FrontSigmaArena : Arena := ⟨s2Step302EntryGvAfter.live∪{793},Finset.union_subset s2Step302EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step302HeadFFresh : List Wire := [806]

private def s2Step302HeadFvFresh : List Wire := [797]

private def s2Step302HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302HeadGFresh : List Wire := [826]

private def s2Step302HeadGvFresh : List Wire := [811]

private def s2Step302FrontPlan : HmrSourceFront := ⟨s2Step302EntryGvAfter,s2Step302FrontPair,(growRow 768 s2Step302EntryFFresh ++ (growRow 769 s2Step302EntryGFresh ++ (growRow 770 s2Step302EntryFvFresh ++ (growRow 771 s2Step302EntryGvFresh ++ [])))),s2Step302FrontSigmaArena,[793],s2Step302HeadGBefore,[846],
  s2Step302HeadFvAfter,s2Step302FrontHead,(growRow 769 s2Step302HeadGFresh ++ (growRow 768 s2Step302HeadFFresh ++ (growRow 771 s2Step302HeadGvFresh ++ (growRow 770 s2Step302HeadFvFresh ++ [])))),s2Step302F4Plan,s2Step302CounterDuring,s2Step302CounterWork,s2Step302ExitGvAfter,s2Step302FrontOut,(shrinkRow 769 s2Step302ExitGExtra ++ (shrinkRow 768 s2Step302ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step302ExitGvExtra ++ []))))⟩

private def s2Step302CompletePlan : HmrEarlyStepPlan := ⟨s2Step302FrontPlan,s2Step302EarlyControlArena,s2Step302EarlyControlPlan,s2Step302CompleteMoves⟩

private theorem s2Step302Complete_apart : List.Disjoint (s2Step302CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step302CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step302Complete_owned : (s2Step302CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step302CompleteMoveArena : Arena := ⟨s2Step302ExitGvAfter.live∪{118},Finset.union_subset s2Step302ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step302Complete_repack : s2Step302ExitGvAfter.checkRepack s2Step302CompleteMoves=some s2Step302EarlyControlArena := by
  have owned : 831∈s2Step302ExitGvAfter.live := by norm_num [s2Step302ExitGvAfter,arenaWires]
  have reserve : s2Step302ExitGvAfter.reserve {118}=some s2Step302CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step302ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step302CompleteMoveArena.retireSet {831}=s2Step302EarlyControlArena := by
    unfold Arena.retireSet s2Step302EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step302CompleteMoveArena,s2Step302ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step302CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step302CompleteMoveArena.retireSet {831}).checkRepack []=some s2Step302EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step302EarlyControl_branchOwned : ([846] : List Wire).toFinset⊆s2Step302EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_branch : compileHmrBranchRetirement s2Step302EarlyControlSigmaArena 846=some s2Step302EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step302EarlyControl_branchOwned
  · ext q
    simp [s2Step302EarlyControlOutputArena,s2Step302EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step302EarlyControl_classEqualityBorrow : s2Step302EarlyControlPositiveArena.checkBorrow (([793, 805] : List Wire).length-1) s2Step302EarlyControlLog.classWork=some s2Step302EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step302EarlyControlPositiveArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step302EarlyControlEqualityArena,s2Step302EarlyControlPositiveArena,s2Step302EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step302EarlyControl_classEqualityOwned : ([793, 805] : List Wire).toFinset⊆s2Step302EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlPositiveArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_classEquality : compileHmrEqualityLog s2Step302EarlyControlPositiveArena [793, 805] 0 s2Step302EarlyControlLog.classWork=some (s2Step302EarlyControlEqualityArena,s2Step302EarlyControlLog.classWork,s2Step302EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step302EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step302EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step302EarlyControl_classOwned : ([777, 826, 793] : List Wire).toFinset⊆s2Step302EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_positiveBorrow : s2Step302EarlyControlZeroArena.checkBorrow (1) s2Step302EarlyControlLog.positiveWork=some s2Step302EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step302EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step302EarlyControlPositiveArena,s2Step302EarlyControlZeroArena,s2Step302EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step302EarlyControl_class : compileHmrSourceClassLog s2Step302EarlyControlZeroArena false 777 s2Step302EarlyControlZeroPlan.top 0 793 s2Step302EarlyControlLog.positiveWork s2Step302EarlyControlLog.classWork=some s2Step302EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step302EarlyControlClassPlan s2Step302EarlyControlZeroArena false 777 s2Step302EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step302EarlyControl_classOwned
  · exact s2Step302EarlyControl_positiveBorrow
  · exact s2Step302EarlyControl_classEquality

private theorem s2Step302EarlyControl_entryRecordOwned : ([846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_fitBorrow : s2Step302EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step302EarlyControlLog.recordFresh=some s2Step302EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step302EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step302EarlyControlFittedArena,s2Step302EarlyControlFlagArena,s2Step302EarlyControlLog,arenaWires]

private theorem s2Step302EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step302EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_fit : compileHmrRecordGrowLog s2Step302EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step302EarlyControlLog.recordFresh=some s2Step302EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step302EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step302EarlyControl_fitBorrow

private theorem s2Step302EarlyControl_flagsBorrow : s2Step302EarlyControlEqualityArena.checkBorrow (6) s2Step302EarlyControlLog.flagWork=some s2Step302EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step302EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step302EarlyControlFlagArena,s2Step302EarlyControlEqualityArena,s2Step302EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step302EarlyControl_flagsOwned : ([787, 253, 252, 251] : List Wire).toFinset⊆s2Step302EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_flags : compileHmrFlagsLog s2Step302EarlyControlClassPlan.equalityArena s2Step302EarlyControlClassPlan.equality.top 253 252 251 s2Step302EarlyControlLog.flagWork=some s2Step302EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step302EarlyControl_flagsOwned⟩
  · exact s2Step302EarlyControl_flagsBorrow

private theorem s2Step302EarlyControl_historyBorrow : s2Step302EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step302EarlyControlLog.recordFresh=some s2Step302EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step302EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step302EarlyControlHistoryArena,s2Step302EarlyControlArena,s2Step302EarlyControlLog,arenaWires]

private theorem s2Step302EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_history : compileHmrRecordGrowLog s2Step302EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step302EarlyControlLog.recordFresh=some s2Step302EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step302EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step302EarlyControl_historyBorrow

private theorem s2Step302EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step302EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step302EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_sigmaRelease : s2Step302EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step302EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step302EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step302EarlyControlSigmaArena,s2Step302EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step302EarlyControl_sigma : compileHmrSigmaDropLog s2Step302EarlyControlHistoryArena false 0 0 254 793 []=some s2Step302EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step302EarlyControl_sigmaOwned⟩
  · exact s2Step302EarlyControl_sigmaRelease

private theorem s2Step302EarlyControl_zeroBorrow : s2Step302EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step302EarlyControlLog.zeroWork=some s2Step302EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step302EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step302EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step302EarlyControlZeroArena,s2Step302EarlyControlArena,s2Step302EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step302EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step302EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step302EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EarlyControl_zero : compileHmrEqualityLog s2Step302EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step302EarlyControlLog.zeroWork=some (s2Step302EarlyControlZeroArena,s2Step302EarlyControlLog.zeroWork,s2Step302EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step302EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step302EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step302EarlyControl_logged : s2Step302EarlyControlPlan.Logged s2Step302EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 793 254 253 252 251 846 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step302EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step302EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step302EarlyControl_zero
  · exact s2Step302EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step302EarlyControl_flags
  · exact s2Step302EarlyControl_fit
  · exact s2Step302EarlyControl_history
  · exact s2Step302EarlyControl_sigma
  · exact s2Step302EarlyControl_branch

private theorem s2Step302EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step302EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 793 254 253 252 251 846 55 s2Step302EarlyControlLog=some s2Step302EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step302EarlyControlPlan s2Step302EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 793 254 253 252 251 846 55 s2Step302EarlyControl_logged

private def s2Step302EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩

private def s2Step302EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step302EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118],769⟩

private def s2Step302EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩

private def s2Step302FrontBank : WindowBank := ⟨s2Step302EntryFRow,s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow⟩

private def s2Step302Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 806, 768]

private def s2Step302Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820, 826, 769]

private def s2Step302Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 770]

private def s2Step302Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 811, 771]

private theorem s2Step302Counter_apart : Disjoint s2Step302HeadFvAfter.live s2Step302CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step302HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302Counter_borrowed : s2Step302HeadFvAfter.checkBorrow 4 s2Step302CounterWork=some s2Step302CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step302HeadFvAfter s2Step302CounterDuring s2Step302CounterWork.toFinset s2Step302Counter_bounded s2Step302Counter_apart rfl

private theorem s2Step302Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step302HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step302HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302Counter_checked : compileHmrCounterStepLog s2Step302HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step302CounterWork=some s2Step302CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step302HeadFvAfter.live := fun q hq => s2Step302Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step302Counter_borrowed

private def s2Step302EntryFAfter : Arena := s2Step302EntryFBefore

private theorem s2Step302EntryBank_incomingDistinct : ([s2Step302EntryFRow,s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302EntryF_Incoming : rowsOwned s2Step302EntryFBefore [s2Step302EntryFRow,s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302EntryFRow,s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow] 0 s2Step302EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302EntryBank_outgoingOwned : rowsOwned s2Step302EntryGvAfter [s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step302EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302EntryF_Outgoing : rowsOwned s2Step302EntryGvAfter [s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut] :=
  hmrRows_owned_drop s2Step302EntryGvAfter [s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut] 0 s2Step302EntryBank_outgoingOwned

private theorem s2Step302EntryF_distinct : (s2Step302EntryFRow.sign::s2Step302EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302EntryF_owned : (s2Step302EntryFRow.sign::s2Step302EntryFRow.payload).toFinset⊆s2Step302EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EntryF_reserved : s2Step302EntryFBefore.reserve s2Step302EntryFFresh.toFinset=some s2Step302EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step302EntryFFresh,arenaWires]
  · norm_num [s2Step302EntryFBefore,s2Step302EntryFFresh,arenaWires]
  · simp only [s2Step302EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step302EntryF_checked : planRowResizeLog s2Step302EntryFBefore s2Step302EntryFRow 120 s2Step302EntryFFresh=
    some (s2Step302EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩,growRow 768 s2Step302EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step302EntryFBefore s2Step302EntryFAfter s2Step302EntryFRow 120 s2Step302EntryFFresh
    s2Step302EntryF_distinct s2Step302EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302EntryF_reserved
  have rowEq : WindowRow.mk (s2Step302EntryFRow.payload++s2Step302EntryFFresh) s2Step302EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step302EntryFvAfter : Arena := s2Step302EntryGAfter

private def s2Step302EntryFvBefore : Arena := s2Step302EntryGAfter

private theorem s2Step302EntryFv_Incoming : rowsOwned s2Step302EntryFvBefore [s2Step302EntryFvRow,s2Step302EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302EntryFRow,s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow] 2 s2Step302EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302EntryFv_Outgoing : rowsOwned s2Step302EntryGvAfter [s2Step302EntryFvOut,s2Step302EntryGvOut] :=
  hmrRows_owned_drop s2Step302EntryGvAfter [s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut] 2 s2Step302EntryBank_outgoingOwned

private theorem s2Step302EntryFv_distinct : (s2Step302EntryFvRow.sign::s2Step302EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302EntryFv_owned : (s2Step302EntryFvRow.sign::s2Step302EntryFvRow.payload).toFinset⊆s2Step302EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EntryFv_reserved : s2Step302EntryFvBefore.reserve s2Step302EntryFvFresh.toFinset=some s2Step302EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step302EntryFvFresh,arenaWires]
  · norm_num [s2Step302EntryFvBefore,s2Step302EntryGAfter,s2Step302EntryFvFresh,arenaWires]
  · simp only [s2Step302EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step302EntryFv_checked : planRowResizeLog s2Step302EntryFvBefore s2Step302EntryFvRow 166 s2Step302EntryFvFresh=
    some (s2Step302EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩,growRow 770 s2Step302EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step302EntryFvBefore s2Step302EntryFvAfter s2Step302EntryFvRow 166 s2Step302EntryFvFresh
    s2Step302EntryFv_distinct s2Step302EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step302EntryFvRow.payload++s2Step302EntryFvFresh) s2Step302EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step302EntryGBefore : Arena := s2Step302EntryFBefore

private theorem s2Step302EntryG_Incoming : rowsOwned s2Step302EntryGBefore [s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302EntryFRow,s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow] 1 s2Step302EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302EntryG_Outgoing : rowsOwned s2Step302EntryGvAfter [s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut] :=
  hmrRows_owned_drop s2Step302EntryGvAfter [s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut] 1 s2Step302EntryBank_outgoingOwned

private theorem s2Step302EntryG_distinct : (s2Step302EntryGRow.sign::s2Step302EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302EntryG_owned : (s2Step302EntryGRow.sign::s2Step302EntryGRow.payload).toFinset⊆s2Step302EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EntryG_reserved : s2Step302EntryGBefore.reserve s2Step302EntryGFresh.toFinset=some s2Step302EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step302EntryGFresh,arenaWires]
  · norm_num [s2Step302EntryGBefore,s2Step302EntryFBefore,s2Step302EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step302EntryGAfter,s2Step302EntryGBefore,s2Step302EntryFBefore,s2Step302EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step302EntryG_checked : planRowResizeLog s2Step302EntryGBefore s2Step302EntryGRow 120 s2Step302EntryGFresh=
    some (s2Step302EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820],769⟩,growRow 769 s2Step302EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step302EntryGBefore s2Step302EntryGAfter s2Step302EntryGRow 120 s2Step302EntryGFresh
    s2Step302EntryG_distinct s2Step302EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302EntryG_reserved
  have rowEq : WindowRow.mk (s2Step302EntryGRow.payload++s2Step302EntryGFresh) s2Step302EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step302EntryGvBefore : Arena := s2Step302EntryGAfter

private theorem s2Step302EntryGv_Incoming : rowsOwned s2Step302EntryGvBefore [s2Step302EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302EntryFRow,s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow] 3 s2Step302EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302EntryGv_Outgoing : rowsOwned s2Step302EntryGvAfter [s2Step302EntryGvOut] :=
  hmrRows_owned_drop s2Step302EntryGvAfter [s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut] 3 s2Step302EntryBank_outgoingOwned

private theorem s2Step302EntryGv_distinct : (s2Step302EntryGvRow.sign::s2Step302EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302EntryGv_owned : (s2Step302EntryGvRow.sign::s2Step302EntryGvRow.payload).toFinset⊆s2Step302EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302EntryGv_reserved : s2Step302EntryGvBefore.reserve s2Step302EntryGvFresh.toFinset=some s2Step302EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step302EntryGvFresh,arenaWires]
  · norm_num [s2Step302EntryGvBefore,s2Step302EntryGAfter,s2Step302EntryGvFresh,arenaWires]
  · simp only [s2Step302EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step302EntryGv_checked : planRowResizeLog s2Step302EntryGvBefore s2Step302EntryGvRow 166 s2Step302EntryGvFresh=
    some (s2Step302EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩,growRow 771 s2Step302EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step302EntryGvBefore s2Step302EntryGvAfter s2Step302EntryGvRow 166 s2Step302EntryGvFresh
    s2Step302EntryGv_distinct s2Step302EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step302EntryGvRow.payload++s2Step302EntryGvFresh) s2Step302EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step302EntryBank_rows : planWindowRowsLog s2Step302EntryFBefore [(s2Step302EntryFRow,120),(s2Step302EntryGRow,120),(s2Step302EntryFvRow,166),(s2Step302EntryGvRow,166)] [s2Step302EntryFFresh,s2Step302EntryGFresh,s2Step302EntryFvFresh,s2Step302EntryGvFresh]=
    some (s2Step302EntryGvAfter,[s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut],(growRow 768 s2Step302EntryFFresh ++ (growRow 769 s2Step302EntryGFresh ++ (growRow 770 s2Step302EntryFvFresh ++ (growRow 771 s2Step302EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step302EntryGvAfter [] []=some (s2Step302EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step302EntryGvBefore s2Step302EntryGvAfter s2Step302EntryGvAfter
    s2Step302EntryGvRow s2Step302EntryGvOut 166 s2Step302EntryGvFresh [] [] []
    (growRow 771 s2Step302EntryGvFresh) ([]) s2Step302EntryGv_Incoming s2Step302EntryGv_checked h4 s2Step302EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step302EntryFvBefore s2Step302EntryFvAfter s2Step302EntryGvAfter
    s2Step302EntryFvRow s2Step302EntryFvOut 166 s2Step302EntryFvFresh [(s2Step302EntryGvRow,166)] [s2Step302EntryGvFresh] [s2Step302EntryGvOut]
    (growRow 770 s2Step302EntryFvFresh) ((growRow 771 s2Step302EntryGvFresh ++ [])) s2Step302EntryFv_Incoming s2Step302EntryFv_checked h3 s2Step302EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step302EntryGBefore s2Step302EntryGAfter s2Step302EntryGvAfter
    s2Step302EntryGRow s2Step302EntryGOut 120 s2Step302EntryGFresh [(s2Step302EntryFvRow,166),(s2Step302EntryGvRow,166)] [s2Step302EntryFvFresh,s2Step302EntryGvFresh] [s2Step302EntryFvOut,s2Step302EntryGvOut]
    (growRow 769 s2Step302EntryGFresh) ((growRow 770 s2Step302EntryFvFresh ++ (growRow 771 s2Step302EntryGvFresh ++ []))) s2Step302EntryG_Incoming s2Step302EntryG_checked h2 s2Step302EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step302EntryFBefore s2Step302EntryFAfter s2Step302EntryGvAfter
    s2Step302EntryFRow s2Step302EntryFOut 120 s2Step302EntryFFresh [(s2Step302EntryGRow,120),(s2Step302EntryFvRow,166),(s2Step302EntryGvRow,166)] [s2Step302EntryGFresh,s2Step302EntryFvFresh,s2Step302EntryGvFresh] [s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut]
    (growRow 768 s2Step302EntryFFresh) ((growRow 769 s2Step302EntryGFresh ++ (growRow 770 s2Step302EntryFvFresh ++ (growRow 771 s2Step302EntryGvFresh ++ [])))) s2Step302EntryF_Incoming s2Step302EntryF_checked h1 s2Step302EntryF_Outgoing
  exact h0

private theorem s2Step302EntryBank_checked : compileHmrBankResizeLog .entry s2Step302EntryFBefore ⟨s2Step302EntryFRow,s2Step302EntryGRow,s2Step302EntryFvRow,s2Step302EntryGvRow⟩ ⟨120,120,166,166⟩ [s2Step302EntryFFresh,s2Step302EntryGFresh,s2Step302EntryFvFresh,s2Step302EntryGvFresh]=
    some (s2Step302EntryGvAfter,⟨s2Step302EntryFOut,s2Step302EntryGOut,s2Step302EntryFvOut,s2Step302EntryGvOut⟩,(growRow 768 s2Step302EntryFFresh ++ (growRow 769 s2Step302EntryGFresh ++ (growRow 770 s2Step302EntryFvFresh ++ (growRow 771 s2Step302EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step302EntryBank_rows]
  rfl

private def s2Step302ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302ExitFBefore : Arena := s2Step302ExitGAfter

private def s2Step302ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 806],768⟩

private def s2Step302ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step302ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820, 826],769⟩

private def s2Step302ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 811],771⟩

private theorem s2Step302ExitBank_incomingDistinct : ([s2Step302ExitGRow,s2Step302ExitFRow,s2Step302ExitFvRow,s2Step302ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302ExitF_Incoming : rowsOwned s2Step302ExitFBefore [s2Step302ExitFRow,s2Step302ExitFvRow,s2Step302ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302ExitGRow,s2Step302ExitFRow,s2Step302ExitFvRow,s2Step302ExitGvRow] 1 s2Step302ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302ExitFBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302ExitBank_outgoingOwned : rowsOwned s2Step302ExitGvAfter [s2Step302ExitGOut,s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step302ExitGvAfter (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302ExitF_Outgoing : rowsOwned s2Step302ExitGvAfter [s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut] :=
  hmrRows_owned_drop s2Step302ExitGvAfter [s2Step302ExitGOut,s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut] 1 s2Step302ExitBank_outgoingOwned

private theorem s2Step302ExitF_distinct : (s2Step302ExitFRow.sign::s2Step302ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302ExitF_owned : (s2Step302ExitFRow.sign::s2Step302ExitFRow.payload).toFinset⊆s2Step302ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302ExitFBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302ExitF_retired : s2Step302ExitFBefore.retireSet s2Step302ExitFExtra.toFinset=s2Step302ExitFAfter := by
  unfold Arena.retireSet s2Step302ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step302ExitFBefore,s2Step302ExitGAfter,s2Step302ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step302ExitF_checked : planRowResizeLog s2Step302ExitFBefore s2Step302ExitFRow 120 []=
    some (s2Step302ExitFAfter,s2Step302ExitFOut,shrinkRow 768 s2Step302ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step302ExitFBefore s2Step302ExitFRow 120 s2Step302ExitF_distinct s2Step302ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step302ExitFRow.payload.take 120) s2Step302ExitFRow.sign=s2Step302ExitFOut := by decide +kernel
  have hi : s2Step302ExitFRow.payload.drop 120=s2Step302ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step302ExitF_retired] at result
  exact result

private def s2Step302ExitFvAfter : Arena := s2Step302ExitFAfter

private def s2Step302ExitFvBefore : Arena := s2Step302ExitFAfter

private theorem s2Step302ExitFv_Incoming : rowsOwned s2Step302ExitFvBefore [s2Step302ExitFvRow,s2Step302ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302ExitGRow,s2Step302ExitFRow,s2Step302ExitFvRow,s2Step302ExitGvRow] 2 s2Step302ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302ExitFvBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302ExitFv_Outgoing : rowsOwned s2Step302ExitGvAfter [s2Step302ExitFvOut,s2Step302ExitGvOut] :=
  hmrRows_owned_drop s2Step302ExitGvAfter [s2Step302ExitGOut,s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut] 2 s2Step302ExitBank_outgoingOwned

private theorem s2Step302ExitFv_distinct : (s2Step302ExitFvRow.sign::s2Step302ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302ExitFv_owned : (s2Step302ExitFvRow.sign::s2Step302ExitFvRow.payload).toFinset⊆s2Step302ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302ExitFvBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302ExitFv_reserved : s2Step302ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step302ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step302ExitFv_checked : planRowResizeLog s2Step302ExitFvBefore s2Step302ExitFvRow 167 []=
    some (s2Step302ExitFvAfter,s2Step302ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step302ExitFvBefore s2Step302ExitFvAfter s2Step302ExitFvRow 167 []
    s2Step302ExitFv_distinct s2Step302ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step302ExitFvRow.payload++[]) s2Step302ExitFvRow.sign=s2Step302ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step302ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step302ExitG_Incoming : rowsOwned s2Step302ExitGBefore [s2Step302ExitGRow,s2Step302ExitFRow,s2Step302ExitFvRow,s2Step302ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302ExitGRow,s2Step302ExitFRow,s2Step302ExitFvRow,s2Step302ExitGvRow] 0 s2Step302ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302ExitG_Outgoing : rowsOwned s2Step302ExitGvAfter [s2Step302ExitGOut,s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut] :=
  hmrRows_owned_drop s2Step302ExitGvAfter [s2Step302ExitGOut,s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut] 0 s2Step302ExitBank_outgoingOwned

private theorem s2Step302ExitG_distinct : (s2Step302ExitGRow.sign::s2Step302ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302ExitG_owned : (s2Step302ExitGRow.sign::s2Step302ExitGRow.payload).toFinset⊆s2Step302ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302ExitG_retired : s2Step302ExitGBefore.retireSet s2Step302ExitGExtra.toFinset=s2Step302ExitGAfter := by
  unfold Arena.retireSet s2Step302ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step302ExitGBefore,s2Step302ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step302ExitG_checked : planRowResizeLog s2Step302ExitGBefore s2Step302ExitGRow 118 []=
    some (s2Step302ExitGAfter,s2Step302ExitGOut,shrinkRow 769 s2Step302ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step302ExitGBefore s2Step302ExitGRow 118 s2Step302ExitG_distinct s2Step302ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step302ExitGRow.payload.take 118) s2Step302ExitGRow.sign=s2Step302ExitGOut := by decide +kernel
  have hi : s2Step302ExitGRow.payload.drop 118=s2Step302ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step302ExitG_retired] at result
  exact result

private def s2Step302ExitGvBefore : Arena := s2Step302ExitFAfter

private theorem s2Step302ExitGv_Incoming : rowsOwned s2Step302ExitGvBefore [s2Step302ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302ExitGRow,s2Step302ExitFRow,s2Step302ExitFvRow,s2Step302ExitGvRow] 3 s2Step302ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302ExitGvBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302ExitGv_Outgoing : rowsOwned s2Step302ExitGvAfter [s2Step302ExitGvOut] :=
  hmrRows_owned_drop s2Step302ExitGvAfter [s2Step302ExitGOut,s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut] 3 s2Step302ExitBank_outgoingOwned

private theorem s2Step302ExitGv_distinct : (s2Step302ExitGvRow.sign::s2Step302ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302ExitGv_owned : (s2Step302ExitGvRow.sign::s2Step302ExitGvRow.payload).toFinset⊆s2Step302ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302ExitGvBefore (fun q => (0≤q ∧ q<118) ∨ (119≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302ExitGv_retired : s2Step302ExitGvBefore.retireSet s2Step302ExitGvExtra.toFinset=s2Step302ExitGvAfter := by
  unfold Arena.retireSet s2Step302ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step302ExitGvBefore,s2Step302ExitFAfter,s2Step302ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step302ExitGv_checked : planRowResizeLog s2Step302ExitGvBefore s2Step302ExitGvRow 166 []=
    some (s2Step302ExitGvAfter,s2Step302ExitGvOut,shrinkRow 771 s2Step302ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step302ExitGvBefore s2Step302ExitGvRow 166 s2Step302ExitGv_distinct s2Step302ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step302ExitGvRow.payload.take 166) s2Step302ExitGvRow.sign=s2Step302ExitGvOut := by decide +kernel
  have hi : s2Step302ExitGvRow.payload.drop 166=s2Step302ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step302ExitGv_retired] at result
  exact result

private theorem s2Step302ExitBank_rows : planWindowRowsLog s2Step302ExitGBefore [(s2Step302ExitGRow,118),(s2Step302ExitFRow,120),(s2Step302ExitFvRow,167),(s2Step302ExitGvRow,166)] [[],[],[],[]]=
    some (s2Step302ExitGvAfter,[s2Step302ExitGOut,s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut],(shrinkRow 769 s2Step302ExitGExtra ++ (shrinkRow 768 s2Step302ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step302ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step302ExitGvAfter [] []=some (s2Step302ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step302ExitGvBefore s2Step302ExitGvAfter s2Step302ExitGvAfter
    s2Step302ExitGvRow s2Step302ExitGvOut 166 [] [] [] []
    (shrinkRow 771 s2Step302ExitGvExtra) ([]) s2Step302ExitGv_Incoming s2Step302ExitGv_checked h4 s2Step302ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step302ExitFvBefore s2Step302ExitFvAfter s2Step302ExitGvAfter
    s2Step302ExitFvRow s2Step302ExitFvOut 167 [] [(s2Step302ExitGvRow,166)] [[]] [s2Step302ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step302ExitGvExtra ++ [])) s2Step302ExitFv_Incoming s2Step302ExitFv_checked h3 s2Step302ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step302ExitFBefore s2Step302ExitFAfter s2Step302ExitGvAfter
    s2Step302ExitFRow s2Step302ExitFOut 120 [] [(s2Step302ExitFvRow,167),(s2Step302ExitGvRow,166)] [[],[]] [s2Step302ExitFvOut,s2Step302ExitGvOut]
    (shrinkRow 768 s2Step302ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step302ExitGvExtra ++ []))) s2Step302ExitF_Incoming s2Step302ExitF_checked h2 s2Step302ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step302ExitGBefore s2Step302ExitGAfter s2Step302ExitGvAfter
    s2Step302ExitGRow s2Step302ExitGOut 118 [] [(s2Step302ExitFRow,120),(s2Step302ExitFvRow,167),(s2Step302ExitGvRow,166)] [[],[],[]] [s2Step302ExitFOut,s2Step302ExitFvOut,s2Step302ExitGvOut]
    (shrinkRow 769 s2Step302ExitGExtra) ((shrinkRow 768 s2Step302ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step302ExitGvExtra ++ [])))) s2Step302ExitG_Incoming s2Step302ExitG_checked h1 s2Step302ExitG_Outgoing
  exact h0

private theorem s2Step302ExitBank_checked : compileHmrBankResizeLog .exit s2Step302ExitGBefore ⟨s2Step302ExitFRow,s2Step302ExitGRow,s2Step302ExitFvRow,s2Step302ExitGvRow⟩ ⟨120,118,167,166⟩ [[],[],[],[]]=
    some (s2Step302ExitGvAfter,⟨s2Step302ExitFOut,s2Step302ExitGOut,s2Step302ExitFvOut,s2Step302ExitGvOut⟩,(shrinkRow 769 s2Step302ExitGExtra ++ (shrinkRow 768 s2Step302ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step302ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step302ExitBank_rows]
  rfl

private theorem s2Step302Add0_apart : Disjoint s2Step302Add0Arena.live s2Step302Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step302Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302Add0_card : s2Step302Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step302Add0_borrowed : s2Step302Add0Arena.checkBorrow (hmrHybridCount s2Step302Add0Arena s2Step302Add0B.length) s2Step302Add0Work=some s2Step302Add0During := by
  have len : s2Step302Add0Work.length=hmrHybridCount s2Step302Add0Arena s2Step302Add0B.length := by
    rw [hmrHybridCount,s2Step302Add0_card]
    decide +kernel
  have nd : s2Step302Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step302Add0Arena s2Step302Add0During s2Step302Add0Work.toFinset s2Step302Add0_bounded s2Step302Add0_apart rfl

private theorem s2Step302Add0_distinct : (805::846::787::(s2Step302Add0A++s2Step302Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302Add0_owned : (805::846::787::(s2Step302Add0A++s2Step302Add0B)).toFinset⊆s2Step302Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step302Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302Add0_checked : compileHmrHybridCinLog s2Step302Add0Arena 846 805 787 s2Step302Add0A s2Step302Add0B s2Step302Add0Work=some s2Step302Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step302Add0Arena s2Step302Add0During 846 805 787 s2Step302Add0A s2Step302Add0B s2Step302Add0Work
    (by decide +kernel) (by decide +kernel) s2Step302Add0_distinct
    (fun q hq => s2Step302Add0_owned (List.mem_toFinset.mpr hq)) s2Step302Add0_borrowed

private theorem s2Step302Add1_apart : Disjoint s2Step302Add1Arena.live s2Step302Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step302Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302Add1_card : s2Step302Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step302Add1_borrowed : s2Step302Add1Arena.checkBorrow (hmrHybridCount s2Step302Add1Arena s2Step302Add1B.length) s2Step302Add1Work=some s2Step302Add1During := by
  have len : s2Step302Add1Work.length=hmrHybridCount s2Step302Add1Arena s2Step302Add1B.length := by
    rw [hmrHybridCount,s2Step302Add1_card]
    decide +kernel
  have nd : s2Step302Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step302Add1Arena s2Step302Add1During s2Step302Add1Work.toFinset s2Step302Add1_bounded s2Step302Add1_apart rfl

private theorem s2Step302Add1_distinct : (805::846::787::(s2Step302Add1A++s2Step302Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302Add1_owned : (805::846::787::(s2Step302Add1A++s2Step302Add1B)).toFinset⊆s2Step302Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step302Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302Add1_checked : compileHmrHybridCinLog s2Step302Add1Arena 846 805 787 s2Step302Add1A s2Step302Add1B s2Step302Add1Work=some s2Step302Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step302Add1Arena s2Step302Add1During 846 805 787 s2Step302Add1A s2Step302Add1B s2Step302Add1Work
    (by decide +kernel) (by decide +kernel) s2Step302Add1_distinct
    (fun q hq => s2Step302Add1_owned (List.mem_toFinset.mpr hq)) s2Step302Add1_borrowed

private theorem s2Step302F4_apart : Disjoint (s2Step302Add0A++s2Step302Add0B).toFinset (s2Step302Add1A++s2Step302Add1B).toFinset := by
  have nd : ((s2Step302Add0A++s2Step302Add0B)++(s2Step302Add1A++s2Step302Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step302F4_carry : s2Step302F4FlagArena.checkBorrow 1 [787]=some s2Step302Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step302F4FlagArena,s2Step302HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step302F4FlagArena,s2Step302HeadFvAfter,s2Step302Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step302F4_distinct : (793::846::805::787::((s2Step302Add0A++s2Step302Add1A)++(s2Step302Add0B++s2Step302Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302F4_flag : s2Step302HeadFvAfter.checkBorrow 1 [805]=some s2Step302F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step302HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step302F4_owned : (793::846::((s2Step302Add0A++s2Step302Add1A)++(s2Step302Add0B++s2Step302Add1B))).toFinset⊆s2Step302HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step302HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302F4_checked : compileHmrHybridF4Log s2Step302HeadFvAfter 793 846 s2Step302Add0A s2Step302Add0B s2Step302Add1A s2Step302Add1B [805] [787] s2Step302Add0Work s2Step302Add1Work=some s2Step302F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step302HeadFvAfter s2Step302F4FlagArena s2Step302Add0Arena s2Step302Add0During s2Step302Add1During 793 846
    s2Step302Add0A s2Step302Add0B s2Step302Add1A s2Step302Add1B [805] [787] s2Step302Add0Work s2Step302Add1Work
    (fun q hq => s2Step302F4_owned (List.mem_toFinset.mpr hq)) s2Step302F4_flag s2Step302F4_carry
    s2Step302F4_distinct s2Step302F4_apart s2Step302Add0_checked s2Step302Add1_checked

private theorem s2Step302Front_branch : s2Step302FrontSigmaArena.checkBorrow 1 [846]=some s2Step302HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step302FrontSigmaArena,s2Step302EntryGvAfter,s2Step302EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step302FrontSigmaArena,s2Step302EntryGvAfter,s2Step302EntryGAfter,s2Step302HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step302Front_entry : HmrFrontEntryValid s2Step302EntryFBefore s2Step302FrontBank 120 166 ⟨120,118,167,166⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step302FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step302EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step302EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step302FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step302Front_sigma : s2Step302EntryGvAfter.checkBorrow 1 [793]=some s2Step302FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step302EntryGvAfter,s2Step302EntryGAfter,arenaWires]
  · rfl

private def s2Step302HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302HeadFBefore : Arena := s2Step302HeadGAfter

private def s2Step302HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩

private def s2Step302HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783],770⟩

private def s2Step302HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820],769⟩

private def s2Step302HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩

private theorem s2Step302HeadBank_incomingDistinct : ([s2Step302HeadGRow,s2Step302HeadFRow,s2Step302HeadGvRow,s2Step302HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302HeadF_Incoming : rowsOwned s2Step302HeadFBefore [s2Step302HeadFRow,s2Step302HeadGvRow,s2Step302HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302HeadGRow,s2Step302HeadFRow,s2Step302HeadGvRow,s2Step302HeadFvRow] 1 s2Step302HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302HeadBank_outgoingOwned : rowsOwned s2Step302HeadFvAfter [s2Step302HeadGOut,s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step302HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302HeadF_Outgoing : rowsOwned s2Step302HeadFvAfter [s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut] :=
  hmrRows_owned_drop s2Step302HeadFvAfter [s2Step302HeadGOut,s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut] 1 s2Step302HeadBank_outgoingOwned

private theorem s2Step302HeadF_distinct : (s2Step302HeadFRow.sign::s2Step302HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302HeadF_owned : (s2Step302HeadFRow.sign::s2Step302HeadFRow.payload).toFinset⊆s2Step302HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302HeadF_reserved : s2Step302HeadFBefore.reserve s2Step302HeadFFresh.toFinset=some s2Step302HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step302HeadFFresh,arenaWires]
  · norm_num [s2Step302HeadFBefore,s2Step302HeadGAfter,s2Step302HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step302HeadFAfter,s2Step302HeadFBefore,s2Step302HeadGAfter,s2Step302HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step302HeadF_checked : planRowResizeLog s2Step302HeadFBefore s2Step302HeadFRow 121 s2Step302HeadFFresh=
    some (s2Step302HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 806],768⟩,growRow 768 s2Step302HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step302HeadFBefore s2Step302HeadFAfter s2Step302HeadFRow 121 s2Step302HeadFFresh
    s2Step302HeadF_distinct s2Step302HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302HeadF_reserved
  have rowEq : WindowRow.mk (s2Step302HeadFRow.payload++s2Step302HeadFFresh) s2Step302HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 806],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step302HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step302HeadFvBefore : Arena := s2Step302HeadGvAfter

private theorem s2Step302HeadFv_Incoming : rowsOwned s2Step302HeadFvBefore [s2Step302HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302HeadGRow,s2Step302HeadFRow,s2Step302HeadGvRow,s2Step302HeadFvRow] 3 s2Step302HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302HeadFv_Outgoing : rowsOwned s2Step302HeadFvAfter [s2Step302HeadFvOut] :=
  hmrRows_owned_drop s2Step302HeadFvAfter [s2Step302HeadGOut,s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut] 3 s2Step302HeadBank_outgoingOwned

private theorem s2Step302HeadFv_distinct : (s2Step302HeadFvRow.sign::s2Step302HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302HeadFv_owned : (s2Step302HeadFvRow.sign::s2Step302HeadFvRow.payload).toFinset⊆s2Step302HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302HeadFv_reserved : s2Step302HeadFvBefore.reserve s2Step302HeadFvFresh.toFinset=some s2Step302HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step302HeadFvFresh,arenaWires]
  · norm_num [s2Step302HeadFvBefore,s2Step302HeadGvAfter,s2Step302HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step302HeadFvAfter,s2Step302HeadFvBefore,s2Step302HeadGvAfter,s2Step302HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step302HeadFv_checked : planRowResizeLog s2Step302HeadFvBefore s2Step302HeadFvRow 167 s2Step302HeadFvFresh=
    some (s2Step302HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩,growRow 770 s2Step302HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step302HeadFvBefore s2Step302HeadFvAfter s2Step302HeadFvRow 167 s2Step302HeadFvFresh
    s2Step302HeadFv_distinct s2Step302HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step302HeadFvRow.payload++s2Step302HeadFvFresh) s2Step302HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step302HeadG_Incoming : rowsOwned s2Step302HeadGBefore [s2Step302HeadGRow,s2Step302HeadFRow,s2Step302HeadGvRow,s2Step302HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302HeadGRow,s2Step302HeadFRow,s2Step302HeadGvRow,s2Step302HeadFvRow] 0 s2Step302HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302HeadG_Outgoing : rowsOwned s2Step302HeadFvAfter [s2Step302HeadGOut,s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut] :=
  hmrRows_owned_drop s2Step302HeadFvAfter [s2Step302HeadGOut,s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut] 0 s2Step302HeadBank_outgoingOwned

private theorem s2Step302HeadG_distinct : (s2Step302HeadGRow.sign::s2Step302HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302HeadG_owned : (s2Step302HeadGRow.sign::s2Step302HeadGRow.payload).toFinset⊆s2Step302HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302HeadG_reserved : s2Step302HeadGBefore.reserve s2Step302HeadGFresh.toFinset=some s2Step302HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step302HeadGFresh,arenaWires]
  · norm_num [s2Step302HeadGBefore,s2Step302HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step302HeadGAfter,s2Step302HeadGBefore,s2Step302HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step302HeadG_checked : planRowResizeLog s2Step302HeadGBefore s2Step302HeadGRow 121 s2Step302HeadGFresh=
    some (s2Step302HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820, 826],769⟩,growRow 769 s2Step302HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step302HeadGBefore s2Step302HeadGAfter s2Step302HeadGRow 121 s2Step302HeadGFresh
    s2Step302HeadG_distinct s2Step302HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302HeadG_reserved
  have rowEq : WindowRow.mk (s2Step302HeadGRow.payload++s2Step302HeadGFresh) s2Step302HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 820, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step302HeadGvBefore : Arena := s2Step302HeadFAfter

private theorem s2Step302HeadGv_Incoming : rowsOwned s2Step302HeadGvBefore [s2Step302HeadGvRow,s2Step302HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step302HeadGRow,s2Step302HeadFRow,s2Step302HeadGvRow,s2Step302HeadFvRow] 2 s2Step302HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step302HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step302HeadGv_Outgoing : rowsOwned s2Step302HeadFvAfter [s2Step302HeadGvOut,s2Step302HeadFvOut] :=
  hmrRows_owned_drop s2Step302HeadFvAfter [s2Step302HeadGOut,s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut] 2 s2Step302HeadBank_outgoingOwned

private theorem s2Step302HeadGv_distinct : (s2Step302HeadGvRow.sign::s2Step302HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step302HeadGv_owned : (s2Step302HeadGvRow.sign::s2Step302HeadGvRow.payload).toFinset⊆s2Step302HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step302HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step302HeadGv_reserved : s2Step302HeadGvBefore.reserve s2Step302HeadGvFresh.toFinset=some s2Step302HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step302HeadGvFresh,arenaWires]
  · norm_num [s2Step302HeadGvBefore,s2Step302HeadFAfter,s2Step302HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step302HeadGvAfter,s2Step302HeadGvBefore,s2Step302HeadFAfter,s2Step302HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step302HeadGv_checked : planRowResizeLog s2Step302HeadGvBefore s2Step302HeadGvRow 167 s2Step302HeadGvFresh=
    some (s2Step302HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 811],771⟩,growRow 771 s2Step302HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step302HeadGvBefore s2Step302HeadGvAfter s2Step302HeadGvRow 167 s2Step302HeadGvFresh
    s2Step302HeadGv_distinct s2Step302HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step302HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step302HeadGvRow.payload++s2Step302HeadGvFresh) s2Step302HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step302HeadBank_rows : planWindowRowsLog s2Step302HeadGBefore [(s2Step302HeadGRow,121),(s2Step302HeadFRow,121),(s2Step302HeadGvRow,167),(s2Step302HeadFvRow,167)] [s2Step302HeadGFresh,s2Step302HeadFFresh,s2Step302HeadGvFresh,s2Step302HeadFvFresh]=
    some (s2Step302HeadFvAfter,[s2Step302HeadGOut,s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut],(growRow 769 s2Step302HeadGFresh ++ (growRow 768 s2Step302HeadFFresh ++ (growRow 771 s2Step302HeadGvFresh ++ (growRow 770 s2Step302HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step302HeadFvAfter [] []=some (s2Step302HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step302HeadFvBefore s2Step302HeadFvAfter s2Step302HeadFvAfter
    s2Step302HeadFvRow s2Step302HeadFvOut 167 s2Step302HeadFvFresh [] [] []
    (growRow 770 s2Step302HeadFvFresh) ([]) s2Step302HeadFv_Incoming s2Step302HeadFv_checked h4 s2Step302HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step302HeadGvBefore s2Step302HeadGvAfter s2Step302HeadFvAfter
    s2Step302HeadGvRow s2Step302HeadGvOut 167 s2Step302HeadGvFresh [(s2Step302HeadFvRow,167)] [s2Step302HeadFvFresh] [s2Step302HeadFvOut]
    (growRow 771 s2Step302HeadGvFresh) ((growRow 770 s2Step302HeadFvFresh ++ [])) s2Step302HeadGv_Incoming s2Step302HeadGv_checked h3 s2Step302HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step302HeadFBefore s2Step302HeadFAfter s2Step302HeadFvAfter
    s2Step302HeadFRow s2Step302HeadFOut 121 s2Step302HeadFFresh [(s2Step302HeadGvRow,167),(s2Step302HeadFvRow,167)] [s2Step302HeadGvFresh,s2Step302HeadFvFresh] [s2Step302HeadGvOut,s2Step302HeadFvOut]
    (growRow 768 s2Step302HeadFFresh) ((growRow 771 s2Step302HeadGvFresh ++ (growRow 770 s2Step302HeadFvFresh ++ []))) s2Step302HeadF_Incoming s2Step302HeadF_checked h2 s2Step302HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step302HeadGBefore s2Step302HeadGAfter s2Step302HeadFvAfter
    s2Step302HeadGRow s2Step302HeadGOut 121 s2Step302HeadGFresh [(s2Step302HeadFRow,121),(s2Step302HeadGvRow,167),(s2Step302HeadFvRow,167)] [s2Step302HeadFFresh,s2Step302HeadGvFresh,s2Step302HeadFvFresh] [s2Step302HeadFOut,s2Step302HeadGvOut,s2Step302HeadFvOut]
    (growRow 769 s2Step302HeadGFresh) ((growRow 768 s2Step302HeadFFresh ++ (growRow 771 s2Step302HeadGvFresh ++ (growRow 770 s2Step302HeadFvFresh ++ [])))) s2Step302HeadG_Incoming s2Step302HeadG_checked h1 s2Step302HeadG_Outgoing
  exact h0

private theorem s2Step302HeadBank_checked : compileHmrBankResizeLog .headroom s2Step302HeadGBefore ⟨s2Step302HeadFRow,s2Step302HeadGRow,s2Step302HeadFvRow,s2Step302HeadGvRow⟩ ⟨121,121,167,167⟩ [s2Step302HeadGFresh,s2Step302HeadFFresh,s2Step302HeadGvFresh,s2Step302HeadFvFresh]=
    some (s2Step302HeadFvAfter,⟨s2Step302HeadFOut,s2Step302HeadGOut,s2Step302HeadFvOut,s2Step302HeadGvOut⟩,(growRow 769 s2Step302HeadGFresh ++ (growRow 768 s2Step302HeadFFresh ++ (growRow 771 s2Step302HeadGvFresh ++ (growRow 770 s2Step302HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step302HeadBank_rows]
  rfl

private theorem s2Step302Front_checked : compileHmrSourceFrontLog s2Step302EntryFBefore s2Step302FrontBank 120 166 ⟨120,118,167,166⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step302FrontLog=some s2Step302FrontPlan := by
  have pairEq : s2Step302FrontPair=⟨s2Step302HeadFRow,s2Step302HeadGRow,s2Step302HeadFvRow,s2Step302HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step302FrontHead=⟨s2Step302ExitFRow,s2Step302ExitGRow,s2Step302ExitFvRow,s2Step302ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step302Add0A=s2Step302FrontHead.f.wires := by decide +kernel
  have gEq : s2Step302Add0B=s2Step302FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step302Add1A=s2Step302FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step302Add1B=s2Step302FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step302EntryFBefore s2Step302FrontBank 120 166 ⟨120,118,167,166⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step302FrontLog s2Step302FrontPlan
  · exact s2Step302Front_entry
  · exact s2Step302EntryBank_checked
  · exact s2Step302Front_sigma
  · rfl
  · exact s2Step302Front_branch
  · rfl
  · simpa only [s2Step302FrontPlan,pairEq] using s2Step302HeadBank_checked
  · simpa only [s2Step302FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step302F4_checked
  · exact s2Step302Counter_checked
  · rfl
  · simpa only [s2Step302FrontPlan,headEq] using s2Step302ExitBank_checked

private theorem s2Step302Complete_explicit_checked : compileHmrEarlyStepLog s2Step302EntryFBefore s2Step302FrontBank 120 166 ⟨120,118,167,166⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step302CompleteLog=some s2Step302CompletePlan := by
  let Q := s2Step302EarlyControlPlan
  have hq := s2Step302EarlyControl_plan_checked
  have fv1 : s2Step302CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step302CompleteOut.fv.payload[2]?.getD s2Step302CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step302CompleteOut.fv.payload[3]?.getD s2Step302CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step302CompleteOut.fv.payload[4]?.getD s2Step302CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step302EntryFBefore s2Step302EarlyControlArena s2Step302FrontBank 120 166 ⟨120,118,167,166⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step302CompleteLog s2Step302FrontPlan Q
    s2Step302Front_checked s2Step302Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step302Complete_owned s2Step302Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step302EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 793 s2Step302CompleteOut.fv.second (s2Step302CompleteOut.fv.payload[2]?.getD s2Step302CompleteOut.fv.sign) (s2Step302CompleteOut.fv.payload[3]?.getD s2Step302CompleteOut.fv.sign) (s2Step302CompleteOut.fv.payload[4]?.getD s2Step302CompleteOut.fv.sign) 846 55 s2Step302EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep302Arena : Arena := s2Step302EntryFBefore
def s2PrivateStep302Bank : WindowBank := s2Step302FrontBank
def s2PrivateStep302Spec : HmrSourceWalkStepLog := ⟨120,166,⟨120,118,167,166⟩,55,.early s2Step302CompleteLog⟩
def s2PrivateStep302Plan : HmrSourceStepPlan := .early s2Step302CompletePlan
theorem s2PrivateStep302_source : s2PrivateStep302Spec=s2ObservedLogs288[14] := rfl
theorem s2PrivateStep302_checked : compileHmrSourceStepLog s2PrivateStep302Arena s2PrivateStep302Bank
    s2PrivateStep302Spec.fgWidth s2PrivateStep302Spec.vWidth s2PrivateStep302Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 302 s2PrivateStep302Spec.need none s2PrivateStep302Spec.log=some s2PrivateStep302Plan := by
  change compileHmrSourceStepLog s2Step302EntryFBefore s2Step302FrontBank 120 166 ⟨120,118,167,166⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 302 55 none (.early s2Step302CompleteLog)=some (.early s2Step302CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 302<498)]
  rw [s2Step302Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
