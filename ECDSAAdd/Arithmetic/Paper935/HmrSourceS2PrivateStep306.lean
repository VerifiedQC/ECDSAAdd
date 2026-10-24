import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep304
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

private def s2Step306CompleteMoves : List (Wire × Wire) := [(799,629)]

private def s2Step306EarlyControlLog : HmrEarlyControlLog := ⟨[799, 846, 806, 787, 793],[830],[800],[894, 896, 901, 903, 907, 908],[909]⟩

private def s2Step306FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [826]],[[793], [787], [846], [806]],[[], [], [], []]⟩,[811],[802],[830],[800],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step306CompleteLog : HmrEarlyStepLog := ⟨s2Step306FrontLog,s2Step306CompleteMoves,s2Step306EarlyControlLog⟩

private def s2Step306ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628],768⟩

private def s2Step306ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step306ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step306ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step306FrontOut : WindowBank := ⟨s2Step306ExitFOut,s2Step306ExitGOut,s2Step306ExitFvOut,s2Step306ExitGvOut⟩

private def s2Step306CompleteOut : WindowBank := s2Step306FrontOut.repacked s2Step306CompleteMoves

private def s2Step306EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step306EarlyControlPositiveArena,[830],s2Step306EarlyControlEqualityArena,[800],⟨⟨811,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step306EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<909)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,799⟩,⟨⟨774,false⟩,846⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step306EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step306EarlyControlZeroArena,s2Step306EarlyControlZeroPlan,s2Step306EarlyControlClassPlan,s2Step306EarlyControlFlagArena,s2Step306EarlyControlFittedArena,s2Step306EarlyControlHistoryArena,s2Step306EarlyControlSigmaArena,s2Step306EarlyControlOutputArena,s2Step306EarlyControlLog⟩

private def s2Step306CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step306Counter_bounded : s2Step306CounterWork.toFinset⊆arenaWires := by norm_num [s2Step306CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step306HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306CounterDuring : Arena := ⟨s2Step306HeadFvAfter.live∪s2Step306CounterWork.toFinset,Finset.union_subset s2Step306HeadFvAfter.bounded s2Step306Counter_bounded⟩

private def s2Step306EntryFFresh : List Wire := []

private def s2Step306EntryFvFresh : List Wire := []

private def s2Step306EntryGFresh : List Wire := []

private def s2Step306EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306EntryGvFresh : List Wire := [826]

private def s2Step306ExitFExtra : List Wire := [629, 787]

private def s2Step306ExitFvExtra : List Wire := [806]

private def s2Step306ExitGExtra : List Wire := [793]

private def s2Step306ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<629) ∨ (630≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306ExitGvExtra : List Wire := [846]

private def s2Step306Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step306Add0_bounded : s2Step306Add0Work.toFinset⊆arenaWires := by
  have h : s2Step306Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step306Add0During : Arena := ⟨s2Step306Add0Arena.live∪s2Step306Add0Work.toFinset,Finset.union_subset s2Step306Add0Arena.bounded s2Step306Add0_bounded⟩

private def s2Step306Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step306Add1_bounded : s2Step306Add1Work.toFinset⊆arenaWires := by
  have h : s2Step306Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step306Add1During : Arena := ⟨s2Step306Add1Arena.live∪s2Step306Add1Work.toFinset,Finset.union_subset s2Step306Add1Arena.bounded s2Step306Add1_bounded⟩

private def s2Step306F4FlagArena : Arena := ⟨s2Step306HeadFvAfter.live∪{830},Finset.union_subset s2Step306HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step306F4Plan : HmrHybridF4Plan := ⟨s2Step306F4FlagArena,[830],s2Step306Add0Arena,[800],s2Step306Add0During,s2Step306Add0Work,s2Step306Add1During,s2Step306Add1Work⟩

private def s2Step306HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 787],768⟩

private def s2Step306HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 806],770⟩

private def s2Step306HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 793],769⟩

private def s2Step306HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 846],771⟩

private def s2Step306FrontHead : WindowBank := ⟨s2Step306HeadFOut,s2Step306HeadGOut,s2Step306HeadFvOut,s2Step306HeadGvOut⟩

private def s2Step306EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629],768⟩

private def s2Step306EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step306EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step306EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step306FrontPair : WindowBank := ⟨s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut⟩

private def s2Step306FrontSigmaArena : Arena := ⟨s2Step306EntryGvAfter.live∪{811},Finset.union_subset s2Step306EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step306HeadFFresh : List Wire := [787]

private def s2Step306HeadFvFresh : List Wire := [806]

private def s2Step306HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306HeadGFresh : List Wire := [793]

private def s2Step306HeadGvFresh : List Wire := [846]

private def s2Step306FrontPlan : HmrSourceFront := ⟨s2Step306EntryGvAfter,s2Step306FrontPair,(growRow 768 s2Step306EntryFFresh ++ (growRow 769 s2Step306EntryGFresh ++ (growRow 770 s2Step306EntryFvFresh ++ (growRow 771 s2Step306EntryGvFresh ++ [])))),s2Step306FrontSigmaArena,[811],s2Step306HeadGBefore,[802],
  s2Step306HeadFvAfter,s2Step306FrontHead,(growRow 769 s2Step306HeadGFresh ++ (growRow 768 s2Step306HeadFFresh ++ (growRow 771 s2Step306HeadGvFresh ++ (growRow 770 s2Step306HeadFvFresh ++ [])))),s2Step306F4Plan,s2Step306CounterDuring,s2Step306CounterWork,s2Step306ExitGvAfter,s2Step306FrontOut,(shrinkRow 769 s2Step306ExitGExtra ++ (shrinkRow 768 s2Step306ExitFExtra ++ (shrinkRow 770 s2Step306ExitFvExtra ++ (shrinkRow 771 s2Step306ExitGvExtra ++ []))))⟩

private def s2Step306CompletePlan : HmrEarlyStepPlan := ⟨s2Step306FrontPlan,s2Step306EarlyControlArena,s2Step306EarlyControlPlan,s2Step306CompleteMoves⟩

