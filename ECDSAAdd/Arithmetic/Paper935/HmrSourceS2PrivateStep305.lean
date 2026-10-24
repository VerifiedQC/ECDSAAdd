import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep303
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

private def s2Step305CompleteMoves : List (Wire × Wire) := [(802,630)]

private def s2Step305EarlyControlLog : HmrEarlyControlLog := ⟨[802, 793, 787, 846, 806],[830],[800],[894, 896, 901, 903, 907, 908],[]⟩

private def s2Step305FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [819]],[[806], [787], [793], [805]],[[], [], [], []]⟩,[811],[826],[830],[800],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step305CompleteLog : HmrEarlyStepLog := ⟨s2Step305FrontLog,s2Step305CompleteMoves,s2Step305EarlyControlLog⟩

private def s2Step305ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629],768⟩

private def s2Step305ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step305ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step305ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819],771⟩

private def s2Step305FrontOut : WindowBank := ⟨s2Step305ExitFOut,s2Step305ExitGOut,s2Step305ExitFvOut,s2Step305ExitGvOut⟩

private def s2Step305CompleteOut : WindowBank := s2Step305FrontOut.repacked s2Step305CompleteMoves

private def s2Step305EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step305EarlyControlPositiveArena,[830],s2Step305EarlyControlEqualityArena,[800],⟨⟨811,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step305EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<909)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<909)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,802⟩,⟨⟨774,false⟩,793⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,846⟩,⟨⟨777,false⟩,806⟩]⟩

private def s2Step305EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step305EarlyControlZeroArena,s2Step305EarlyControlZeroPlan,s2Step305EarlyControlClassPlan,s2Step305EarlyControlFlagArena,s2Step305EarlyControlFittedArena,s2Step305EarlyControlHistoryArena,s2Step305EarlyControlSigmaArena,s2Step305EarlyControlOutputArena,s2Step305EarlyControlLog⟩

private def s2Step305CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step305Counter_bounded : s2Step305CounterWork.toFinset⊆arenaWires := by norm_num [s2Step305CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step305HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305CounterDuring : Arena := ⟨s2Step305HeadFvAfter.live∪s2Step305CounterWork.toFinset,Finset.union_subset s2Step305HeadFvAfter.bounded s2Step305Counter_bounded⟩

private def s2Step305EntryFFresh : List Wire := []

private def s2Step305EntryFvFresh : List Wire := []

private def s2Step305EntryGFresh : List Wire := []

private def s2Step305EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EntryGvFresh : List Wire := [819]

private def s2Step305ExitFExtra : List Wire := [630, 787]

private def s2Step305ExitGExtra : List Wire := [846, 806]

private def s2Step305ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<630) ∨ (631≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305ExitGvExtra : List Wire := [793]

private def s2Step305Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step305Add0_bounded : s2Step305Add0Work.toFinset⊆arenaWires := by
  have h : s2Step305Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step305Add0During : Arena := ⟨s2Step305Add0Arena.live∪s2Step305Add0Work.toFinset,Finset.union_subset s2Step305Add0Arena.bounded s2Step305Add0_bounded⟩

private def s2Step305Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step305Add1_bounded : s2Step305Add1Work.toFinset⊆arenaWires := by
  have h : s2Step305Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step305Add1During : Arena := ⟨s2Step305Add1Arena.live∪s2Step305Add1Work.toFinset,Finset.union_subset s2Step305Add1Arena.bounded s2Step305Add1_bounded⟩

private def s2Step305F4FlagArena : Arena := ⟨s2Step305HeadFvAfter.live∪{830},Finset.union_subset s2Step305HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step305F4Plan : HmrHybridF4Plan := ⟨s2Step305F4FlagArena,[830],s2Step305Add0Arena,[800],s2Step305Add0During,s2Step305Add0Work,s2Step305Add1During,s2Step305Add1Work⟩

private def s2Step305HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 787],768⟩

private def s2Step305HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step305HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 806],769⟩

private def s2Step305HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 793],771⟩

private def s2Step305FrontHead : WindowBank := ⟨s2Step305HeadFOut,s2Step305HeadGOut,s2Step305HeadFvOut,s2Step305HeadGvOut⟩

private def s2Step305EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630],768⟩

private def s2Step305EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩

private def s2Step305EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩

private def s2Step305EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819],771⟩

private def s2Step305FrontPair : WindowBank := ⟨s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut⟩

private def s2Step305FrontSigmaArena : Arena := ⟨s2Step305EntryGvAfter.live∪{811},Finset.union_subset s2Step305EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step305HeadFFresh : List Wire := [787]

private def s2Step305HeadFvFresh : List Wire := [805]

private def s2Step305HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305HeadGFresh : List Wire := [806]

private def s2Step305HeadGvFresh : List Wire := [793]

private def s2Step305FrontPlan : HmrSourceFront := ⟨s2Step305EntryGvAfter,s2Step305FrontPair,(growRow 768 s2Step305EntryFFresh ++ (growRow 769 s2Step305EntryGFresh ++ (growRow 770 s2Step305EntryFvFresh ++ (growRow 771 s2Step305EntryGvFresh ++ [])))),s2Step305FrontSigmaArena,[811],s2Step305HeadGBefore,[826],
  s2Step305HeadFvAfter,s2Step305FrontHead,(growRow 769 s2Step305HeadGFresh ++ (growRow 768 s2Step305HeadFFresh ++ (growRow 771 s2Step305HeadGvFresh ++ (growRow 770 s2Step305HeadFvFresh ++ [])))),s2Step305F4Plan,s2Step305CounterDuring,s2Step305CounterWork,s2Step305ExitGvAfter,s2Step305FrontOut,(shrinkRow 769 s2Step305ExitGExtra ++ (shrinkRow 768 s2Step305ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step305ExitGvExtra ++ []))))⟩

private def s2Step305CompletePlan : HmrEarlyStepPlan := ⟨s2Step305FrontPlan,s2Step305EarlyControlArena,s2Step305EarlyControlPlan,s2Step305CompleteMoves⟩