private theorem s2Step306Complete_apart : List.Disjoint (s2Step306CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step306CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step306Complete_owned : (s2Step306CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step306CompleteMoveArena : Arena := ⟨s2Step306ExitGvAfter.live∪{629},Finset.union_subset s2Step306ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step306Complete_repack : s2Step306ExitGvAfter.checkRepack s2Step306CompleteMoves=some s2Step306EarlyControlArena := by
  have owned : 799∈s2Step306ExitGvAfter.live := by norm_num [s2Step306ExitGvAfter,arenaWires]
  have reserve : s2Step306ExitGvAfter.reserve {629}=some s2Step306CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step306ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step306CompleteMoveArena.retireSet {799}=s2Step306EarlyControlArena := by
    unfold Arena.retireSet s2Step306EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step306CompleteMoveArena,s2Step306ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step306CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step306CompleteMoveArena.retireSet {799}).checkRepack []=some s2Step306EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step306EarlyControl_branchOwned : ([802] : List Wire).toFinset⊆s2Step306EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_branch : compileHmrBranchRetirement s2Step306EarlyControlSigmaArena 802=some s2Step306EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step306EarlyControl_branchOwned
  · ext q
    simp [s2Step306EarlyControlOutputArena,s2Step306EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step306EarlyControl_classEqualityBorrow : s2Step306EarlyControlPositiveArena.checkBorrow (([811, 830] : List Wire).length-1) s2Step306EarlyControlLog.classWork=some s2Step306EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step306EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step306EarlyControlEqualityArena,s2Step306EarlyControlPositiveArena,s2Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step306EarlyControl_classEqualityOwned : ([811, 830] : List Wire).toFinset⊆s2Step306EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_classEquality : compileHmrEqualityLog s2Step306EarlyControlPositiveArena [811, 830] 0 s2Step306EarlyControlLog.classWork=some (s2Step306EarlyControlEqualityArena,s2Step306EarlyControlLog.classWork,s2Step306EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step306EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step306EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step306EarlyControl_classOwned : ([777, 793, 811] : List Wire).toFinset⊆s2Step306EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_positiveBorrow : s2Step306EarlyControlZeroArena.checkBorrow (1) s2Step306EarlyControlLog.positiveWork=some s2Step306EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step306EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step306EarlyControlPositiveArena,s2Step306EarlyControlZeroArena,s2Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step306EarlyControl_class : compileHmrSourceClassLog s2Step306EarlyControlZeroArena false 777 s2Step306EarlyControlZeroPlan.top 0 811 s2Step306EarlyControlLog.positiveWork s2Step306EarlyControlLog.classWork=some s2Step306EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step306EarlyControlClassPlan s2Step306EarlyControlZeroArena false 777 s2Step306EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step306EarlyControl_classOwned
  · exact s2Step306EarlyControl_positiveBorrow
  · exact s2Step306EarlyControl_classEquality

private theorem s2Step306EarlyControl_entryRecordOwned : ([802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_fitBorrow : s2Step306EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step306EarlyControlLog.recordFresh=some s2Step306EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step306EarlyControlFlagArena (fun q => (0≤q ∧ q<909)) rfl
      decide +kernel
    · ext q
      simp [s2Step306EarlyControlFittedArena,s2Step306EarlyControlFlagArena,s2Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step306EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step306EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlFlagArena (fun q => (0≤q ∧ q<909)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_fit : compileHmrRecordGrowLog s2Step306EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 56 s2Step306EarlyControlLog.recordFresh=some s2Step306EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step306EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step306EarlyControl_fitBorrow

private theorem s2Step306EarlyControl_flagsBorrow : s2Step306EarlyControlEqualityArena.checkBorrow (6) s2Step306EarlyControlLog.flagWork=some s2Step306EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step306EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step306EarlyControlFlagArena,s2Step306EarlyControlEqualityArena,s2Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step306EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step306EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_flags : compileHmrFlagsLog s2Step306EarlyControlClassPlan.equalityArena s2Step306EarlyControlClassPlan.equality.top 253 252 251 s2Step306EarlyControlLog.flagWork=some s2Step306EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step306EarlyControl_flagsOwned⟩
  · exact s2Step306EarlyControl_flagsBorrow

private theorem s2Step306EarlyControl_historyBorrow : s2Step306EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step306EarlyControlLog.recordFresh=some s2Step306EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step306EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step306EarlyControlHistoryArena,s2Step306EarlyControlArena,s2Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step306EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_history : compileHmrRecordGrowLog s2Step306EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 56 s2Step306EarlyControlLog.recordFresh=some s2Step306EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step306EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step306EarlyControl_historyBorrow

private theorem s2Step306EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step306EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step306EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_sigmaRelease : s2Step306EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step306EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step306EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step306EarlyControlSigmaArena,s2Step306EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step306EarlyControl_sigma : compileHmrSigmaDropLog s2Step306EarlyControlHistoryArena false 0 0 254 811 []=some s2Step306EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step306EarlyControl_sigmaOwned⟩
  · exact s2Step306EarlyControl_sigmaRelease

private theorem s2Step306EarlyControl_zeroBorrow : s2Step306EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step306EarlyControlLog.zeroWork=some s2Step306EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step306EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step306EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step306EarlyControlZeroArena,s2Step306EarlyControlArena,s2Step306EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step306EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step306EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step306EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EarlyControl_zero : compileHmrEqualityLog s2Step306EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step306EarlyControlLog.zeroWork=some (s2Step306EarlyControlZeroArena,s2Step306EarlyControlLog.zeroWork,s2Step306EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step306EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step306EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step306EarlyControl_logged : s2Step306EarlyControlPlan.Logged s2Step306EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 802 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step306EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step306EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step306EarlyControl_zero
  · exact s2Step306EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step306EarlyControl_flags
  · exact s2Step306EarlyControl_fit
  · exact s2Step306EarlyControl_history
  · exact s2Step306EarlyControl_sigma
  · exact s2Step306EarlyControl_branch

private theorem s2Step306EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step306EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 802 56 s2Step306EarlyControlLog=some s2Step306EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step306EarlyControlPlan s2Step306EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 802 56 s2Step306EarlyControl_logged

private def s2Step306EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629],768⟩

private def s2Step306EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step306EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step306EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819],771⟩

private def s2Step306FrontBank : WindowBank := ⟨s2Step306EntryFRow,s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow⟩

private def s2Step306Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 787, 768]

private def s2Step306Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 793, 769]

private def s2Step306Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 806, 770]

private def s2Step306Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 846, 771]

private theorem s2Step306Counter_apart : Disjoint s2Step306HeadFvAfter.live s2Step306CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step306HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306Counter_borrowed : s2Step306HeadFvAfter.checkBorrow 4 s2Step306CounterWork=some s2Step306CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step306HeadFvAfter s2Step306CounterDuring s2Step306CounterWork.toFinset s2Step306Counter_bounded s2Step306Counter_apart rfl

private theorem s2Step306Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step306HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step306HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306Counter_checked : compileHmrCounterStepLog s2Step306HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step306CounterWork=some s2Step306CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step306HeadFvAfter.live := fun q hq => s2Step306Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step306Counter_borrowed

private def s2Step306EntryFAfter : Arena := s2Step306EntryFBefore

private theorem s2Step306EntryBank_incomingDistinct : ([s2Step306EntryFRow,s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306EntryF_Incoming : rowsOwned s2Step306EntryFBefore [s2Step306EntryFRow,s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306EntryFRow,s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow] 0 s2Step306EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306EntryBank_outgoingOwned : rowsOwned s2Step306EntryGvAfter [s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step306EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306EntryF_Outgoing : rowsOwned s2Step306EntryGvAfter [s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut] :=
  hmrRows_owned_drop s2Step306EntryGvAfter [s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut] 0 s2Step306EntryBank_outgoingOwned

private theorem s2Step306EntryF_distinct : (s2Step306EntryFRow.sign::s2Step306EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306EntryF_owned : (s2Step306EntryFRow.sign::s2Step306EntryFRow.payload).toFinset⊆s2Step306EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EntryF_reserved : s2Step306EntryFBefore.reserve s2Step306EntryFFresh.toFinset=some s2Step306EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step306EntryFFresh,arenaWires]
  · norm_num [s2Step306EntryFBefore,s2Step306EntryFFresh,arenaWires]
  · simp only [s2Step306EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step306EntryF_checked : planRowResizeLog s2Step306EntryFBefore s2Step306EntryFRow 118 s2Step306EntryFFresh=
    some (s2Step306EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629],768⟩,growRow 768 s2Step306EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step306EntryFBefore s2Step306EntryFAfter s2Step306EntryFRow 118 s2Step306EntryFFresh
    s2Step306EntryF_distinct s2Step306EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step306EntryF_reserved
  have rowEq : WindowRow.mk (s2Step306EntryFRow.payload++s2Step306EntryFFresh) s2Step306EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step306EntryFvAfter : Arena := s2Step306EntryFBefore

private def s2Step306EntryFvBefore : Arena := s2Step306EntryFBefore

private theorem s2Step306EntryFv_Incoming : rowsOwned s2Step306EntryFvBefore [s2Step306EntryFvRow,s2Step306EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306EntryFRow,s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow] 2 s2Step306EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306EntryFv_Outgoing : rowsOwned s2Step306EntryGvAfter [s2Step306EntryFvOut,s2Step306EntryGvOut] :=
  hmrRows_owned_drop s2Step306EntryGvAfter [s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut] 2 s2Step306EntryBank_outgoingOwned

private theorem s2Step306EntryFv_distinct : (s2Step306EntryFvRow.sign::s2Step306EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306EntryFv_owned : (s2Step306EntryFvRow.sign::s2Step306EntryFvRow.payload).toFinset⊆s2Step306EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EntryFv_reserved : s2Step306EntryFvBefore.reserve s2Step306EntryFvFresh.toFinset=some s2Step306EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step306EntryFvFresh,arenaWires]
  · norm_num [s2Step306EntryFvBefore,s2Step306EntryFBefore,s2Step306EntryFvFresh,arenaWires]
  · simp only [s2Step306EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step306EntryFv_checked : planRowResizeLog s2Step306EntryFvBefore s2Step306EntryFvRow 169 s2Step306EntryFvFresh=
    some (s2Step306EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩,growRow 770 s2Step306EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step306EntryFvBefore s2Step306EntryFvAfter s2Step306EntryFvRow 169 s2Step306EntryFvFresh
    s2Step306EntryFv_distinct s2Step306EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step306EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step306EntryFvRow.payload++s2Step306EntryFvFresh) s2Step306EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step306EntryGAfter : Arena := s2Step306EntryFBefore

private def s2Step306EntryGBefore : Arena := s2Step306EntryFBefore

private theorem s2Step306EntryG_Incoming : rowsOwned s2Step306EntryGBefore [s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306EntryFRow,s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow] 1 s2Step306EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306EntryG_Outgoing : rowsOwned s2Step306EntryGvAfter [s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut] :=
  hmrRows_owned_drop s2Step306EntryGvAfter [s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut] 1 s2Step306EntryBank_outgoingOwned

private theorem s2Step306EntryG_distinct : (s2Step306EntryGRow.sign::s2Step306EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306EntryG_owned : (s2Step306EntryGRow.sign::s2Step306EntryGRow.payload).toFinset⊆s2Step306EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EntryG_reserved : s2Step306EntryGBefore.reserve s2Step306EntryGFresh.toFinset=some s2Step306EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step306EntryGFresh,arenaWires]
  · norm_num [s2Step306EntryGBefore,s2Step306EntryFBefore,s2Step306EntryGFresh,arenaWires]
  · simp only [s2Step306EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step306EntryG_checked : planRowResizeLog s2Step306EntryGBefore s2Step306EntryGRow 118 s2Step306EntryGFresh=
    some (s2Step306EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩,growRow 769 s2Step306EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step306EntryGBefore s2Step306EntryGAfter s2Step306EntryGRow 118 s2Step306EntryGFresh
    s2Step306EntryG_distinct s2Step306EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step306EntryG_reserved
  have rowEq : WindowRow.mk (s2Step306EntryGRow.payload++s2Step306EntryGFresh) s2Step306EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step306EntryGvBefore : Arena := s2Step306EntryFBefore

private theorem s2Step306EntryGv_Incoming : rowsOwned s2Step306EntryGvBefore [s2Step306EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306EntryFRow,s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow] 3 s2Step306EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306EntryGv_Outgoing : rowsOwned s2Step306EntryGvAfter [s2Step306EntryGvOut] :=
  hmrRows_owned_drop s2Step306EntryGvAfter [s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut] 3 s2Step306EntryBank_outgoingOwned

private theorem s2Step306EntryGv_distinct : (s2Step306EntryGvRow.sign::s2Step306EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306EntryGv_owned : (s2Step306EntryGvRow.sign::s2Step306EntryGvRow.payload).toFinset⊆s2Step306EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306EntryGv_reserved : s2Step306EntryGvBefore.reserve s2Step306EntryGvFresh.toFinset=some s2Step306EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step306EntryGvFresh,arenaWires]
  · norm_num [s2Step306EntryGvBefore,s2Step306EntryFBefore,s2Step306EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step306EntryGvAfter,s2Step306EntryGvBefore,s2Step306EntryFBefore,s2Step306EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step306EntryGv_checked : planRowResizeLog s2Step306EntryGvBefore s2Step306EntryGvRow 169 s2Step306EntryGvFresh=
    some (s2Step306EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩,growRow 771 s2Step306EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step306EntryGvBefore s2Step306EntryGvAfter s2Step306EntryGvRow 169 s2Step306EntryGvFresh
    s2Step306EntryGv_distinct s2Step306EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step306EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step306EntryGvRow.payload++s2Step306EntryGvFresh) s2Step306EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step306EntryBank_rows : planWindowRowsLog s2Step306EntryFBefore [(s2Step306EntryFRow,118),(s2Step306EntryGRow,118),(s2Step306EntryFvRow,169),(s2Step306EntryGvRow,169)] [s2Step306EntryFFresh,s2Step306EntryGFresh,s2Step306EntryFvFresh,s2Step306EntryGvFresh]=
    some (s2Step306EntryGvAfter,[s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut],(growRow 768 s2Step306EntryFFresh ++ (growRow 769 s2Step306EntryGFresh ++ (growRow 770 s2Step306EntryFvFresh ++ (growRow 771 s2Step306EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step306EntryGvAfter [] []=some (s2Step306EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step306EntryGvBefore s2Step306EntryGvAfter s2Step306EntryGvAfter
    s2Step306EntryGvRow s2Step306EntryGvOut 169 s2Step306EntryGvFresh [] [] []
    (growRow 771 s2Step306EntryGvFresh) ([]) s2Step306EntryGv_Incoming s2Step306EntryGv_checked h4 s2Step306EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step306EntryFvBefore s2Step306EntryFvAfter s2Step306EntryGvAfter
    s2Step306EntryFvRow s2Step306EntryFvOut 169 s2Step306EntryFvFresh [(s2Step306EntryGvRow,169)] [s2Step306EntryGvFresh] [s2Step306EntryGvOut]
    (growRow 770 s2Step306EntryFvFresh) ((growRow 771 s2Step306EntryGvFresh ++ [])) s2Step306EntryFv_Incoming s2Step306EntryFv_checked h3 s2Step306EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step306EntryGBefore s2Step306EntryGAfter s2Step306EntryGvAfter
    s2Step306EntryGRow s2Step306EntryGOut 118 s2Step306EntryGFresh [(s2Step306EntryFvRow,169),(s2Step306EntryGvRow,169)] [s2Step306EntryFvFresh,s2Step306EntryGvFresh] [s2Step306EntryFvOut,s2Step306EntryGvOut]
    (growRow 769 s2Step306EntryGFresh) ((growRow 770 s2Step306EntryFvFresh ++ (growRow 771 s2Step306EntryGvFresh ++ []))) s2Step306EntryG_Incoming s2Step306EntryG_checked h2 s2Step306EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step306EntryFBefore s2Step306EntryFAfter s2Step306EntryGvAfter
    s2Step306EntryFRow s2Step306EntryFOut 118 s2Step306EntryFFresh [(s2Step306EntryGRow,118),(s2Step306EntryFvRow,169),(s2Step306EntryGvRow,169)] [s2Step306EntryGFresh,s2Step306EntryFvFresh,s2Step306EntryGvFresh] [s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut]
    (growRow 768 s2Step306EntryFFresh) ((growRow 769 s2Step306EntryGFresh ++ (growRow 770 s2Step306EntryFvFresh ++ (growRow 771 s2Step306EntryGvFresh ++ [])))) s2Step306EntryF_Incoming s2Step306EntryF_checked h1 s2Step306EntryF_Outgoing
  exact h0

private theorem s2Step306EntryBank_checked : compileHmrBankResizeLog .entry s2Step306EntryFBefore ⟨s2Step306EntryFRow,s2Step306EntryGRow,s2Step306EntryFvRow,s2Step306EntryGvRow⟩ ⟨118,118,169,169⟩ [s2Step306EntryFFresh,s2Step306EntryGFresh,s2Step306EntryFvFresh,s2Step306EntryGvFresh]=
    some (s2Step306EntryGvAfter,⟨s2Step306EntryFOut,s2Step306EntryGOut,s2Step306EntryFvOut,s2Step306EntryGvOut⟩,(growRow 768 s2Step306EntryFFresh ++ (growRow 769 s2Step306EntryGFresh ++ (growRow 770 s2Step306EntryFvFresh ++ (growRow 771 s2Step306EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step306EntryBank_rows]
  rfl

private def s2Step306ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<629) ∨ (630≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306ExitFBefore : Arena := s2Step306ExitGAfter

private def s2Step306ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 787],768⟩

private def s2Step306ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 806],770⟩

private def s2Step306ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 793],769⟩

private def s2Step306ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 846],771⟩

private theorem s2Step306ExitBank_incomingDistinct : ([s2Step306ExitGRow,s2Step306ExitFRow,s2Step306ExitFvRow,s2Step306ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306ExitF_Incoming : rowsOwned s2Step306ExitFBefore [s2Step306ExitFRow,s2Step306ExitFvRow,s2Step306ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306ExitGRow,s2Step306ExitFRow,s2Step306ExitFvRow,s2Step306ExitGvRow] 1 s2Step306ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306ExitBank_outgoingOwned : rowsOwned s2Step306ExitGvAfter [s2Step306ExitGOut,s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step306ExitGvAfter (fun q => (0≤q ∧ q<629) ∨ (630≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306ExitF_Outgoing : rowsOwned s2Step306ExitGvAfter [s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut] :=
  hmrRows_owned_drop s2Step306ExitGvAfter [s2Step306ExitGOut,s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut] 1 s2Step306ExitBank_outgoingOwned

private theorem s2Step306ExitF_distinct : (s2Step306ExitFRow.sign::s2Step306ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306ExitF_owned : (s2Step306ExitFRow.sign::s2Step306ExitFRow.payload).toFinset⊆s2Step306ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306ExitF_retired : s2Step306ExitFBefore.retireSet s2Step306ExitFExtra.toFinset=s2Step306ExitFAfter := by
  unfold Arena.retireSet s2Step306ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step306ExitFBefore,s2Step306ExitGAfter,s2Step306ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step306ExitF_checked : planRowResizeLog s2Step306ExitFBefore s2Step306ExitFRow 117 []=
    some (s2Step306ExitFAfter,s2Step306ExitFOut,shrinkRow 768 s2Step306ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step306ExitFBefore s2Step306ExitFRow 117 s2Step306ExitF_distinct s2Step306ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step306ExitFRow.payload.take 117) s2Step306ExitFRow.sign=s2Step306ExitFOut := by decide +kernel
  have hi : s2Step306ExitFRow.payload.drop 117=s2Step306ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step306ExitF_retired] at result
  exact result

private def s2Step306ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<629) ∨ (630≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306ExitFvBefore : Arena := s2Step306ExitFAfter

private theorem s2Step306ExitFv_Incoming : rowsOwned s2Step306ExitFvBefore [s2Step306ExitFvRow,s2Step306ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306ExitGRow,s2Step306ExitFRow,s2Step306ExitFvRow,s2Step306ExitGvRow] 2 s2Step306ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306ExitFvBefore (fun q => (0≤q ∧ q<629) ∨ (630≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306ExitFv_Outgoing : rowsOwned s2Step306ExitGvAfter [s2Step306ExitFvOut,s2Step306ExitGvOut] :=
  hmrRows_owned_drop s2Step306ExitGvAfter [s2Step306ExitGOut,s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut] 2 s2Step306ExitBank_outgoingOwned

private theorem s2Step306ExitFv_distinct : (s2Step306ExitFvRow.sign::s2Step306ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306ExitFv_owned : (s2Step306ExitFvRow.sign::s2Step306ExitFvRow.payload).toFinset⊆s2Step306ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306ExitFvBefore (fun q => (0≤q ∧ q<629) ∨ (630≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306ExitFv_retired : s2Step306ExitFvBefore.retireSet s2Step306ExitFvExtra.toFinset=s2Step306ExitFvAfter := by
  unfold Arena.retireSet s2Step306ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step306ExitFvBefore,s2Step306ExitFAfter,s2Step306ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step306ExitFv_checked : planRowResizeLog s2Step306ExitFvBefore s2Step306ExitFvRow 169 []=
    some (s2Step306ExitFvAfter,s2Step306ExitFvOut,shrinkRow 770 s2Step306ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step306ExitFvBefore s2Step306ExitFvRow 169 s2Step306ExitFv_distinct s2Step306ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step306ExitFvRow.payload.take 169) s2Step306ExitFvRow.sign=s2Step306ExitFvOut := by decide +kernel
  have hi : s2Step306ExitFvRow.payload.drop 169=s2Step306ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step306ExitFv_retired] at result
  exact result

private def s2Step306ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step306ExitG_Incoming : rowsOwned s2Step306ExitGBefore [s2Step306ExitGRow,s2Step306ExitFRow,s2Step306ExitFvRow,s2Step306ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306ExitGRow,s2Step306ExitFRow,s2Step306ExitFvRow,s2Step306ExitGvRow] 0 s2Step306ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306ExitG_Outgoing : rowsOwned s2Step306ExitGvAfter [s2Step306ExitGOut,s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut] :=
  hmrRows_owned_drop s2Step306ExitGvAfter [s2Step306ExitGOut,s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut] 0 s2Step306ExitBank_outgoingOwned

private theorem s2Step306ExitG_distinct : (s2Step306ExitGRow.sign::s2Step306ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306ExitG_owned : (s2Step306ExitGRow.sign::s2Step306ExitGRow.payload).toFinset⊆s2Step306ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306ExitG_retired : s2Step306ExitGBefore.retireSet s2Step306ExitGExtra.toFinset=s2Step306ExitGAfter := by
  unfold Arena.retireSet s2Step306ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step306ExitGBefore,s2Step306ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step306ExitG_checked : planRowResizeLog s2Step306ExitGBefore s2Step306ExitGRow 118 []=
    some (s2Step306ExitGAfter,s2Step306ExitGOut,shrinkRow 769 s2Step306ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step306ExitGBefore s2Step306ExitGRow 118 s2Step306ExitG_distinct s2Step306ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step306ExitGRow.payload.take 118) s2Step306ExitGRow.sign=s2Step306ExitGOut := by decide +kernel
  have hi : s2Step306ExitGRow.payload.drop 118=s2Step306ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step306ExitG_retired] at result
  exact result

private def s2Step306ExitGvBefore : Arena := s2Step306ExitFvAfter

private theorem s2Step306ExitGv_Incoming : rowsOwned s2Step306ExitGvBefore [s2Step306ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306ExitGRow,s2Step306ExitFRow,s2Step306ExitFvRow,s2Step306ExitGvRow] 3 s2Step306ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306ExitGvBefore (fun q => (0≤q ∧ q<629) ∨ (630≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306ExitGv_Outgoing : rowsOwned s2Step306ExitGvAfter [s2Step306ExitGvOut] :=
  hmrRows_owned_drop s2Step306ExitGvAfter [s2Step306ExitGOut,s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut] 3 s2Step306ExitBank_outgoingOwned

private theorem s2Step306ExitGv_distinct : (s2Step306ExitGvRow.sign::s2Step306ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306ExitGv_owned : (s2Step306ExitGvRow.sign::s2Step306ExitGvRow.payload).toFinset⊆s2Step306ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306ExitGvBefore (fun q => (0≤q ∧ q<629) ∨ (630≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306ExitGv_retired : s2Step306ExitGvBefore.retireSet s2Step306ExitGvExtra.toFinset=s2Step306ExitGvAfter := by
  unfold Arena.retireSet s2Step306ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step306ExitGvBefore,s2Step306ExitFvAfter,s2Step306ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step306ExitGv_checked : planRowResizeLog s2Step306ExitGvBefore s2Step306ExitGvRow 169 []=
    some (s2Step306ExitGvAfter,s2Step306ExitGvOut,shrinkRow 771 s2Step306ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step306ExitGvBefore s2Step306ExitGvRow 169 s2Step306ExitGv_distinct s2Step306ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step306ExitGvRow.payload.take 169) s2Step306ExitGvRow.sign=s2Step306ExitGvOut := by decide +kernel
  have hi : s2Step306ExitGvRow.payload.drop 169=s2Step306ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step306ExitGv_retired] at result
  exact result

private theorem s2Step306ExitBank_rows : planWindowRowsLog s2Step306ExitGBefore [(s2Step306ExitGRow,118),(s2Step306ExitFRow,117),(s2Step306ExitFvRow,169),(s2Step306ExitGvRow,169)] [[],[],[],[]]=
    some (s2Step306ExitGvAfter,[s2Step306ExitGOut,s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut],(shrinkRow 769 s2Step306ExitGExtra ++ (shrinkRow 768 s2Step306ExitFExtra ++ (shrinkRow 770 s2Step306ExitFvExtra ++ (shrinkRow 771 s2Step306ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step306ExitGvAfter [] []=some (s2Step306ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step306ExitGvBefore s2Step306ExitGvAfter s2Step306ExitGvAfter
    s2Step306ExitGvRow s2Step306ExitGvOut 169 [] [] [] []
    (shrinkRow 771 s2Step306ExitGvExtra) ([]) s2Step306ExitGv_Incoming s2Step306ExitGv_checked h4 s2Step306ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step306ExitFvBefore s2Step306ExitFvAfter s2Step306ExitGvAfter
    s2Step306ExitFvRow s2Step306ExitFvOut 169 [] [(s2Step306ExitGvRow,169)] [[]] [s2Step306ExitGvOut]
    (shrinkRow 770 s2Step306ExitFvExtra) ((shrinkRow 771 s2Step306ExitGvExtra ++ [])) s2Step306ExitFv_Incoming s2Step306ExitFv_checked h3 s2Step306ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step306ExitFBefore s2Step306ExitFAfter s2Step306ExitGvAfter
    s2Step306ExitFRow s2Step306ExitFOut 117 [] [(s2Step306ExitFvRow,169),(s2Step306ExitGvRow,169)] [[],[]] [s2Step306ExitFvOut,s2Step306ExitGvOut]
    (shrinkRow 768 s2Step306ExitFExtra) ((shrinkRow 770 s2Step306ExitFvExtra ++ (shrinkRow 771 s2Step306ExitGvExtra ++ []))) s2Step306ExitF_Incoming s2Step306ExitF_checked h2 s2Step306ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step306ExitGBefore s2Step306ExitGAfter s2Step306ExitGvAfter
    s2Step306ExitGRow s2Step306ExitGOut 118 [] [(s2Step306ExitFRow,117),(s2Step306ExitFvRow,169),(s2Step306ExitGvRow,169)] [[],[],[]] [s2Step306ExitFOut,s2Step306ExitFvOut,s2Step306ExitGvOut]
    (shrinkRow 769 s2Step306ExitGExtra) ((shrinkRow 768 s2Step306ExitFExtra ++ (shrinkRow 770 s2Step306ExitFvExtra ++ (shrinkRow 771 s2Step306ExitGvExtra ++ [])))) s2Step306ExitG_Incoming s2Step306ExitG_checked h1 s2Step306ExitG_Outgoing
  exact h0

private theorem s2Step306ExitBank_checked : compileHmrBankResizeLog .exit s2Step306ExitGBefore ⟨s2Step306ExitFRow,s2Step306ExitGRow,s2Step306ExitFvRow,s2Step306ExitGvRow⟩ ⟨117,118,169,169⟩ [[],[],[],[]]=
    some (s2Step306ExitGvAfter,⟨s2Step306ExitFOut,s2Step306ExitGOut,s2Step306ExitFvOut,s2Step306ExitGvOut⟩,(shrinkRow 769 s2Step306ExitGExtra ++ (shrinkRow 768 s2Step306ExitFExtra ++ (shrinkRow 770 s2Step306ExitFvExtra ++ (shrinkRow 771 s2Step306ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step306ExitBank_rows]
  rfl

private theorem s2Step306Add0_apart : Disjoint s2Step306Add0Arena.live s2Step306Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step306Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306Add0_card : s2Step306Add0Arena.live.card=903 := by
  decide +kernel

private theorem s2Step306Add0_borrowed : s2Step306Add0Arena.checkBorrow (hmrHybridCount s2Step306Add0Arena s2Step306Add0B.length) s2Step306Add0Work=some s2Step306Add0During := by
  have len : s2Step306Add0Work.length=hmrHybridCount s2Step306Add0Arena s2Step306Add0B.length := by
    rw [hmrHybridCount,s2Step306Add0_card]
    decide +kernel
  have nd : s2Step306Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step306Add0Arena s2Step306Add0During s2Step306Add0Work.toFinset s2Step306Add0_bounded s2Step306Add0_apart rfl

private theorem s2Step306Add0_distinct : (830::802::800::(s2Step306Add0A++s2Step306Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306Add0_owned : (830::802::800::(s2Step306Add0A++s2Step306Add0B)).toFinset⊆s2Step306Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step306Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306Add0_checked : compileHmrHybridCinLog s2Step306Add0Arena 802 830 800 s2Step306Add0A s2Step306Add0B s2Step306Add0Work=some s2Step306Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step306Add0Arena s2Step306Add0During 802 830 800 s2Step306Add0A s2Step306Add0B s2Step306Add0Work
    (by decide +kernel) (by decide +kernel) s2Step306Add0_distinct
    (fun q hq => s2Step306Add0_owned (List.mem_toFinset.mpr hq)) s2Step306Add0_borrowed

private theorem s2Step306Add1_apart : Disjoint s2Step306Add1Arena.live s2Step306Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step306Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306Add1_card : s2Step306Add1Arena.live.card=903 := by
  decide +kernel

private theorem s2Step306Add1_borrowed : s2Step306Add1Arena.checkBorrow (hmrHybridCount s2Step306Add1Arena s2Step306Add1B.length) s2Step306Add1Work=some s2Step306Add1During := by
  have len : s2Step306Add1Work.length=hmrHybridCount s2Step306Add1Arena s2Step306Add1B.length := by
    rw [hmrHybridCount,s2Step306Add1_card]
    decide +kernel
  have nd : s2Step306Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step306Add1Arena s2Step306Add1During s2Step306Add1Work.toFinset s2Step306Add1_bounded s2Step306Add1_apart rfl

private theorem s2Step306Add1_distinct : (830::802::800::(s2Step306Add1A++s2Step306Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306Add1_owned : (830::802::800::(s2Step306Add1A++s2Step306Add1B)).toFinset⊆s2Step306Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step306Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306Add1_checked : compileHmrHybridCinLog s2Step306Add1Arena 802 830 800 s2Step306Add1A s2Step306Add1B s2Step306Add1Work=some s2Step306Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step306Add1Arena s2Step306Add1During 802 830 800 s2Step306Add1A s2Step306Add1B s2Step306Add1Work
    (by decide +kernel) (by decide +kernel) s2Step306Add1_distinct
    (fun q hq => s2Step306Add1_owned (List.mem_toFinset.mpr hq)) s2Step306Add1_borrowed

private theorem s2Step306F4_apart : Disjoint (s2Step306Add0A++s2Step306Add0B).toFinset (s2Step306Add1A++s2Step306Add1B).toFinset := by
  have nd : ((s2Step306Add0A++s2Step306Add0B)++(s2Step306Add1A++s2Step306Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step306F4_carry : s2Step306F4FlagArena.checkBorrow 1 [800]=some s2Step306Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step306F4FlagArena,s2Step306HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step306F4FlagArena,s2Step306HeadFvAfter,s2Step306Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step306F4_distinct : (811::802::830::800::((s2Step306Add0A++s2Step306Add1A)++(s2Step306Add0B++s2Step306Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306F4_flag : s2Step306HeadFvAfter.checkBorrow 1 [830]=some s2Step306F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step306HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step306F4_owned : (811::802::((s2Step306Add0A++s2Step306Add1A)++(s2Step306Add0B++s2Step306Add1B))).toFinset⊆s2Step306HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step306HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306F4_checked : compileHmrHybridF4Log s2Step306HeadFvAfter 811 802 s2Step306Add0A s2Step306Add0B s2Step306Add1A s2Step306Add1B [830] [800] s2Step306Add0Work s2Step306Add1Work=some s2Step306F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step306HeadFvAfter s2Step306F4FlagArena s2Step306Add0Arena s2Step306Add0During s2Step306Add1During 811 802
    s2Step306Add0A s2Step306Add0B s2Step306Add1A s2Step306Add1B [830] [800] s2Step306Add0Work s2Step306Add1Work
    (fun q hq => s2Step306F4_owned (List.mem_toFinset.mpr hq)) s2Step306F4_flag s2Step306F4_carry
    s2Step306F4_distinct s2Step306F4_apart s2Step306Add0_checked s2Step306Add1_checked

private theorem s2Step306Front_branch : s2Step306FrontSigmaArena.checkBorrow 1 [802]=some s2Step306HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step306FrontSigmaArena,s2Step306EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step306FrontSigmaArena,s2Step306EntryGvAfter,s2Step306HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step306Front_entry : HmrFrontEntryValid s2Step306EntryFBefore s2Step306FrontBank 118 169 ⟨117,118,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step306FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step306EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step306EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step306FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step306Front_sigma : s2Step306EntryGvAfter.checkBorrow 1 [811]=some s2Step306FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step306EntryGvAfter,arenaWires]
  · rfl

private def s2Step306HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306HeadFBefore : Arena := s2Step306HeadGAfter

private def s2Step306HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629],768⟩

private def s2Step306HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step306HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step306HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private theorem s2Step306HeadBank_incomingDistinct : ([s2Step306HeadGRow,s2Step306HeadFRow,s2Step306HeadGvRow,s2Step306HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306HeadF_Incoming : rowsOwned s2Step306HeadFBefore [s2Step306HeadFRow,s2Step306HeadGvRow,s2Step306HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306HeadGRow,s2Step306HeadFRow,s2Step306HeadGvRow,s2Step306HeadFvRow] 1 s2Step306HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306HeadBank_outgoingOwned : rowsOwned s2Step306HeadFvAfter [s2Step306HeadGOut,s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step306HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306HeadF_Outgoing : rowsOwned s2Step306HeadFvAfter [s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut] :=
  hmrRows_owned_drop s2Step306HeadFvAfter [s2Step306HeadGOut,s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut] 1 s2Step306HeadBank_outgoingOwned

private theorem s2Step306HeadF_distinct : (s2Step306HeadFRow.sign::s2Step306HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306HeadF_owned : (s2Step306HeadFRow.sign::s2Step306HeadFRow.payload).toFinset⊆s2Step306HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306HeadF_reserved : s2Step306HeadFBefore.reserve s2Step306HeadFFresh.toFinset=some s2Step306HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step306HeadFFresh,arenaWires]
  · norm_num [s2Step306HeadFBefore,s2Step306HeadGAfter,s2Step306HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step306HeadFAfter,s2Step306HeadFBefore,s2Step306HeadGAfter,s2Step306HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step306HeadF_checked : planRowResizeLog s2Step306HeadFBefore s2Step306HeadFRow 119 s2Step306HeadFFresh=
    some (s2Step306HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 787],768⟩,growRow 768 s2Step306HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step306HeadFBefore s2Step306HeadFAfter s2Step306HeadFRow 119 s2Step306HeadFFresh
    s2Step306HeadF_distinct s2Step306HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step306HeadF_reserved
  have rowEq : WindowRow.mk (s2Step306HeadFRow.payload++s2Step306HeadFFresh) s2Step306HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step306HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step306HeadFvBefore : Arena := s2Step306HeadGvAfter

private theorem s2Step306HeadFv_Incoming : rowsOwned s2Step306HeadFvBefore [s2Step306HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306HeadGRow,s2Step306HeadFRow,s2Step306HeadGvRow,s2Step306HeadFvRow] 3 s2Step306HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306HeadFv_Outgoing : rowsOwned s2Step306HeadFvAfter [s2Step306HeadFvOut] :=
  hmrRows_owned_drop s2Step306HeadFvAfter [s2Step306HeadGOut,s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut] 3 s2Step306HeadBank_outgoingOwned

private theorem s2Step306HeadFv_distinct : (s2Step306HeadFvRow.sign::s2Step306HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306HeadFv_owned : (s2Step306HeadFvRow.sign::s2Step306HeadFvRow.payload).toFinset⊆s2Step306HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306HeadFv_reserved : s2Step306HeadFvBefore.reserve s2Step306HeadFvFresh.toFinset=some s2Step306HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step306HeadFvFresh,arenaWires]
  · norm_num [s2Step306HeadFvBefore,s2Step306HeadGvAfter,s2Step306HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step306HeadFvAfter,s2Step306HeadFvBefore,s2Step306HeadGvAfter,s2Step306HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step306HeadFv_checked : planRowResizeLog s2Step306HeadFvBefore s2Step306HeadFvRow 170 s2Step306HeadFvFresh=
    some (s2Step306HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 806],770⟩,growRow 770 s2Step306HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step306HeadFvBefore s2Step306HeadFvAfter s2Step306HeadFvRow 170 s2Step306HeadFvFresh
    s2Step306HeadFv_distinct s2Step306HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step306HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step306HeadFvRow.payload++s2Step306HeadFvFresh) s2Step306HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step306HeadG_Incoming : rowsOwned s2Step306HeadGBefore [s2Step306HeadGRow,s2Step306HeadFRow,s2Step306HeadGvRow,s2Step306HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306HeadGRow,s2Step306HeadFRow,s2Step306HeadGvRow,s2Step306HeadFvRow] 0 s2Step306HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306HeadG_Outgoing : rowsOwned s2Step306HeadFvAfter [s2Step306HeadGOut,s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut] :=
  hmrRows_owned_drop s2Step306HeadFvAfter [s2Step306HeadGOut,s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut] 0 s2Step306HeadBank_outgoingOwned

private theorem s2Step306HeadG_distinct : (s2Step306HeadGRow.sign::s2Step306HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306HeadG_owned : (s2Step306HeadGRow.sign::s2Step306HeadGRow.payload).toFinset⊆s2Step306HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306HeadG_reserved : s2Step306HeadGBefore.reserve s2Step306HeadGFresh.toFinset=some s2Step306HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step306HeadGFresh,arenaWires]
  · norm_num [s2Step306HeadGBefore,s2Step306HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step306HeadGAfter,s2Step306HeadGBefore,s2Step306HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step306HeadG_checked : planRowResizeLog s2Step306HeadGBefore s2Step306HeadGRow 119 s2Step306HeadGFresh=
    some (s2Step306HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 793],769⟩,growRow 769 s2Step306HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step306HeadGBefore s2Step306HeadGAfter s2Step306HeadGRow 119 s2Step306HeadGFresh
    s2Step306HeadG_distinct s2Step306HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step306HeadG_reserved
  have rowEq : WindowRow.mk (s2Step306HeadGRow.payload++s2Step306HeadGFresh) s2Step306HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step306HeadGvBefore : Arena := s2Step306HeadFAfter

private theorem s2Step306HeadGv_Incoming : rowsOwned s2Step306HeadGvBefore [s2Step306HeadGvRow,s2Step306HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step306HeadGRow,s2Step306HeadFRow,s2Step306HeadGvRow,s2Step306HeadFvRow] 2 s2Step306HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step306HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step306HeadGv_Outgoing : rowsOwned s2Step306HeadFvAfter [s2Step306HeadGvOut,s2Step306HeadFvOut] :=
  hmrRows_owned_drop s2Step306HeadFvAfter [s2Step306HeadGOut,s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut] 2 s2Step306HeadBank_outgoingOwned

private theorem s2Step306HeadGv_distinct : (s2Step306HeadGvRow.sign::s2Step306HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step306HeadGv_owned : (s2Step306HeadGvRow.sign::s2Step306HeadGvRow.payload).toFinset⊆s2Step306HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step306HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step306HeadGv_reserved : s2Step306HeadGvBefore.reserve s2Step306HeadGvFresh.toFinset=some s2Step306HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step306HeadGvFresh,arenaWires]
  · norm_num [s2Step306HeadGvBefore,s2Step306HeadFAfter,s2Step306HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step306HeadGvAfter,s2Step306HeadGvBefore,s2Step306HeadFAfter,s2Step306HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step306HeadGv_checked : planRowResizeLog s2Step306HeadGvBefore s2Step306HeadGvRow 170 s2Step306HeadGvFresh=
    some (s2Step306HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 846],771⟩,growRow 771 s2Step306HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step306HeadGvBefore s2Step306HeadGvAfter s2Step306HeadGvRow 170 s2Step306HeadGvFresh
    s2Step306HeadGv_distinct s2Step306HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step306HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step306HeadGvRow.payload++s2Step306HeadGvFresh) s2Step306HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step306HeadBank_rows : planWindowRowsLog s2Step306HeadGBefore [(s2Step306HeadGRow,119),(s2Step306HeadFRow,119),(s2Step306HeadGvRow,170),(s2Step306HeadFvRow,170)] [s2Step306HeadGFresh,s2Step306HeadFFresh,s2Step306HeadGvFresh,s2Step306HeadFvFresh]=
    some (s2Step306HeadFvAfter,[s2Step306HeadGOut,s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut],(growRow 769 s2Step306HeadGFresh ++ (growRow 768 s2Step306HeadFFresh ++ (growRow 771 s2Step306HeadGvFresh ++ (growRow 770 s2Step306HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step306HeadFvAfter [] []=some (s2Step306HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step306HeadFvBefore s2Step306HeadFvAfter s2Step306HeadFvAfter
    s2Step306HeadFvRow s2Step306HeadFvOut 170 s2Step306HeadFvFresh [] [] []
    (growRow 770 s2Step306HeadFvFresh) ([]) s2Step306HeadFv_Incoming s2Step306HeadFv_checked h4 s2Step306HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step306HeadGvBefore s2Step306HeadGvAfter s2Step306HeadFvAfter
    s2Step306HeadGvRow s2Step306HeadGvOut 170 s2Step306HeadGvFresh [(s2Step306HeadFvRow,170)] [s2Step306HeadFvFresh] [s2Step306HeadFvOut]
    (growRow 771 s2Step306HeadGvFresh) ((growRow 770 s2Step306HeadFvFresh ++ [])) s2Step306HeadGv_Incoming s2Step306HeadGv_checked h3 s2Step306HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step306HeadFBefore s2Step306HeadFAfter s2Step306HeadFvAfter
    s2Step306HeadFRow s2Step306HeadFOut 119 s2Step306HeadFFresh [(s2Step306HeadGvRow,170),(s2Step306HeadFvRow,170)] [s2Step306HeadGvFresh,s2Step306HeadFvFresh] [s2Step306HeadGvOut,s2Step306HeadFvOut]
    (growRow 768 s2Step306HeadFFresh) ((growRow 771 s2Step306HeadGvFresh ++ (growRow 770 s2Step306HeadFvFresh ++ []))) s2Step306HeadF_Incoming s2Step306HeadF_checked h2 s2Step306HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step306HeadGBefore s2Step306HeadGAfter s2Step306HeadFvAfter
    s2Step306HeadGRow s2Step306HeadGOut 119 s2Step306HeadGFresh [(s2Step306HeadFRow,119),(s2Step306HeadGvRow,170),(s2Step306HeadFvRow,170)] [s2Step306HeadFFresh,s2Step306HeadGvFresh,s2Step306HeadFvFresh] [s2Step306HeadFOut,s2Step306HeadGvOut,s2Step306HeadFvOut]
    (growRow 769 s2Step306HeadGFresh) ((growRow 768 s2Step306HeadFFresh ++ (growRow 771 s2Step306HeadGvFresh ++ (growRow 770 s2Step306HeadFvFresh ++ [])))) s2Step306HeadG_Incoming s2Step306HeadG_checked h1 s2Step306HeadG_Outgoing
  exact h0

private theorem s2Step306HeadBank_checked : compileHmrBankResizeLog .headroom s2Step306HeadGBefore ⟨s2Step306HeadFRow,s2Step306HeadGRow,s2Step306HeadFvRow,s2Step306HeadGvRow⟩ ⟨119,119,170,170⟩ [s2Step306HeadGFresh,s2Step306HeadFFresh,s2Step306HeadGvFresh,s2Step306HeadFvFresh]=
    some (s2Step306HeadFvAfter,⟨s2Step306HeadFOut,s2Step306HeadGOut,s2Step306HeadFvOut,s2Step306HeadGvOut⟩,(growRow 769 s2Step306HeadGFresh ++ (growRow 768 s2Step306HeadFFresh ++ (growRow 771 s2Step306HeadGvFresh ++ (growRow 770 s2Step306HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step306HeadBank_rows]
  rfl

private theorem s2Step306Front_checked : compileHmrSourceFrontLog s2Step306EntryFBefore s2Step306FrontBank 118 169 ⟨117,118,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step306FrontLog=some s2Step306FrontPlan := by
  have pairEq : s2Step306FrontPair=⟨s2Step306HeadFRow,s2Step306HeadGRow,s2Step306HeadFvRow,s2Step306HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step306FrontHead=⟨s2Step306ExitFRow,s2Step306ExitGRow,s2Step306ExitFvRow,s2Step306ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step306Add0A=s2Step306FrontHead.f.wires := by decide +kernel
  have gEq : s2Step306Add0B=s2Step306FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step306Add1A=s2Step306FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step306Add1B=s2Step306FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step306EntryFBefore s2Step306FrontBank 118 169 ⟨117,118,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step306FrontLog s2Step306FrontPlan
  · exact s2Step306Front_entry
  · exact s2Step306EntryBank_checked
  · exact s2Step306Front_sigma
  · rfl
  · exact s2Step306Front_branch
  · rfl
  · simpa only [s2Step306FrontPlan,pairEq] using s2Step306HeadBank_checked
  · simpa only [s2Step306FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step306F4_checked
  · exact s2Step306Counter_checked
  · rfl
  · simpa only [s2Step306FrontPlan,headEq] using s2Step306ExitBank_checked

private theorem s2Step306Complete_explicit_checked : compileHmrEarlyStepLog s2Step306EntryFBefore s2Step306FrontBank 118 169 ⟨117,118,169,169⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 56 s2Step306CompleteLog=some s2Step306CompletePlan := by
  let Q := s2Step306EarlyControlPlan
  have hq := s2Step306EarlyControl_plan_checked
  have fv1 : s2Step306CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step306CompleteOut.fv.payload[2]?.getD s2Step306CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step306CompleteOut.fv.payload[3]?.getD s2Step306CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step306CompleteOut.fv.payload[4]?.getD s2Step306CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step306EntryFBefore s2Step306EarlyControlArena s2Step306FrontBank 118 169 ⟨117,118,169,169⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 56 s2Step306CompleteLog s2Step306FrontPlan Q
    s2Step306Front_checked s2Step306Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step306Complete_owned s2Step306Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step306EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 s2Step306CompleteOut.fv.second (s2Step306CompleteOut.fv.payload[2]?.getD s2Step306CompleteOut.fv.sign) (s2Step306CompleteOut.fv.payload[3]?.getD s2Step306CompleteOut.fv.sign) (s2Step306CompleteOut.fv.payload[4]?.getD s2Step306CompleteOut.fv.sign) 802 56 s2Step306EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep306Arena : Arena := s2Step306EntryFBefore
def s2PrivateStep306Bank : WindowBank := s2Step306FrontBank
def s2PrivateStep306Spec : HmrSourceWalkStepLog := ⟨118,169,⟨117,118,169,169⟩,56,.early s2Step306CompleteLog⟩
def s2PrivateStep306Plan : HmrSourceStepPlan := .early s2Step306CompletePlan
theorem s2PrivateStep306_source : s2PrivateStep306Spec=s2ObservedLogs304[2] := rfl
theorem s2PrivateStep306_checked : compileHmrSourceStepLog s2PrivateStep306Arena s2PrivateStep306Bank
    s2PrivateStep306Spec.fgWidth s2PrivateStep306Spec.vWidth s2PrivateStep306Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 306 s2PrivateStep306Spec.need none s2PrivateStep306Spec.log=some s2PrivateStep306Plan := by
  change compileHmrSourceStepLog s2Step306EntryFBefore s2Step306FrontBank 118 169 ⟨117,118,169,169⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 306 56 none (.early s2Step306CompleteLog)=some (.early s2Step306CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 306<498)]
  rw [s2Step306Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