private theorem s2Step305Complete_apart : List.Disjoint (s2Step305CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step305CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step305Complete_owned : (s2Step305CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step305EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step305CompleteMoveArena : Arena := ⟨s2Step305ExitGvAfter.live∪{630},Finset.union_subset s2Step305ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step305Complete_repack : s2Step305ExitGvAfter.checkRepack s2Step305CompleteMoves=some s2Step305EarlyControlArena := by
  have owned : 802∈s2Step305ExitGvAfter.live := by norm_num [s2Step305ExitGvAfter,arenaWires]
  have reserve : s2Step305ExitGvAfter.reserve {630}=some s2Step305CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step305ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step305CompleteMoveArena.retireSet {802}=s2Step305EarlyControlArena := by
    unfold Arena.retireSet s2Step305EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step305CompleteMoveArena,s2Step305ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step305CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step305CompleteMoveArena.retireSet {802}).checkRepack []=some s2Step305EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step305EarlyControl_branchOwned : ([826] : List Wire).toFinset⊆s2Step305EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_branch : compileHmrBranchRetirement s2Step305EarlyControlSigmaArena 826=some s2Step305EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step305EarlyControl_branchOwned
  · ext q
    simp [s2Step305EarlyControlOutputArena,s2Step305EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step305EarlyControl_classEqualityBorrow : s2Step305EarlyControlPositiveArena.checkBorrow (([811, 830] : List Wire).length-1) s2Step305EarlyControlLog.classWork=some s2Step305EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step305EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step305EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step305EarlyControlEqualityArena,s2Step305EarlyControlPositiveArena,s2Step305EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step305EarlyControl_classEqualityOwned : ([811, 830] : List Wire).toFinset⊆s2Step305EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_classEquality : compileHmrEqualityLog s2Step305EarlyControlPositiveArena [811, 830] 0 s2Step305EarlyControlLog.classWork=some (s2Step305EarlyControlEqualityArena,s2Step305EarlyControlLog.classWork,s2Step305EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step305EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step305EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step305EarlyControl_classOwned : ([777, 806, 811] : List Wire).toFinset⊆s2Step305EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_positiveBorrow : s2Step305EarlyControlZeroArena.checkBorrow (1) s2Step305EarlyControlLog.positiveWork=some s2Step305EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step305EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step305EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step305EarlyControlPositiveArena,s2Step305EarlyControlZeroArena,s2Step305EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step305EarlyControl_class : compileHmrSourceClassLog s2Step305EarlyControlZeroArena false 777 s2Step305EarlyControlZeroPlan.top 0 811 s2Step305EarlyControlLog.positiveWork s2Step305EarlyControlLog.classWork=some s2Step305EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step305EarlyControlClassPlan s2Step305EarlyControlZeroArena false 777 s2Step305EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step305EarlyControl_classOwned
  · exact s2Step305EarlyControl_positiveBorrow
  · exact s2Step305EarlyControl_classEquality

private theorem s2Step305EarlyControl_entryRecordOwned : ([826, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step305EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step305EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_fitBorrow : s2Step305EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step305EarlyControlLog.recordFresh=some s2Step305EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step305EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step305EarlyControlFlagArena (fun q => (0≤q ∧ q<909)) rfl
      decide +kernel
    · ext q
      simp [s2Step305EarlyControlFittedArena,s2Step305EarlyControlFlagArena,s2Step305EarlyControlLog,arenaWires]

private theorem s2Step305EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step305EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlFlagArena (fun q => (0≤q ∧ q<909)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_fit : compileHmrRecordGrowLog s2Step305EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step305EarlyControlLog.recordFresh=some s2Step305EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step305EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step305EarlyControl_fitBorrow

private theorem s2Step305EarlyControl_flagsBorrow : s2Step305EarlyControlEqualityArena.checkBorrow (6) s2Step305EarlyControlLog.flagWork=some s2Step305EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step305EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step305EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step305EarlyControlFlagArena,s2Step305EarlyControlEqualityArena,s2Step305EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step305EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step305EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_flags : compileHmrFlagsLog s2Step305EarlyControlClassPlan.equalityArena s2Step305EarlyControlClassPlan.equality.top 253 252 251 s2Step305EarlyControlLog.flagWork=some s2Step305EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step305EarlyControl_flagsOwned⟩
  · exact s2Step305EarlyControl_flagsBorrow

private theorem s2Step305EarlyControl_historyBorrow : s2Step305EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step305EarlyControlLog.recordFresh=some s2Step305EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step305EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step305EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step305EarlyControlHistoryArena,s2Step305EarlyControlArena,s2Step305EarlyControlLog,arenaWires]

private theorem s2Step305EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step305EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_history : compileHmrRecordGrowLog s2Step305EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step305EarlyControlLog.recordFresh=some s2Step305EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step305EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step305EarlyControl_historyBorrow

private theorem s2Step305EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step305EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step305EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_sigmaRelease : s2Step305EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step305EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step305EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step305EarlyControlSigmaArena,s2Step305EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step305EarlyControl_sigma : compileHmrSigmaDropLog s2Step305EarlyControlHistoryArena false 0 0 254 811 []=some s2Step305EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step305EarlyControl_sigmaOwned⟩
  · exact s2Step305EarlyControl_sigmaRelease

private theorem s2Step305EarlyControl_zeroBorrow : s2Step305EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step305EarlyControlLog.zeroWork=some s2Step305EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step305EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step305EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step305EarlyControlZeroArena,s2Step305EarlyControlArena,s2Step305EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step305EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step305EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step305EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EarlyControl_zero : compileHmrEqualityLog s2Step305EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step305EarlyControlLog.zeroWork=some (s2Step305EarlyControlZeroArena,s2Step305EarlyControlLog.zeroWork,s2Step305EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step305EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step305EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step305EarlyControl_logged : s2Step305EarlyControlPlan.Logged s2Step305EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 826 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step305EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step305EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step305EarlyControl_zero
  · exact s2Step305EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step305EarlyControl_flags
  · exact s2Step305EarlyControl_fit
  · exact s2Step305EarlyControl_history
  · exact s2Step305EarlyControl_sigma
  · exact s2Step305EarlyControl_branch

private theorem s2Step305EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step305EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 826 55 s2Step305EarlyControlLog=some s2Step305EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step305EarlyControlPlan s2Step305EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 826 55 s2Step305EarlyControl_logged

private def s2Step305EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630],768⟩

private def s2Step305EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩

private def s2Step305EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩

private def s2Step305EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩

private def s2Step305FrontBank : WindowBank := ⟨s2Step305EntryFRow,s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow⟩

private def s2Step305Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 787, 768]

private def s2Step305Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 806, 769]

private def s2Step305Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 770]

private def s2Step305Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 793, 771]

private theorem s2Step305Counter_apart : Disjoint s2Step305HeadFvAfter.live s2Step305CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step305HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305Counter_borrowed : s2Step305HeadFvAfter.checkBorrow 4 s2Step305CounterWork=some s2Step305CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step305HeadFvAfter s2Step305CounterDuring s2Step305CounterWork.toFinset s2Step305Counter_bounded s2Step305Counter_apart rfl

private theorem s2Step305Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step305HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step305HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305Counter_checked : compileHmrCounterStepLog s2Step305HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step305CounterWork=some s2Step305CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step305HeadFvAfter.live := fun q hq => s2Step305Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step305Counter_borrowed

private def s2Step305EntryFAfter : Arena := s2Step305EntryFBefore

private theorem s2Step305EntryBank_incomingDistinct : ([s2Step305EntryFRow,s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305EntryF_Incoming : rowsOwned s2Step305EntryFBefore [s2Step305EntryFRow,s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305EntryFRow,s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow] 0 s2Step305EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305EntryBank_outgoingOwned : rowsOwned s2Step305EntryGvAfter [s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step305EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305EntryF_Outgoing : rowsOwned s2Step305EntryGvAfter [s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut] :=
  hmrRows_owned_drop s2Step305EntryGvAfter [s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut] 0 s2Step305EntryBank_outgoingOwned

private theorem s2Step305EntryF_distinct : (s2Step305EntryFRow.sign::s2Step305EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305EntryF_owned : (s2Step305EntryFRow.sign::s2Step305EntryFRow.payload).toFinset⊆s2Step305EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EntryF_reserved : s2Step305EntryFBefore.reserve s2Step305EntryFFresh.toFinset=some s2Step305EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step305EntryFFresh,arenaWires]
  · norm_num [s2Step305EntryFBefore,s2Step305EntryFFresh,arenaWires]
  · simp only [s2Step305EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step305EntryF_checked : planRowResizeLog s2Step305EntryFBefore s2Step305EntryFRow 119 s2Step305EntryFFresh=
    some (s2Step305EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630],768⟩,growRow 768 s2Step305EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step305EntryFBefore s2Step305EntryFAfter s2Step305EntryFRow 119 s2Step305EntryFFresh
    s2Step305EntryF_distinct s2Step305EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305EntryF_reserved
  have rowEq : WindowRow.mk (s2Step305EntryFRow.payload++s2Step305EntryFFresh) s2Step305EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step305EntryFvAfter : Arena := s2Step305EntryFBefore

private def s2Step305EntryFvBefore : Arena := s2Step305EntryFBefore

private theorem s2Step305EntryFv_Incoming : rowsOwned s2Step305EntryFvBefore [s2Step305EntryFvRow,s2Step305EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305EntryFRow,s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow] 2 s2Step305EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305EntryFv_Outgoing : rowsOwned s2Step305EntryGvAfter [s2Step305EntryFvOut,s2Step305EntryGvOut] :=
  hmrRows_owned_drop s2Step305EntryGvAfter [s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut] 2 s2Step305EntryBank_outgoingOwned

private theorem s2Step305EntryFv_distinct : (s2Step305EntryFvRow.sign::s2Step305EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305EntryFv_owned : (s2Step305EntryFvRow.sign::s2Step305EntryFvRow.payload).toFinset⊆s2Step305EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EntryFv_reserved : s2Step305EntryFvBefore.reserve s2Step305EntryFvFresh.toFinset=some s2Step305EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step305EntryFvFresh,arenaWires]
  · norm_num [s2Step305EntryFvBefore,s2Step305EntryFBefore,s2Step305EntryFvFresh,arenaWires]
  · simp only [s2Step305EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step305EntryFv_checked : planRowResizeLog s2Step305EntryFvBefore s2Step305EntryFvRow 168 s2Step305EntryFvFresh=
    some (s2Step305EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩,growRow 770 s2Step305EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step305EntryFvBefore s2Step305EntryFvAfter s2Step305EntryFvRow 168 s2Step305EntryFvFresh
    s2Step305EntryFv_distinct s2Step305EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step305EntryFvRow.payload++s2Step305EntryFvFresh) s2Step305EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step305EntryGAfter : Arena := s2Step305EntryFBefore

private def s2Step305EntryGBefore : Arena := s2Step305EntryFBefore

private theorem s2Step305EntryG_Incoming : rowsOwned s2Step305EntryGBefore [s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305EntryFRow,s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow] 1 s2Step305EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305EntryG_Outgoing : rowsOwned s2Step305EntryGvAfter [s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut] :=
  hmrRows_owned_drop s2Step305EntryGvAfter [s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut] 1 s2Step305EntryBank_outgoingOwned

private theorem s2Step305EntryG_distinct : (s2Step305EntryGRow.sign::s2Step305EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305EntryG_owned : (s2Step305EntryGRow.sign::s2Step305EntryGRow.payload).toFinset⊆s2Step305EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EntryG_reserved : s2Step305EntryGBefore.reserve s2Step305EntryGFresh.toFinset=some s2Step305EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step305EntryGFresh,arenaWires]
  · norm_num [s2Step305EntryGBefore,s2Step305EntryFBefore,s2Step305EntryGFresh,arenaWires]
  · simp only [s2Step305EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step305EntryG_checked : planRowResizeLog s2Step305EntryGBefore s2Step305EntryGRow 119 s2Step305EntryGFresh=
    some (s2Step305EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩,growRow 769 s2Step305EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step305EntryGBefore s2Step305EntryGAfter s2Step305EntryGRow 119 s2Step305EntryGFresh
    s2Step305EntryG_distinct s2Step305EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305EntryG_reserved
  have rowEq : WindowRow.mk (s2Step305EntryGRow.payload++s2Step305EntryGFresh) s2Step305EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step305EntryGvBefore : Arena := s2Step305EntryFBefore

private theorem s2Step305EntryGv_Incoming : rowsOwned s2Step305EntryGvBefore [s2Step305EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305EntryFRow,s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow] 3 s2Step305EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305EntryGv_Outgoing : rowsOwned s2Step305EntryGvAfter [s2Step305EntryGvOut] :=
  hmrRows_owned_drop s2Step305EntryGvAfter [s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut] 3 s2Step305EntryBank_outgoingOwned

private theorem s2Step305EntryGv_distinct : (s2Step305EntryGvRow.sign::s2Step305EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305EntryGv_owned : (s2Step305EntryGvRow.sign::s2Step305EntryGvRow.payload).toFinset⊆s2Step305EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305EntryGv_reserved : s2Step305EntryGvBefore.reserve s2Step305EntryGvFresh.toFinset=some s2Step305EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step305EntryGvFresh,arenaWires]
  · norm_num [s2Step305EntryGvBefore,s2Step305EntryFBefore,s2Step305EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step305EntryGvAfter,s2Step305EntryGvBefore,s2Step305EntryFBefore,s2Step305EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step305EntryGv_checked : planRowResizeLog s2Step305EntryGvBefore s2Step305EntryGvRow 168 s2Step305EntryGvFresh=
    some (s2Step305EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819],771⟩,growRow 771 s2Step305EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step305EntryGvBefore s2Step305EntryGvAfter s2Step305EntryGvRow 168 s2Step305EntryGvFresh
    s2Step305EntryGv_distinct s2Step305EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step305EntryGvRow.payload++s2Step305EntryGvFresh) s2Step305EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step305EntryBank_rows : planWindowRowsLog s2Step305EntryFBefore [(s2Step305EntryFRow,119),(s2Step305EntryGRow,119),(s2Step305EntryFvRow,168),(s2Step305EntryGvRow,168)] [s2Step305EntryFFresh,s2Step305EntryGFresh,s2Step305EntryFvFresh,s2Step305EntryGvFresh]=
    some (s2Step305EntryGvAfter,[s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut],(growRow 768 s2Step305EntryFFresh ++ (growRow 769 s2Step305EntryGFresh ++ (growRow 770 s2Step305EntryFvFresh ++ (growRow 771 s2Step305EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step305EntryGvAfter [] []=some (s2Step305EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step305EntryGvBefore s2Step305EntryGvAfter s2Step305EntryGvAfter
    s2Step305EntryGvRow s2Step305EntryGvOut 168 s2Step305EntryGvFresh [] [] []
    (growRow 771 s2Step305EntryGvFresh) ([]) s2Step305EntryGv_Incoming s2Step305EntryGv_checked h4 s2Step305EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step305EntryFvBefore s2Step305EntryFvAfter s2Step305EntryGvAfter
    s2Step305EntryFvRow s2Step305EntryFvOut 168 s2Step305EntryFvFresh [(s2Step305EntryGvRow,168)] [s2Step305EntryGvFresh] [s2Step305EntryGvOut]
    (growRow 770 s2Step305EntryFvFresh) ((growRow 771 s2Step305EntryGvFresh ++ [])) s2Step305EntryFv_Incoming s2Step305EntryFv_checked h3 s2Step305EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step305EntryGBefore s2Step305EntryGAfter s2Step305EntryGvAfter
    s2Step305EntryGRow s2Step305EntryGOut 119 s2Step305EntryGFresh [(s2Step305EntryFvRow,168),(s2Step305EntryGvRow,168)] [s2Step305EntryFvFresh,s2Step305EntryGvFresh] [s2Step305EntryFvOut,s2Step305EntryGvOut]
    (growRow 769 s2Step305EntryGFresh) ((growRow 770 s2Step305EntryFvFresh ++ (growRow 771 s2Step305EntryGvFresh ++ []))) s2Step305EntryG_Incoming s2Step305EntryG_checked h2 s2Step305EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step305EntryFBefore s2Step305EntryFAfter s2Step305EntryGvAfter
    s2Step305EntryFRow s2Step305EntryFOut 119 s2Step305EntryFFresh [(s2Step305EntryGRow,119),(s2Step305EntryFvRow,168),(s2Step305EntryGvRow,168)] [s2Step305EntryGFresh,s2Step305EntryFvFresh,s2Step305EntryGvFresh] [s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut]
    (growRow 768 s2Step305EntryFFresh) ((growRow 769 s2Step305EntryGFresh ++ (growRow 770 s2Step305EntryFvFresh ++ (growRow 771 s2Step305EntryGvFresh ++ [])))) s2Step305EntryF_Incoming s2Step305EntryF_checked h1 s2Step305EntryF_Outgoing
  exact h0

private theorem s2Step305EntryBank_checked : compileHmrBankResizeLog .entry s2Step305EntryFBefore ⟨s2Step305EntryFRow,s2Step305EntryGRow,s2Step305EntryFvRow,s2Step305EntryGvRow⟩ ⟨119,119,168,168⟩ [s2Step305EntryFFresh,s2Step305EntryGFresh,s2Step305EntryFvFresh,s2Step305EntryGvFresh]=
    some (s2Step305EntryGvAfter,⟨s2Step305EntryFOut,s2Step305EntryGOut,s2Step305EntryFvOut,s2Step305EntryGvOut⟩,(growRow 768 s2Step305EntryFFresh ++ (growRow 769 s2Step305EntryGFresh ++ (growRow 770 s2Step305EntryFvFresh ++ (growRow 771 s2Step305EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step305EntryBank_rows]
  rfl

private def s2Step305ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<630) ∨ (631≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305ExitFBefore : Arena := s2Step305ExitGAfter

private def s2Step305ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 787],768⟩

private def s2Step305ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step305ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 806],769⟩

private def s2Step305ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 793],771⟩

private theorem s2Step305ExitBank_incomingDistinct : ([s2Step305ExitGRow,s2Step305ExitFRow,s2Step305ExitFvRow,s2Step305ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305ExitF_Incoming : rowsOwned s2Step305ExitFBefore [s2Step305ExitFRow,s2Step305ExitFvRow,s2Step305ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305ExitGRow,s2Step305ExitFRow,s2Step305ExitFvRow,s2Step305ExitGvRow] 1 s2Step305ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305ExitBank_outgoingOwned : rowsOwned s2Step305ExitGvAfter [s2Step305ExitGOut,s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step305ExitGvAfter (fun q => (0≤q ∧ q<630) ∨ (631≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305ExitF_Outgoing : rowsOwned s2Step305ExitGvAfter [s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut] :=
  hmrRows_owned_drop s2Step305ExitGvAfter [s2Step305ExitGOut,s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut] 1 s2Step305ExitBank_outgoingOwned

private theorem s2Step305ExitF_distinct : (s2Step305ExitFRow.sign::s2Step305ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305ExitF_owned : (s2Step305ExitFRow.sign::s2Step305ExitFRow.payload).toFinset⊆s2Step305ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305ExitF_retired : s2Step305ExitFBefore.retireSet s2Step305ExitFExtra.toFinset=s2Step305ExitFAfter := by
  unfold Arena.retireSet s2Step305ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step305ExitFBefore,s2Step305ExitGAfter,s2Step305ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step305ExitF_checked : planRowResizeLog s2Step305ExitFBefore s2Step305ExitFRow 118 []=
    some (s2Step305ExitFAfter,s2Step305ExitFOut,shrinkRow 768 s2Step305ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step305ExitFBefore s2Step305ExitFRow 118 s2Step305ExitF_distinct s2Step305ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step305ExitFRow.payload.take 118) s2Step305ExitFRow.sign=s2Step305ExitFOut := by decide +kernel
  have hi : s2Step305ExitFRow.payload.drop 118=s2Step305ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step305ExitF_retired] at result
  exact result

private def s2Step305ExitFvAfter : Arena := s2Step305ExitFAfter

private def s2Step305ExitFvBefore : Arena := s2Step305ExitFAfter

private theorem s2Step305ExitFv_Incoming : rowsOwned s2Step305ExitFvBefore [s2Step305ExitFvRow,s2Step305ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305ExitGRow,s2Step305ExitFRow,s2Step305ExitFvRow,s2Step305ExitGvRow] 2 s2Step305ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305ExitFvBefore (fun q => (0≤q ∧ q<630) ∨ (631≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305ExitFv_Outgoing : rowsOwned s2Step305ExitGvAfter [s2Step305ExitFvOut,s2Step305ExitGvOut] :=
  hmrRows_owned_drop s2Step305ExitGvAfter [s2Step305ExitGOut,s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut] 2 s2Step305ExitBank_outgoingOwned

private theorem s2Step305ExitFv_distinct : (s2Step305ExitFvRow.sign::s2Step305ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305ExitFv_owned : (s2Step305ExitFvRow.sign::s2Step305ExitFvRow.payload).toFinset⊆s2Step305ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305ExitFvBefore (fun q => (0≤q ∧ q<630) ∨ (631≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305ExitFv_reserved : s2Step305ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step305ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step305ExitFv_checked : planRowResizeLog s2Step305ExitFvBefore s2Step305ExitFvRow 169 []=
    some (s2Step305ExitFvAfter,s2Step305ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step305ExitFvBefore s2Step305ExitFvAfter s2Step305ExitFvRow 169 []
    s2Step305ExitFv_distinct s2Step305ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step305ExitFvRow.payload++[]) s2Step305ExitFvRow.sign=s2Step305ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step305ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step305ExitG_Incoming : rowsOwned s2Step305ExitGBefore [s2Step305ExitGRow,s2Step305ExitFRow,s2Step305ExitFvRow,s2Step305ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305ExitGRow,s2Step305ExitFRow,s2Step305ExitFvRow,s2Step305ExitGvRow] 0 s2Step305ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305ExitG_Outgoing : rowsOwned s2Step305ExitGvAfter [s2Step305ExitGOut,s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut] :=
  hmrRows_owned_drop s2Step305ExitGvAfter [s2Step305ExitGOut,s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut] 0 s2Step305ExitBank_outgoingOwned

private theorem s2Step305ExitG_distinct : (s2Step305ExitGRow.sign::s2Step305ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305ExitG_owned : (s2Step305ExitGRow.sign::s2Step305ExitGRow.payload).toFinset⊆s2Step305ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305ExitG_retired : s2Step305ExitGBefore.retireSet s2Step305ExitGExtra.toFinset=s2Step305ExitGAfter := by
  unfold Arena.retireSet s2Step305ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step305ExitGBefore,s2Step305ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step305ExitG_checked : planRowResizeLog s2Step305ExitGBefore s2Step305ExitGRow 118 []=
    some (s2Step305ExitGAfter,s2Step305ExitGOut,shrinkRow 769 s2Step305ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step305ExitGBefore s2Step305ExitGRow 118 s2Step305ExitG_distinct s2Step305ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step305ExitGRow.payload.take 118) s2Step305ExitGRow.sign=s2Step305ExitGOut := by decide +kernel
  have hi : s2Step305ExitGRow.payload.drop 118=s2Step305ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step305ExitG_retired] at result
  exact result

private def s2Step305ExitGvBefore : Arena := s2Step305ExitFAfter

private theorem s2Step305ExitGv_Incoming : rowsOwned s2Step305ExitGvBefore [s2Step305ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305ExitGRow,s2Step305ExitFRow,s2Step305ExitFvRow,s2Step305ExitGvRow] 3 s2Step305ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305ExitGvBefore (fun q => (0≤q ∧ q<630) ∨ (631≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305ExitGv_Outgoing : rowsOwned s2Step305ExitGvAfter [s2Step305ExitGvOut] :=
  hmrRows_owned_drop s2Step305ExitGvAfter [s2Step305ExitGOut,s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut] 3 s2Step305ExitBank_outgoingOwned

private theorem s2Step305ExitGv_distinct : (s2Step305ExitGvRow.sign::s2Step305ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305ExitGv_owned : (s2Step305ExitGvRow.sign::s2Step305ExitGvRow.payload).toFinset⊆s2Step305ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305ExitGvBefore (fun q => (0≤q ∧ q<630) ∨ (631≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305ExitGv_retired : s2Step305ExitGvBefore.retireSet s2Step305ExitGvExtra.toFinset=s2Step305ExitGvAfter := by
  unfold Arena.retireSet s2Step305ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step305ExitGvBefore,s2Step305ExitFAfter,s2Step305ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step305ExitGv_checked : planRowResizeLog s2Step305ExitGvBefore s2Step305ExitGvRow 168 []=
    some (s2Step305ExitGvAfter,s2Step305ExitGvOut,shrinkRow 771 s2Step305ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step305ExitGvBefore s2Step305ExitGvRow 168 s2Step305ExitGv_distinct s2Step305ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step305ExitGvRow.payload.take 168) s2Step305ExitGvRow.sign=s2Step305ExitGvOut := by decide +kernel
  have hi : s2Step305ExitGvRow.payload.drop 168=s2Step305ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step305ExitGv_retired] at result
  exact result

private theorem s2Step305ExitBank_rows : planWindowRowsLog s2Step305ExitGBefore [(s2Step305ExitGRow,118),(s2Step305ExitFRow,118),(s2Step305ExitFvRow,169),(s2Step305ExitGvRow,168)] [[],[],[],[]]=
    some (s2Step305ExitGvAfter,[s2Step305ExitGOut,s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut],(shrinkRow 769 s2Step305ExitGExtra ++ (shrinkRow 768 s2Step305ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step305ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step305ExitGvAfter [] []=some (s2Step305ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step305ExitGvBefore s2Step305ExitGvAfter s2Step305ExitGvAfter
    s2Step305ExitGvRow s2Step305ExitGvOut 168 [] [] [] []
    (shrinkRow 771 s2Step305ExitGvExtra) ([]) s2Step305ExitGv_Incoming s2Step305ExitGv_checked h4 s2Step305ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step305ExitFvBefore s2Step305ExitFvAfter s2Step305ExitGvAfter
    s2Step305ExitFvRow s2Step305ExitFvOut 169 [] [(s2Step305ExitGvRow,168)] [[]] [s2Step305ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step305ExitGvExtra ++ [])) s2Step305ExitFv_Incoming s2Step305ExitFv_checked h3 s2Step305ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step305ExitFBefore s2Step305ExitFAfter s2Step305ExitGvAfter
    s2Step305ExitFRow s2Step305ExitFOut 118 [] [(s2Step305ExitFvRow,169),(s2Step305ExitGvRow,168)] [[],[]] [s2Step305ExitFvOut,s2Step305ExitGvOut]
    (shrinkRow 768 s2Step305ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step305ExitGvExtra ++ []))) s2Step305ExitF_Incoming s2Step305ExitF_checked h2 s2Step305ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step305ExitGBefore s2Step305ExitGAfter s2Step305ExitGvAfter
    s2Step305ExitGRow s2Step305ExitGOut 118 [] [(s2Step305ExitFRow,118),(s2Step305ExitFvRow,169),(s2Step305ExitGvRow,168)] [[],[],[]] [s2Step305ExitFOut,s2Step305ExitFvOut,s2Step305ExitGvOut]
    (shrinkRow 769 s2Step305ExitGExtra) ((shrinkRow 768 s2Step305ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step305ExitGvExtra ++ [])))) s2Step305ExitG_Incoming s2Step305ExitG_checked h1 s2Step305ExitG_Outgoing
  exact h0

private theorem s2Step305ExitBank_checked : compileHmrBankResizeLog .exit s2Step305ExitGBefore ⟨s2Step305ExitFRow,s2Step305ExitGRow,s2Step305ExitFvRow,s2Step305ExitGvRow⟩ ⟨118,118,169,168⟩ [[],[],[],[]]=
    some (s2Step305ExitGvAfter,⟨s2Step305ExitFOut,s2Step305ExitGOut,s2Step305ExitFvOut,s2Step305ExitGvOut⟩,(shrinkRow 769 s2Step305ExitGExtra ++ (shrinkRow 768 s2Step305ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step305ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step305ExitBank_rows]
  rfl

private theorem s2Step305Add0_apart : Disjoint s2Step305Add0Arena.live s2Step305Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step305Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305Add0_card : s2Step305Add0Arena.live.card=903 := by
  decide +kernel

private theorem s2Step305Add0_borrowed : s2Step305Add0Arena.checkBorrow (hmrHybridCount s2Step305Add0Arena s2Step305Add0B.length) s2Step305Add0Work=some s2Step305Add0During := by
  have len : s2Step305Add0Work.length=hmrHybridCount s2Step305Add0Arena s2Step305Add0B.length := by
    rw [hmrHybridCount,s2Step305Add0_card]
    decide +kernel
  have nd : s2Step305Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step305Add0Arena s2Step305Add0During s2Step305Add0Work.toFinset s2Step305Add0_bounded s2Step305Add0_apart rfl

private theorem s2Step305Add0_distinct : (830::826::800::(s2Step305Add0A++s2Step305Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305Add0_owned : (830::826::800::(s2Step305Add0A++s2Step305Add0B)).toFinset⊆s2Step305Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step305Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305Add0_checked : compileHmrHybridCinLog s2Step305Add0Arena 826 830 800 s2Step305Add0A s2Step305Add0B s2Step305Add0Work=some s2Step305Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step305Add0Arena s2Step305Add0During 826 830 800 s2Step305Add0A s2Step305Add0B s2Step305Add0Work
    (by decide +kernel) (by decide +kernel) s2Step305Add0_distinct
    (fun q hq => s2Step305Add0_owned (List.mem_toFinset.mpr hq)) s2Step305Add0_borrowed

private theorem s2Step305Add1_apart : Disjoint s2Step305Add1Arena.live s2Step305Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step305Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305Add1_card : s2Step305Add1Arena.live.card=903 := by
  decide +kernel

private theorem s2Step305Add1_borrowed : s2Step305Add1Arena.checkBorrow (hmrHybridCount s2Step305Add1Arena s2Step305Add1B.length) s2Step305Add1Work=some s2Step305Add1During := by
  have len : s2Step305Add1Work.length=hmrHybridCount s2Step305Add1Arena s2Step305Add1B.length := by
    rw [hmrHybridCount,s2Step305Add1_card]
    decide +kernel
  have nd : s2Step305Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step305Add1Arena s2Step305Add1During s2Step305Add1Work.toFinset s2Step305Add1_bounded s2Step305Add1_apart rfl

private theorem s2Step305Add1_distinct : (830::826::800::(s2Step305Add1A++s2Step305Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305Add1_owned : (830::826::800::(s2Step305Add1A++s2Step305Add1B)).toFinset⊆s2Step305Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step305Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305Add1_checked : compileHmrHybridCinLog s2Step305Add1Arena 826 830 800 s2Step305Add1A s2Step305Add1B s2Step305Add1Work=some s2Step305Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step305Add1Arena s2Step305Add1During 826 830 800 s2Step305Add1A s2Step305Add1B s2Step305Add1Work
    (by decide +kernel) (by decide +kernel) s2Step305Add1_distinct
    (fun q hq => s2Step305Add1_owned (List.mem_toFinset.mpr hq)) s2Step305Add1_borrowed

private theorem s2Step305F4_apart : Disjoint (s2Step305Add0A++s2Step305Add0B).toFinset (s2Step305Add1A++s2Step305Add1B).toFinset := by
  have nd : ((s2Step305Add0A++s2Step305Add0B)++(s2Step305Add1A++s2Step305Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step305F4_carry : s2Step305F4FlagArena.checkBorrow 1 [800]=some s2Step305Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step305F4FlagArena,s2Step305HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step305F4FlagArena,s2Step305HeadFvAfter,s2Step305Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step305F4_distinct : (811::826::830::800::((s2Step305Add0A++s2Step305Add1A)++(s2Step305Add0B++s2Step305Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305F4_flag : s2Step305HeadFvAfter.checkBorrow 1 [830]=some s2Step305F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step305HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step305F4_owned : (811::826::((s2Step305Add0A++s2Step305Add1A)++(s2Step305Add0B++s2Step305Add1B))).toFinset⊆s2Step305HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step305HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305F4_checked : compileHmrHybridF4Log s2Step305HeadFvAfter 811 826 s2Step305Add0A s2Step305Add0B s2Step305Add1A s2Step305Add1B [830] [800] s2Step305Add0Work s2Step305Add1Work=some s2Step305F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step305HeadFvAfter s2Step305F4FlagArena s2Step305Add0Arena s2Step305Add0During s2Step305Add1During 811 826
    s2Step305Add0A s2Step305Add0B s2Step305Add1A s2Step305Add1B [830] [800] s2Step305Add0Work s2Step305Add1Work
    (fun q hq => s2Step305F4_owned (List.mem_toFinset.mpr hq)) s2Step305F4_flag s2Step305F4_carry
    s2Step305F4_distinct s2Step305F4_apart s2Step305Add0_checked s2Step305Add1_checked

private theorem s2Step305Front_branch : s2Step305FrontSigmaArena.checkBorrow 1 [826]=some s2Step305HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step305FrontSigmaArena,s2Step305EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step305FrontSigmaArena,s2Step305EntryGvAfter,s2Step305HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step305Front_entry : HmrFrontEntryValid s2Step305EntryFBefore s2Step305FrontBank 119 168 ⟨118,118,169,168⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step305FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step305EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step305EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step305FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step305Front_sigma : s2Step305EntryGvAfter.checkBorrow 1 [811]=some s2Step305FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step305EntryGvAfter,arenaWires]
  · rfl

private def s2Step305HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305HeadFBefore : Arena := s2Step305HeadGAfter

private def s2Step305HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630],768⟩

private def s2Step305HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩

private def s2Step305HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩

private def s2Step305HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819],771⟩

private theorem s2Step305HeadBank_incomingDistinct : ([s2Step305HeadGRow,s2Step305HeadFRow,s2Step305HeadGvRow,s2Step305HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305HeadF_Incoming : rowsOwned s2Step305HeadFBefore [s2Step305HeadFRow,s2Step305HeadGvRow,s2Step305HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305HeadGRow,s2Step305HeadFRow,s2Step305HeadGvRow,s2Step305HeadFvRow] 1 s2Step305HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305HeadBank_outgoingOwned : rowsOwned s2Step305HeadFvAfter [s2Step305HeadGOut,s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step305HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305HeadF_Outgoing : rowsOwned s2Step305HeadFvAfter [s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut] :=
  hmrRows_owned_drop s2Step305HeadFvAfter [s2Step305HeadGOut,s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut] 1 s2Step305HeadBank_outgoingOwned

private theorem s2Step305HeadF_distinct : (s2Step305HeadFRow.sign::s2Step305HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305HeadF_owned : (s2Step305HeadFRow.sign::s2Step305HeadFRow.payload).toFinset⊆s2Step305HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305HeadF_reserved : s2Step305HeadFBefore.reserve s2Step305HeadFFresh.toFinset=some s2Step305HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step305HeadFFresh,arenaWires]
  · norm_num [s2Step305HeadFBefore,s2Step305HeadGAfter,s2Step305HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step305HeadFAfter,s2Step305HeadFBefore,s2Step305HeadGAfter,s2Step305HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step305HeadF_checked : planRowResizeLog s2Step305HeadFBefore s2Step305HeadFRow 120 s2Step305HeadFFresh=
    some (s2Step305HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 787],768⟩,growRow 768 s2Step305HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step305HeadFBefore s2Step305HeadFAfter s2Step305HeadFRow 120 s2Step305HeadFFresh
    s2Step305HeadF_distinct s2Step305HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305HeadF_reserved
  have rowEq : WindowRow.mk (s2Step305HeadFRow.payload++s2Step305HeadFFresh) s2Step305HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step305HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step305HeadFvBefore : Arena := s2Step305HeadGvAfter

private theorem s2Step305HeadFv_Incoming : rowsOwned s2Step305HeadFvBefore [s2Step305HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305HeadGRow,s2Step305HeadFRow,s2Step305HeadGvRow,s2Step305HeadFvRow] 3 s2Step305HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305HeadFv_Outgoing : rowsOwned s2Step305HeadFvAfter [s2Step305HeadFvOut] :=
  hmrRows_owned_drop s2Step305HeadFvAfter [s2Step305HeadGOut,s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut] 3 s2Step305HeadBank_outgoingOwned

private theorem s2Step305HeadFv_distinct : (s2Step305HeadFvRow.sign::s2Step305HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305HeadFv_owned : (s2Step305HeadFvRow.sign::s2Step305HeadFvRow.payload).toFinset⊆s2Step305HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305HeadFv_reserved : s2Step305HeadFvBefore.reserve s2Step305HeadFvFresh.toFinset=some s2Step305HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step305HeadFvFresh,arenaWires]
  · norm_num [s2Step305HeadFvBefore,s2Step305HeadGvAfter,s2Step305HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step305HeadFvAfter,s2Step305HeadFvBefore,s2Step305HeadGvAfter,s2Step305HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step305HeadFv_checked : planRowResizeLog s2Step305HeadFvBefore s2Step305HeadFvRow 169 s2Step305HeadFvFresh=
    some (s2Step305HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩,growRow 770 s2Step305HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step305HeadFvBefore s2Step305HeadFvAfter s2Step305HeadFvRow 169 s2Step305HeadFvFresh
    s2Step305HeadFv_distinct s2Step305HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step305HeadFvRow.payload++s2Step305HeadFvFresh) s2Step305HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step305HeadG_Incoming : rowsOwned s2Step305HeadGBefore [s2Step305HeadGRow,s2Step305HeadFRow,s2Step305HeadGvRow,s2Step305HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305HeadGRow,s2Step305HeadFRow,s2Step305HeadGvRow,s2Step305HeadFvRow] 0 s2Step305HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305HeadG_Outgoing : rowsOwned s2Step305HeadFvAfter [s2Step305HeadGOut,s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut] :=
  hmrRows_owned_drop s2Step305HeadFvAfter [s2Step305HeadGOut,s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut] 0 s2Step305HeadBank_outgoingOwned

private theorem s2Step305HeadG_distinct : (s2Step305HeadGRow.sign::s2Step305HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305HeadG_owned : (s2Step305HeadGRow.sign::s2Step305HeadGRow.payload).toFinset⊆s2Step305HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305HeadG_reserved : s2Step305HeadGBefore.reserve s2Step305HeadGFresh.toFinset=some s2Step305HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step305HeadGFresh,arenaWires]
  · norm_num [s2Step305HeadGBefore,s2Step305HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step305HeadGAfter,s2Step305HeadGBefore,s2Step305HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step305HeadG_checked : planRowResizeLog s2Step305HeadGBefore s2Step305HeadGRow 120 s2Step305HeadGFresh=
    some (s2Step305HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 806],769⟩,growRow 769 s2Step305HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step305HeadGBefore s2Step305HeadGAfter s2Step305HeadGRow 120 s2Step305HeadGFresh
    s2Step305HeadG_distinct s2Step305HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305HeadG_reserved
  have rowEq : WindowRow.mk (s2Step305HeadGRow.payload++s2Step305HeadGFresh) s2Step305HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step305HeadGvBefore : Arena := s2Step305HeadFAfter

private theorem s2Step305HeadGv_Incoming : rowsOwned s2Step305HeadGvBefore [s2Step305HeadGvRow,s2Step305HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step305HeadGRow,s2Step305HeadFRow,s2Step305HeadGvRow,s2Step305HeadFvRow] 2 s2Step305HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step305HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step305HeadGv_Outgoing : rowsOwned s2Step305HeadFvAfter [s2Step305HeadGvOut,s2Step305HeadFvOut] :=
  hmrRows_owned_drop s2Step305HeadFvAfter [s2Step305HeadGOut,s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut] 2 s2Step305HeadBank_outgoingOwned

private theorem s2Step305HeadGv_distinct : (s2Step305HeadGvRow.sign::s2Step305HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step305HeadGv_owned : (s2Step305HeadGvRow.sign::s2Step305HeadGvRow.payload).toFinset⊆s2Step305HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step305HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step305HeadGv_reserved : s2Step305HeadGvBefore.reserve s2Step305HeadGvFresh.toFinset=some s2Step305HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step305HeadGvFresh,arenaWires]
  · norm_num [s2Step305HeadGvBefore,s2Step305HeadFAfter,s2Step305HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step305HeadGvAfter,s2Step305HeadGvBefore,s2Step305HeadFAfter,s2Step305HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step305HeadGv_checked : planRowResizeLog s2Step305HeadGvBefore s2Step305HeadGvRow 169 s2Step305HeadGvFresh=
    some (s2Step305HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 793],771⟩,growRow 771 s2Step305HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step305HeadGvBefore s2Step305HeadGvAfter s2Step305HeadGvRow 169 s2Step305HeadGvFresh
    s2Step305HeadGv_distinct s2Step305HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step305HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step305HeadGvRow.payload++s2Step305HeadGvFresh) s2Step305HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step305HeadBank_rows : planWindowRowsLog s2Step305HeadGBefore [(s2Step305HeadGRow,120),(s2Step305HeadFRow,120),(s2Step305HeadGvRow,169),(s2Step305HeadFvRow,169)] [s2Step305HeadGFresh,s2Step305HeadFFresh,s2Step305HeadGvFresh,s2Step305HeadFvFresh]=
    some (s2Step305HeadFvAfter,[s2Step305HeadGOut,s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut],(growRow 769 s2Step305HeadGFresh ++ (growRow 768 s2Step305HeadFFresh ++ (growRow 771 s2Step305HeadGvFresh ++ (growRow 770 s2Step305HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step305HeadFvAfter [] []=some (s2Step305HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step305HeadFvBefore s2Step305HeadFvAfter s2Step305HeadFvAfter
    s2Step305HeadFvRow s2Step305HeadFvOut 169 s2Step305HeadFvFresh [] [] []
    (growRow 770 s2Step305HeadFvFresh) ([]) s2Step305HeadFv_Incoming s2Step305HeadFv_checked h4 s2Step305HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step305HeadGvBefore s2Step305HeadGvAfter s2Step305HeadFvAfter
    s2Step305HeadGvRow s2Step305HeadGvOut 169 s2Step305HeadGvFresh [(s2Step305HeadFvRow,169)] [s2Step305HeadFvFresh] [s2Step305HeadFvOut]
    (growRow 771 s2Step305HeadGvFresh) ((growRow 770 s2Step305HeadFvFresh ++ [])) s2Step305HeadGv_Incoming s2Step305HeadGv_checked h3 s2Step305HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step305HeadFBefore s2Step305HeadFAfter s2Step305HeadFvAfter
    s2Step305HeadFRow s2Step305HeadFOut 120 s2Step305HeadFFresh [(s2Step305HeadGvRow,169),(s2Step305HeadFvRow,169)] [s2Step305HeadGvFresh,s2Step305HeadFvFresh] [s2Step305HeadGvOut,s2Step305HeadFvOut]
    (growRow 768 s2Step305HeadFFresh) ((growRow 771 s2Step305HeadGvFresh ++ (growRow 770 s2Step305HeadFvFresh ++ []))) s2Step305HeadF_Incoming s2Step305HeadF_checked h2 s2Step305HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step305HeadGBefore s2Step305HeadGAfter s2Step305HeadFvAfter
    s2Step305HeadGRow s2Step305HeadGOut 120 s2Step305HeadGFresh [(s2Step305HeadFRow,120),(s2Step305HeadGvRow,169),(s2Step305HeadFvRow,169)] [s2Step305HeadFFresh,s2Step305HeadGvFresh,s2Step305HeadFvFresh] [s2Step305HeadFOut,s2Step305HeadGvOut,s2Step305HeadFvOut]
    (growRow 769 s2Step305HeadGFresh) ((growRow 768 s2Step305HeadFFresh ++ (growRow 771 s2Step305HeadGvFresh ++ (growRow 770 s2Step305HeadFvFresh ++ [])))) s2Step305HeadG_Incoming s2Step305HeadG_checked h1 s2Step305HeadG_Outgoing
  exact h0

private theorem s2Step305HeadBank_checked : compileHmrBankResizeLog .headroom s2Step305HeadGBefore ⟨s2Step305HeadFRow,s2Step305HeadGRow,s2Step305HeadFvRow,s2Step305HeadGvRow⟩ ⟨120,120,169,169⟩ [s2Step305HeadGFresh,s2Step305HeadFFresh,s2Step305HeadGvFresh,s2Step305HeadFvFresh]=
    some (s2Step305HeadFvAfter,⟨s2Step305HeadFOut,s2Step305HeadGOut,s2Step305HeadFvOut,s2Step305HeadGvOut⟩,(growRow 769 s2Step305HeadGFresh ++ (growRow 768 s2Step305HeadFFresh ++ (growRow 771 s2Step305HeadGvFresh ++ (growRow 770 s2Step305HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step305HeadBank_rows]
  rfl

private theorem s2Step305Front_checked : compileHmrSourceFrontLog s2Step305EntryFBefore s2Step305FrontBank 119 168 ⟨118,118,169,168⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step305FrontLog=some s2Step305FrontPlan := by
  have pairEq : s2Step305FrontPair=⟨s2Step305HeadFRow,s2Step305HeadGRow,s2Step305HeadFvRow,s2Step305HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step305FrontHead=⟨s2Step305ExitFRow,s2Step305ExitGRow,s2Step305ExitFvRow,s2Step305ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step305Add0A=s2Step305FrontHead.f.wires := by decide +kernel
  have gEq : s2Step305Add0B=s2Step305FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step305Add1A=s2Step305FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step305Add1B=s2Step305FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step305EntryFBefore s2Step305FrontBank 119 168 ⟨118,118,169,168⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step305FrontLog s2Step305FrontPlan
  · exact s2Step305Front_entry
  · exact s2Step305EntryBank_checked
  · exact s2Step305Front_sigma
  · rfl
  · exact s2Step305Front_branch
  · rfl
  · simpa only [s2Step305FrontPlan,pairEq] using s2Step305HeadBank_checked
  · simpa only [s2Step305FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step305F4_checked
  · exact s2Step305Counter_checked
  · rfl
  · simpa only [s2Step305FrontPlan,headEq] using s2Step305ExitBank_checked

private theorem s2Step305Complete_explicit_checked : compileHmrEarlyStepLog s2Step305EntryFBefore s2Step305FrontBank 119 168 ⟨118,118,169,168⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step305CompleteLog=some s2Step305CompletePlan := by
  let Q := s2Step305EarlyControlPlan
  have hq := s2Step305EarlyControl_plan_checked
  have fv1 : s2Step305CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step305CompleteOut.fv.payload[2]?.getD s2Step305CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step305CompleteOut.fv.payload[3]?.getD s2Step305CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step305CompleteOut.fv.payload[4]?.getD s2Step305CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step305EntryFBefore s2Step305EarlyControlArena s2Step305FrontBank 119 168 ⟨118,118,169,168⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step305CompleteLog s2Step305FrontPlan Q
    s2Step305Front_checked s2Step305Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step305Complete_owned s2Step305Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step305EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 s2Step305CompleteOut.fv.second (s2Step305CompleteOut.fv.payload[2]?.getD s2Step305CompleteOut.fv.sign) (s2Step305CompleteOut.fv.payload[3]?.getD s2Step305CompleteOut.fv.sign) (s2Step305CompleteOut.fv.payload[4]?.getD s2Step305CompleteOut.fv.sign) 826 55 s2Step305EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep305Arena : Arena := s2Step305EntryFBefore
def s2PrivateStep305Bank : WindowBank := s2Step305FrontBank
def s2PrivateStep305Spec : HmrSourceWalkStepLog := ⟨119,168,⟨118,118,169,168⟩,55,.early s2Step305CompleteLog⟩
def s2PrivateStep305Plan : HmrSourceStepPlan := .early s2Step305CompletePlan
theorem s2PrivateStep305_source : s2PrivateStep305Spec=s2ObservedLogs304[1] := rfl
theorem s2PrivateStep305_checked : compileHmrSourceStepLog s2PrivateStep305Arena s2PrivateStep305Bank
    s2PrivateStep305Spec.fgWidth s2PrivateStep305Spec.vWidth s2PrivateStep305Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 305 s2PrivateStep305Spec.need none s2PrivateStep305Spec.log=some s2PrivateStep305Plan := by
  change compileHmrSourceStepLog s2Step305EntryFBefore s2Step305FrontBank 119 168 ⟨118,118,169,168⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 305 55 none (.early s2Step305CompleteLog)=some (.early s2Step305CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 305<498)]
  rw [s2Step305Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
