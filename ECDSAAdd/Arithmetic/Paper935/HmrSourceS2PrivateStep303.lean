import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep301
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

private def s2Step303CompleteMoves : List (Wire × Wire) := [(819,631)]

private def s2Step303EarlyControlLog : HmrEarlyControlLog := ⟨[819, 805, 787, 826, 820],[830],[800],[894, 896, 901, 903, 907, 908],[]⟩

private def s2Step303FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [846, 793], [], [831]],[[820], [826], [805], [787]],[[], [], [], []]⟩,[811],[806],[830],[800],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step303CompleteLog : HmrEarlyStepLog := ⟨s2Step303FrontLog,s2Step303CompleteMoves,s2Step303EarlyControlLog⟩

private def s2Step303ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630],768⟩

private def s2Step303ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step303ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩

private def s2Step303ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩

private def s2Step303FrontOut : WindowBank := ⟨s2Step303ExitFOut,s2Step303ExitGOut,s2Step303ExitFvOut,s2Step303ExitGvOut⟩

private def s2Step303CompleteOut : WindowBank := s2Step303FrontOut.repacked s2Step303CompleteMoves

private def s2Step303EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step303EarlyControlPositiveArena,[830],s2Step303EarlyControlEqualityArena,[800],⟨⟨811,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step303EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<909)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<909)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,819⟩,⟨⟨774,false⟩,805⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,826⟩,⟨⟨777,false⟩,820⟩]⟩

private def s2Step303EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step303EarlyControlZeroArena,s2Step303EarlyControlZeroPlan,s2Step303EarlyControlClassPlan,s2Step303EarlyControlFlagArena,s2Step303EarlyControlFittedArena,s2Step303EarlyControlHistoryArena,s2Step303EarlyControlSigmaArena,s2Step303EarlyControlOutputArena,s2Step303EarlyControlLog⟩

private def s2Step303CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step303Counter_bounded : s2Step303CounterWork.toFinset⊆arenaWires := by norm_num [s2Step303CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step303HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303CounterDuring : Arena := ⟨s2Step303HeadFvAfter.live∪s2Step303CounterWork.toFinset,Finset.union_subset s2Step303HeadFvAfter.bounded s2Step303Counter_bounded⟩

private def s2Step303EntryFFresh : List Wire := []

private def s2Step303EntryFvFresh : List Wire := []

private def s2Step303EntryGFresh : List Wire := [846, 793]

private def s2Step303EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EntryGvFresh : List Wire := [831]

private def s2Step303ExitFExtra : List Wire := [631, 826]

private def s2Step303ExitFvExtra : List Wire := [787]

private def s2Step303ExitGExtra : List Wire := [820]

private def s2Step303ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<631) ∨ (632≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303ExitGvExtra : List Wire := [805]

private def s2Step303Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step303Add0_bounded : s2Step303Add0Work.toFinset⊆arenaWires := by
  have h : s2Step303Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step303Add0During : Arena := ⟨s2Step303Add0Arena.live∪s2Step303Add0Work.toFinset,Finset.union_subset s2Step303Add0Arena.bounded s2Step303Add0_bounded⟩

private def s2Step303Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step303Add1_bounded : s2Step303Add1Work.toFinset⊆arenaWires := by
  have h : s2Step303Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step303Add1During : Arena := ⟨s2Step303Add1Arena.live∪s2Step303Add1Work.toFinset,Finset.union_subset s2Step303Add1Arena.bounded s2Step303Add1_bounded⟩

private def s2Step303F4FlagArena : Arena := ⟨s2Step303HeadFvAfter.live∪{830},Finset.union_subset s2Step303HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step303F4Plan : HmrHybridF4Plan := ⟨s2Step303F4FlagArena,[830],s2Step303Add0Arena,[800],s2Step303Add0During,s2Step303Add0Work,s2Step303Add1During,s2Step303Add1Work⟩

private def s2Step303HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 826],768⟩

private def s2Step303HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 787],770⟩

private def s2Step303HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 820],769⟩

private def s2Step303HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 805],771⟩

private def s2Step303FrontHead : WindowBank := ⟨s2Step303HeadFOut,s2Step303HeadGOut,s2Step303HeadFvOut,s2Step303HeadGvOut⟩

private def s2Step303EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩

private def s2Step303EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step303EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩

private def s2Step303EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩

private def s2Step303FrontPair : WindowBank := ⟨s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut⟩

private def s2Step303FrontSigmaArena : Arena := ⟨s2Step303EntryGvAfter.live∪{811},Finset.union_subset s2Step303EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step303HeadFFresh : List Wire := [826]

private def s2Step303HeadFvFresh : List Wire := [787]

private def s2Step303HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303HeadGFresh : List Wire := [820]

private def s2Step303HeadGvFresh : List Wire := [805]

private def s2Step303FrontPlan : HmrSourceFront := ⟨s2Step303EntryGvAfter,s2Step303FrontPair,(growRow 768 s2Step303EntryFFresh ++ (growRow 769 s2Step303EntryGFresh ++ (growRow 770 s2Step303EntryFvFresh ++ (growRow 771 s2Step303EntryGvFresh ++ [])))),s2Step303FrontSigmaArena,[811],s2Step303HeadGBefore,[806],
  s2Step303HeadFvAfter,s2Step303FrontHead,(growRow 769 s2Step303HeadGFresh ++ (growRow 768 s2Step303HeadFFresh ++ (growRow 771 s2Step303HeadGvFresh ++ (growRow 770 s2Step303HeadFvFresh ++ [])))),s2Step303F4Plan,s2Step303CounterDuring,s2Step303CounterWork,s2Step303ExitGvAfter,s2Step303FrontOut,(shrinkRow 769 s2Step303ExitGExtra ++ (shrinkRow 768 s2Step303ExitFExtra ++ (shrinkRow 770 s2Step303ExitFvExtra ++ (shrinkRow 771 s2Step303ExitGvExtra ++ []))))⟩

private def s2Step303CompletePlan : HmrEarlyStepPlan := ⟨s2Step303FrontPlan,s2Step303EarlyControlArena,s2Step303EarlyControlPlan,s2Step303CompleteMoves⟩

private theorem s2Step303Complete_apart : List.Disjoint (s2Step303CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step303CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step303Complete_owned : (s2Step303CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step303CompleteMoveArena : Arena := ⟨s2Step303ExitGvAfter.live∪{631},Finset.union_subset s2Step303ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step303Complete_repack : s2Step303ExitGvAfter.checkRepack s2Step303CompleteMoves=some s2Step303EarlyControlArena := by
  have owned : 819∈s2Step303ExitGvAfter.live := by norm_num [s2Step303ExitGvAfter,arenaWires]
  have reserve : s2Step303ExitGvAfter.reserve {631}=some s2Step303CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step303ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step303CompleteMoveArena.retireSet {819}=s2Step303EarlyControlArena := by
    unfold Arena.retireSet s2Step303EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step303CompleteMoveArena,s2Step303ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step303CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step303CompleteMoveArena.retireSet {819}).checkRepack []=some s2Step303EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step303EarlyControl_branchOwned : ([806] : List Wire).toFinset⊆s2Step303EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_branch : compileHmrBranchRetirement s2Step303EarlyControlSigmaArena 806=some s2Step303EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step303EarlyControl_branchOwned
  · ext q
    simp [s2Step303EarlyControlOutputArena,s2Step303EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step303EarlyControl_classEqualityBorrow : s2Step303EarlyControlPositiveArena.checkBorrow (([811, 830] : List Wire).length-1) s2Step303EarlyControlLog.classWork=some s2Step303EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step303EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step303EarlyControlEqualityArena,s2Step303EarlyControlPositiveArena,s2Step303EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step303EarlyControl_classEqualityOwned : ([811, 830] : List Wire).toFinset⊆s2Step303EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_classEquality : compileHmrEqualityLog s2Step303EarlyControlPositiveArena [811, 830] 0 s2Step303EarlyControlLog.classWork=some (s2Step303EarlyControlEqualityArena,s2Step303EarlyControlLog.classWork,s2Step303EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step303EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step303EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step303EarlyControl_classOwned : ([777, 820, 811] : List Wire).toFinset⊆s2Step303EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_positiveBorrow : s2Step303EarlyControlZeroArena.checkBorrow (1) s2Step303EarlyControlLog.positiveWork=some s2Step303EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step303EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step303EarlyControlPositiveArena,s2Step303EarlyControlZeroArena,s2Step303EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step303EarlyControl_class : compileHmrSourceClassLog s2Step303EarlyControlZeroArena false 777 s2Step303EarlyControlZeroPlan.top 0 811 s2Step303EarlyControlLog.positiveWork s2Step303EarlyControlLog.classWork=some s2Step303EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step303EarlyControlClassPlan s2Step303EarlyControlZeroArena false 777 s2Step303EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step303EarlyControl_classOwned
  · exact s2Step303EarlyControl_positiveBorrow
  · exact s2Step303EarlyControl_classEquality

private theorem s2Step303EarlyControl_entryRecordOwned : ([806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_fitBorrow : s2Step303EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step303EarlyControlLog.recordFresh=some s2Step303EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step303EarlyControlFlagArena (fun q => (0≤q ∧ q<909)) rfl
      decide +kernel
    · ext q
      simp [s2Step303EarlyControlFittedArena,s2Step303EarlyControlFlagArena,s2Step303EarlyControlLog,arenaWires]

private theorem s2Step303EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step303EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlFlagArena (fun q => (0≤q ∧ q<909)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_fit : compileHmrRecordGrowLog s2Step303EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step303EarlyControlLog.recordFresh=some s2Step303EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step303EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step303EarlyControl_fitBorrow

private theorem s2Step303EarlyControl_flagsBorrow : s2Step303EarlyControlEqualityArena.checkBorrow (6) s2Step303EarlyControlLog.flagWork=some s2Step303EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step303EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step303EarlyControlFlagArena,s2Step303EarlyControlEqualityArena,s2Step303EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step303EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step303EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_flags : compileHmrFlagsLog s2Step303EarlyControlClassPlan.equalityArena s2Step303EarlyControlClassPlan.equality.top 253 252 251 s2Step303EarlyControlLog.flagWork=some s2Step303EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step303EarlyControl_flagsOwned⟩
  · exact s2Step303EarlyControl_flagsBorrow

private theorem s2Step303EarlyControl_historyBorrow : s2Step303EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step303EarlyControlLog.recordFresh=some s2Step303EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step303EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step303EarlyControlHistoryArena,s2Step303EarlyControlArena,s2Step303EarlyControlLog,arenaWires]

private theorem s2Step303EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_history : compileHmrRecordGrowLog s2Step303EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step303EarlyControlLog.recordFresh=some s2Step303EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step303EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step303EarlyControl_historyBorrow

private theorem s2Step303EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step303EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step303EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_sigmaRelease : s2Step303EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step303EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step303EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step303EarlyControlSigmaArena,s2Step303EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step303EarlyControl_sigma : compileHmrSigmaDropLog s2Step303EarlyControlHistoryArena false 0 0 254 811 []=some s2Step303EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step303EarlyControl_sigmaOwned⟩
  · exact s2Step303EarlyControl_sigmaRelease

private theorem s2Step303EarlyControl_zeroBorrow : s2Step303EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step303EarlyControlLog.zeroWork=some s2Step303EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step303EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step303EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step303EarlyControlZeroArena,s2Step303EarlyControlArena,s2Step303EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step303EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step303EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step303EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EarlyControl_zero : compileHmrEqualityLog s2Step303EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step303EarlyControlLog.zeroWork=some (s2Step303EarlyControlZeroArena,s2Step303EarlyControlLog.zeroWork,s2Step303EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step303EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step303EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step303EarlyControl_logged : s2Step303EarlyControlPlan.Logged s2Step303EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 806 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step303EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step303EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step303EarlyControl_zero
  · exact s2Step303EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step303EarlyControl_flags
  · exact s2Step303EarlyControl_fit
  · exact s2Step303EarlyControl_history
  · exact s2Step303EarlyControl_sigma
  · exact s2Step303EarlyControl_branch

private theorem s2Step303EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step303EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 806 55 s2Step303EarlyControlLog=some s2Step303EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step303EarlyControlPlan s2Step303EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 806 55 s2Step303EarlyControl_logged

private def s2Step303EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩

private def s2Step303EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step303EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step303EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847],771⟩

private def s2Step303FrontBank : WindowBank := ⟨s2Step303EntryFRow,s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow⟩

private def s2Step303Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 826, 768]

private def s2Step303Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 820, 769]

private def s2Step303Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 787, 770]

private def s2Step303Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 805, 771]

private theorem s2Step303Counter_apart : Disjoint s2Step303HeadFvAfter.live s2Step303CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step303HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303Counter_borrowed : s2Step303HeadFvAfter.checkBorrow 4 s2Step303CounterWork=some s2Step303CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step303HeadFvAfter s2Step303CounterDuring s2Step303CounterWork.toFinset s2Step303Counter_bounded s2Step303Counter_apart rfl

private theorem s2Step303Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step303HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step303HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303Counter_checked : compileHmrCounterStepLog s2Step303HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step303CounterWork=some s2Step303CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step303HeadFvAfter.live := fun q hq => s2Step303Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step303Counter_borrowed

private def s2Step303EntryFAfter : Arena := s2Step303EntryFBefore

private theorem s2Step303EntryBank_incomingDistinct : ([s2Step303EntryFRow,s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303EntryF_Incoming : rowsOwned s2Step303EntryFBefore [s2Step303EntryFRow,s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303EntryFRow,s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow] 0 s2Step303EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303EntryBank_outgoingOwned : rowsOwned s2Step303EntryGvAfter [s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step303EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303EntryF_Outgoing : rowsOwned s2Step303EntryGvAfter [s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut] :=
  hmrRows_owned_drop s2Step303EntryGvAfter [s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut] 0 s2Step303EntryBank_outgoingOwned

private theorem s2Step303EntryF_distinct : (s2Step303EntryFRow.sign::s2Step303EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303EntryF_owned : (s2Step303EntryFRow.sign::s2Step303EntryFRow.payload).toFinset⊆s2Step303EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EntryF_reserved : s2Step303EntryFBefore.reserve s2Step303EntryFFresh.toFinset=some s2Step303EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step303EntryFFresh,arenaWires]
  · norm_num [s2Step303EntryFBefore,s2Step303EntryFFresh,arenaWires]
  · simp only [s2Step303EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step303EntryF_checked : planRowResizeLog s2Step303EntryFBefore s2Step303EntryFRow 120 s2Step303EntryFFresh=
    some (s2Step303EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩,growRow 768 s2Step303EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step303EntryFBefore s2Step303EntryFAfter s2Step303EntryFRow 120 s2Step303EntryFFresh
    s2Step303EntryF_distinct s2Step303EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step303EntryF_reserved
  have rowEq : WindowRow.mk (s2Step303EntryFRow.payload++s2Step303EntryFFresh) s2Step303EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step303EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303EntryFvAfter : Arena := s2Step303EntryGAfter

private def s2Step303EntryFvBefore : Arena := s2Step303EntryGAfter

private theorem s2Step303EntryFv_Incoming : rowsOwned s2Step303EntryFvBefore [s2Step303EntryFvRow,s2Step303EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303EntryFRow,s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow] 2 s2Step303EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303EntryFv_Outgoing : rowsOwned s2Step303EntryGvAfter [s2Step303EntryFvOut,s2Step303EntryGvOut] :=
  hmrRows_owned_drop s2Step303EntryGvAfter [s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut] 2 s2Step303EntryBank_outgoingOwned

private theorem s2Step303EntryFv_distinct : (s2Step303EntryFvRow.sign::s2Step303EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303EntryFv_owned : (s2Step303EntryFvRow.sign::s2Step303EntryFvRow.payload).toFinset⊆s2Step303EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EntryFv_reserved : s2Step303EntryFvBefore.reserve s2Step303EntryFvFresh.toFinset=some s2Step303EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step303EntryFvFresh,arenaWires]
  · norm_num [s2Step303EntryFvBefore,s2Step303EntryGAfter,s2Step303EntryFvFresh,arenaWires]
  · simp only [s2Step303EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step303EntryFv_checked : planRowResizeLog s2Step303EntryFvBefore s2Step303EntryFvRow 167 s2Step303EntryFvFresh=
    some (s2Step303EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩,growRow 770 s2Step303EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step303EntryFvBefore s2Step303EntryFvAfter s2Step303EntryFvRow 167 s2Step303EntryFvFresh
    s2Step303EntryFv_distinct s2Step303EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step303EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step303EntryFvRow.payload++s2Step303EntryFvFresh) s2Step303EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step303EntryGBefore : Arena := s2Step303EntryFBefore

private theorem s2Step303EntryG_Incoming : rowsOwned s2Step303EntryGBefore [s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303EntryFRow,s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow] 1 s2Step303EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303EntryG_Outgoing : rowsOwned s2Step303EntryGvAfter [s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut] :=
  hmrRows_owned_drop s2Step303EntryGvAfter [s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut] 1 s2Step303EntryBank_outgoingOwned

private theorem s2Step303EntryG_distinct : (s2Step303EntryGRow.sign::s2Step303EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303EntryG_owned : (s2Step303EntryGRow.sign::s2Step303EntryGRow.payload).toFinset⊆s2Step303EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EntryG_reserved : s2Step303EntryGBefore.reserve s2Step303EntryGFresh.toFinset=some s2Step303EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step303EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step303EntryGBefore,s2Step303EntryFBefore,s2Step303EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step303EntryGAfter,s2Step303EntryGBefore,s2Step303EntryFBefore,s2Step303EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step303EntryG_checked : planRowResizeLog s2Step303EntryGBefore s2Step303EntryGRow 120 s2Step303EntryGFresh=
    some (s2Step303EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩,growRow 769 s2Step303EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step303EntryGBefore s2Step303EntryGAfter s2Step303EntryGRow 120 s2Step303EntryGFresh
    s2Step303EntryG_distinct s2Step303EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step303EntryG_reserved
  have rowEq : WindowRow.mk (s2Step303EntryGRow.payload++s2Step303EntryGFresh) s2Step303EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step303EntryGvBefore : Arena := s2Step303EntryGAfter

private theorem s2Step303EntryGv_Incoming : rowsOwned s2Step303EntryGvBefore [s2Step303EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303EntryFRow,s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow] 3 s2Step303EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303EntryGv_Outgoing : rowsOwned s2Step303EntryGvAfter [s2Step303EntryGvOut] :=
  hmrRows_owned_drop s2Step303EntryGvAfter [s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut] 3 s2Step303EntryBank_outgoingOwned

private theorem s2Step303EntryGv_distinct : (s2Step303EntryGvRow.sign::s2Step303EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303EntryGv_owned : (s2Step303EntryGvRow.sign::s2Step303EntryGvRow.payload).toFinset⊆s2Step303EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303EntryGv_reserved : s2Step303EntryGvBefore.reserve s2Step303EntryGvFresh.toFinset=some s2Step303EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step303EntryGvFresh,arenaWires]
  · norm_num [s2Step303EntryGvBefore,s2Step303EntryGAfter,s2Step303EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step303EntryGvAfter,s2Step303EntryGvBefore,s2Step303EntryGAfter,s2Step303EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step303EntryGv_checked : planRowResizeLog s2Step303EntryGvBefore s2Step303EntryGvRow 167 s2Step303EntryGvFresh=
    some (s2Step303EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩,growRow 771 s2Step303EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step303EntryGvBefore s2Step303EntryGvAfter s2Step303EntryGvRow 167 s2Step303EntryGvFresh
    s2Step303EntryGv_distinct s2Step303EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step303EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step303EntryGvRow.payload++s2Step303EntryGvFresh) s2Step303EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step303EntryBank_rows : planWindowRowsLog s2Step303EntryFBefore [(s2Step303EntryFRow,120),(s2Step303EntryGRow,120),(s2Step303EntryFvRow,167),(s2Step303EntryGvRow,167)] [s2Step303EntryFFresh,s2Step303EntryGFresh,s2Step303EntryFvFresh,s2Step303EntryGvFresh]=
    some (s2Step303EntryGvAfter,[s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut],(growRow 768 s2Step303EntryFFresh ++ (growRow 769 s2Step303EntryGFresh ++ (growRow 770 s2Step303EntryFvFresh ++ (growRow 771 s2Step303EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step303EntryGvAfter [] []=some (s2Step303EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step303EntryGvBefore s2Step303EntryGvAfter s2Step303EntryGvAfter
    s2Step303EntryGvRow s2Step303EntryGvOut 167 s2Step303EntryGvFresh [] [] []
    (growRow 771 s2Step303EntryGvFresh) ([]) s2Step303EntryGv_Incoming s2Step303EntryGv_checked h4 s2Step303EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step303EntryFvBefore s2Step303EntryFvAfter s2Step303EntryGvAfter
    s2Step303EntryFvRow s2Step303EntryFvOut 167 s2Step303EntryFvFresh [(s2Step303EntryGvRow,167)] [s2Step303EntryGvFresh] [s2Step303EntryGvOut]
    (growRow 770 s2Step303EntryFvFresh) ((growRow 771 s2Step303EntryGvFresh ++ [])) s2Step303EntryFv_Incoming s2Step303EntryFv_checked h3 s2Step303EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step303EntryGBefore s2Step303EntryGAfter s2Step303EntryGvAfter
    s2Step303EntryGRow s2Step303EntryGOut 120 s2Step303EntryGFresh [(s2Step303EntryFvRow,167),(s2Step303EntryGvRow,167)] [s2Step303EntryFvFresh,s2Step303EntryGvFresh] [s2Step303EntryFvOut,s2Step303EntryGvOut]
    (growRow 769 s2Step303EntryGFresh) ((growRow 770 s2Step303EntryFvFresh ++ (growRow 771 s2Step303EntryGvFresh ++ []))) s2Step303EntryG_Incoming s2Step303EntryG_checked h2 s2Step303EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step303EntryFBefore s2Step303EntryFAfter s2Step303EntryGvAfter
    s2Step303EntryFRow s2Step303EntryFOut 120 s2Step303EntryFFresh [(s2Step303EntryGRow,120),(s2Step303EntryFvRow,167),(s2Step303EntryGvRow,167)] [s2Step303EntryGFresh,s2Step303EntryFvFresh,s2Step303EntryGvFresh] [s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut]
    (growRow 768 s2Step303EntryFFresh) ((growRow 769 s2Step303EntryGFresh ++ (growRow 770 s2Step303EntryFvFresh ++ (growRow 771 s2Step303EntryGvFresh ++ [])))) s2Step303EntryF_Incoming s2Step303EntryF_checked h1 s2Step303EntryF_Outgoing
  exact h0

private theorem s2Step303EntryBank_checked : compileHmrBankResizeLog .entry s2Step303EntryFBefore ⟨s2Step303EntryFRow,s2Step303EntryGRow,s2Step303EntryFvRow,s2Step303EntryGvRow⟩ ⟨120,120,167,167⟩ [s2Step303EntryFFresh,s2Step303EntryGFresh,s2Step303EntryFvFresh,s2Step303EntryGvFresh]=
    some (s2Step303EntryGvAfter,⟨s2Step303EntryFOut,s2Step303EntryGOut,s2Step303EntryFvOut,s2Step303EntryGvOut⟩,(growRow 768 s2Step303EntryFFresh ++ (growRow 769 s2Step303EntryGFresh ++ (growRow 770 s2Step303EntryFvFresh ++ (growRow 771 s2Step303EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step303EntryBank_rows]
  rfl

private def s2Step303ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<631) ∨ (632≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303ExitFBefore : Arena := s2Step303ExitGAfter

private def s2Step303ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 826],768⟩

private def s2Step303ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 787],770⟩

private def s2Step303ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 820],769⟩

private def s2Step303ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 805],771⟩

private theorem s2Step303ExitBank_incomingDistinct : ([s2Step303ExitGRow,s2Step303ExitFRow,s2Step303ExitFvRow,s2Step303ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303ExitF_Incoming : rowsOwned s2Step303ExitFBefore [s2Step303ExitFRow,s2Step303ExitFvRow,s2Step303ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303ExitGRow,s2Step303ExitFRow,s2Step303ExitFvRow,s2Step303ExitGvRow] 1 s2Step303ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303ExitBank_outgoingOwned : rowsOwned s2Step303ExitGvAfter [s2Step303ExitGOut,s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step303ExitGvAfter (fun q => (0≤q ∧ q<631) ∨ (632≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303ExitF_Outgoing : rowsOwned s2Step303ExitGvAfter [s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut] :=
  hmrRows_owned_drop s2Step303ExitGvAfter [s2Step303ExitGOut,s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut] 1 s2Step303ExitBank_outgoingOwned

private theorem s2Step303ExitF_distinct : (s2Step303ExitFRow.sign::s2Step303ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303ExitF_owned : (s2Step303ExitFRow.sign::s2Step303ExitFRow.payload).toFinset⊆s2Step303ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303ExitF_retired : s2Step303ExitFBefore.retireSet s2Step303ExitFExtra.toFinset=s2Step303ExitFAfter := by
  unfold Arena.retireSet s2Step303ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step303ExitFBefore,s2Step303ExitGAfter,s2Step303ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step303ExitF_checked : planRowResizeLog s2Step303ExitFBefore s2Step303ExitFRow 119 []=
    some (s2Step303ExitFAfter,s2Step303ExitFOut,shrinkRow 768 s2Step303ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step303ExitFBefore s2Step303ExitFRow 119 s2Step303ExitF_distinct s2Step303ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step303ExitFRow.payload.take 119) s2Step303ExitFRow.sign=s2Step303ExitFOut := by decide +kernel
  have hi : s2Step303ExitFRow.payload.drop 119=s2Step303ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step303ExitF_retired] at result
  exact result

private def s2Step303ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<631) ∨ (632≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303ExitFvBefore : Arena := s2Step303ExitFAfter

private theorem s2Step303ExitFv_Incoming : rowsOwned s2Step303ExitFvBefore [s2Step303ExitFvRow,s2Step303ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303ExitGRow,s2Step303ExitFRow,s2Step303ExitFvRow,s2Step303ExitGvRow] 2 s2Step303ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303ExitFvBefore (fun q => (0≤q ∧ q<631) ∨ (632≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303ExitFv_Outgoing : rowsOwned s2Step303ExitGvAfter [s2Step303ExitFvOut,s2Step303ExitGvOut] :=
  hmrRows_owned_drop s2Step303ExitGvAfter [s2Step303ExitGOut,s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut] 2 s2Step303ExitBank_outgoingOwned

private theorem s2Step303ExitFv_distinct : (s2Step303ExitFvRow.sign::s2Step303ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303ExitFv_owned : (s2Step303ExitFvRow.sign::s2Step303ExitFvRow.payload).toFinset⊆s2Step303ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303ExitFvBefore (fun q => (0≤q ∧ q<631) ∨ (632≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303ExitFv_retired : s2Step303ExitFvBefore.retireSet s2Step303ExitFvExtra.toFinset=s2Step303ExitFvAfter := by
  unfold Arena.retireSet s2Step303ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step303ExitFvBefore,s2Step303ExitFAfter,s2Step303ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step303ExitFv_checked : planRowResizeLog s2Step303ExitFvBefore s2Step303ExitFvRow 167 []=
    some (s2Step303ExitFvAfter,s2Step303ExitFvOut,shrinkRow 770 s2Step303ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step303ExitFvBefore s2Step303ExitFvRow 167 s2Step303ExitFv_distinct s2Step303ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step303ExitFvRow.payload.take 167) s2Step303ExitFvRow.sign=s2Step303ExitFvOut := by decide +kernel
  have hi : s2Step303ExitFvRow.payload.drop 167=s2Step303ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step303ExitFv_retired] at result
  exact result

private def s2Step303ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step303ExitG_Incoming : rowsOwned s2Step303ExitGBefore [s2Step303ExitGRow,s2Step303ExitFRow,s2Step303ExitFvRow,s2Step303ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303ExitGRow,s2Step303ExitFRow,s2Step303ExitFvRow,s2Step303ExitGvRow] 0 s2Step303ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303ExitG_Outgoing : rowsOwned s2Step303ExitGvAfter [s2Step303ExitGOut,s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut] :=
  hmrRows_owned_drop s2Step303ExitGvAfter [s2Step303ExitGOut,s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut] 0 s2Step303ExitBank_outgoingOwned

private theorem s2Step303ExitG_distinct : (s2Step303ExitGRow.sign::s2Step303ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303ExitG_owned : (s2Step303ExitGRow.sign::s2Step303ExitGRow.payload).toFinset⊆s2Step303ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303ExitG_retired : s2Step303ExitGBefore.retireSet s2Step303ExitGExtra.toFinset=s2Step303ExitGAfter := by
  unfold Arena.retireSet s2Step303ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step303ExitGBefore,s2Step303ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step303ExitG_checked : planRowResizeLog s2Step303ExitGBefore s2Step303ExitGRow 120 []=
    some (s2Step303ExitGAfter,s2Step303ExitGOut,shrinkRow 769 s2Step303ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step303ExitGBefore s2Step303ExitGRow 120 s2Step303ExitG_distinct s2Step303ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step303ExitGRow.payload.take 120) s2Step303ExitGRow.sign=s2Step303ExitGOut := by decide +kernel
  have hi : s2Step303ExitGRow.payload.drop 120=s2Step303ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step303ExitG_retired] at result
  exact result

private def s2Step303ExitGvBefore : Arena := s2Step303ExitFvAfter

private theorem s2Step303ExitGv_Incoming : rowsOwned s2Step303ExitGvBefore [s2Step303ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303ExitGRow,s2Step303ExitFRow,s2Step303ExitFvRow,s2Step303ExitGvRow] 3 s2Step303ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303ExitGvBefore (fun q => (0≤q ∧ q<631) ∨ (632≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303ExitGv_Outgoing : rowsOwned s2Step303ExitGvAfter [s2Step303ExitGvOut] :=
  hmrRows_owned_drop s2Step303ExitGvAfter [s2Step303ExitGOut,s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut] 3 s2Step303ExitBank_outgoingOwned

private theorem s2Step303ExitGv_distinct : (s2Step303ExitGvRow.sign::s2Step303ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303ExitGv_owned : (s2Step303ExitGvRow.sign::s2Step303ExitGvRow.payload).toFinset⊆s2Step303ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303ExitGvBefore (fun q => (0≤q ∧ q<631) ∨ (632≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303ExitGv_retired : s2Step303ExitGvBefore.retireSet s2Step303ExitGvExtra.toFinset=s2Step303ExitGvAfter := by
  unfold Arena.retireSet s2Step303ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step303ExitGvBefore,s2Step303ExitFvAfter,s2Step303ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step303ExitGv_checked : planRowResizeLog s2Step303ExitGvBefore s2Step303ExitGvRow 167 []=
    some (s2Step303ExitGvAfter,s2Step303ExitGvOut,shrinkRow 771 s2Step303ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step303ExitGvBefore s2Step303ExitGvRow 167 s2Step303ExitGv_distinct s2Step303ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step303ExitGvRow.payload.take 167) s2Step303ExitGvRow.sign=s2Step303ExitGvOut := by decide +kernel
  have hi : s2Step303ExitGvRow.payload.drop 167=s2Step303ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step303ExitGv_retired] at result
  exact result

private theorem s2Step303ExitBank_rows : planWindowRowsLog s2Step303ExitGBefore [(s2Step303ExitGRow,120),(s2Step303ExitFRow,119),(s2Step303ExitFvRow,167),(s2Step303ExitGvRow,167)] [[],[],[],[]]=
    some (s2Step303ExitGvAfter,[s2Step303ExitGOut,s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut],(shrinkRow 769 s2Step303ExitGExtra ++ (shrinkRow 768 s2Step303ExitFExtra ++ (shrinkRow 770 s2Step303ExitFvExtra ++ (shrinkRow 771 s2Step303ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step303ExitGvAfter [] []=some (s2Step303ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step303ExitGvBefore s2Step303ExitGvAfter s2Step303ExitGvAfter
    s2Step303ExitGvRow s2Step303ExitGvOut 167 [] [] [] []
    (shrinkRow 771 s2Step303ExitGvExtra) ([]) s2Step303ExitGv_Incoming s2Step303ExitGv_checked h4 s2Step303ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step303ExitFvBefore s2Step303ExitFvAfter s2Step303ExitGvAfter
    s2Step303ExitFvRow s2Step303ExitFvOut 167 [] [(s2Step303ExitGvRow,167)] [[]] [s2Step303ExitGvOut]
    (shrinkRow 770 s2Step303ExitFvExtra) ((shrinkRow 771 s2Step303ExitGvExtra ++ [])) s2Step303ExitFv_Incoming s2Step303ExitFv_checked h3 s2Step303ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step303ExitFBefore s2Step303ExitFAfter s2Step303ExitGvAfter
    s2Step303ExitFRow s2Step303ExitFOut 119 [] [(s2Step303ExitFvRow,167),(s2Step303ExitGvRow,167)] [[],[]] [s2Step303ExitFvOut,s2Step303ExitGvOut]
    (shrinkRow 768 s2Step303ExitFExtra) ((shrinkRow 770 s2Step303ExitFvExtra ++ (shrinkRow 771 s2Step303ExitGvExtra ++ []))) s2Step303ExitF_Incoming s2Step303ExitF_checked h2 s2Step303ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step303ExitGBefore s2Step303ExitGAfter s2Step303ExitGvAfter
    s2Step303ExitGRow s2Step303ExitGOut 120 [] [(s2Step303ExitFRow,119),(s2Step303ExitFvRow,167),(s2Step303ExitGvRow,167)] [[],[],[]] [s2Step303ExitFOut,s2Step303ExitFvOut,s2Step303ExitGvOut]
    (shrinkRow 769 s2Step303ExitGExtra) ((shrinkRow 768 s2Step303ExitFExtra ++ (shrinkRow 770 s2Step303ExitFvExtra ++ (shrinkRow 771 s2Step303ExitGvExtra ++ [])))) s2Step303ExitG_Incoming s2Step303ExitG_checked h1 s2Step303ExitG_Outgoing
  exact h0

private theorem s2Step303ExitBank_checked : compileHmrBankResizeLog .exit s2Step303ExitGBefore ⟨s2Step303ExitFRow,s2Step303ExitGRow,s2Step303ExitFvRow,s2Step303ExitGvRow⟩ ⟨119,120,167,167⟩ [[],[],[],[]]=
    some (s2Step303ExitGvAfter,⟨s2Step303ExitFOut,s2Step303ExitGOut,s2Step303ExitFvOut,s2Step303ExitGvOut⟩,(shrinkRow 769 s2Step303ExitGExtra ++ (shrinkRow 768 s2Step303ExitFExtra ++ (shrinkRow 770 s2Step303ExitFvExtra ++ (shrinkRow 771 s2Step303ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step303ExitBank_rows]
  rfl

private theorem s2Step303Add0_apart : Disjoint s2Step303Add0Arena.live s2Step303Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step303Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303Add0_card : s2Step303Add0Arena.live.card=903 := by
  decide +kernel

private theorem s2Step303Add0_borrowed : s2Step303Add0Arena.checkBorrow (hmrHybridCount s2Step303Add0Arena s2Step303Add0B.length) s2Step303Add0Work=some s2Step303Add0During := by
  have len : s2Step303Add0Work.length=hmrHybridCount s2Step303Add0Arena s2Step303Add0B.length := by
    rw [hmrHybridCount,s2Step303Add0_card]
    decide +kernel
  have nd : s2Step303Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step303Add0Arena s2Step303Add0During s2Step303Add0Work.toFinset s2Step303Add0_bounded s2Step303Add0_apart rfl

private theorem s2Step303Add0_distinct : (830::806::800::(s2Step303Add0A++s2Step303Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303Add0_owned : (830::806::800::(s2Step303Add0A++s2Step303Add0B)).toFinset⊆s2Step303Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step303Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303Add0_checked : compileHmrHybridCinLog s2Step303Add0Arena 806 830 800 s2Step303Add0A s2Step303Add0B s2Step303Add0Work=some s2Step303Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step303Add0Arena s2Step303Add0During 806 830 800 s2Step303Add0A s2Step303Add0B s2Step303Add0Work
    (by decide +kernel) (by decide +kernel) s2Step303Add0_distinct
    (fun q hq => s2Step303Add0_owned (List.mem_toFinset.mpr hq)) s2Step303Add0_borrowed

private theorem s2Step303Add1_apart : Disjoint s2Step303Add1Arena.live s2Step303Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step303Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303Add1_card : s2Step303Add1Arena.live.card=903 := by
  decide +kernel

private theorem s2Step303Add1_borrowed : s2Step303Add1Arena.checkBorrow (hmrHybridCount s2Step303Add1Arena s2Step303Add1B.length) s2Step303Add1Work=some s2Step303Add1During := by
  have len : s2Step303Add1Work.length=hmrHybridCount s2Step303Add1Arena s2Step303Add1B.length := by
    rw [hmrHybridCount,s2Step303Add1_card]
    decide +kernel
  have nd : s2Step303Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step303Add1Arena s2Step303Add1During s2Step303Add1Work.toFinset s2Step303Add1_bounded s2Step303Add1_apart rfl

private theorem s2Step303Add1_distinct : (830::806::800::(s2Step303Add1A++s2Step303Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303Add1_owned : (830::806::800::(s2Step303Add1A++s2Step303Add1B)).toFinset⊆s2Step303Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step303Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303Add1_checked : compileHmrHybridCinLog s2Step303Add1Arena 806 830 800 s2Step303Add1A s2Step303Add1B s2Step303Add1Work=some s2Step303Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step303Add1Arena s2Step303Add1During 806 830 800 s2Step303Add1A s2Step303Add1B s2Step303Add1Work
    (by decide +kernel) (by decide +kernel) s2Step303Add1_distinct
    (fun q hq => s2Step303Add1_owned (List.mem_toFinset.mpr hq)) s2Step303Add1_borrowed

private theorem s2Step303F4_apart : Disjoint (s2Step303Add0A++s2Step303Add0B).toFinset (s2Step303Add1A++s2Step303Add1B).toFinset := by
  have nd : ((s2Step303Add0A++s2Step303Add0B)++(s2Step303Add1A++s2Step303Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step303F4_carry : s2Step303F4FlagArena.checkBorrow 1 [800]=some s2Step303Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step303F4FlagArena,s2Step303HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step303F4FlagArena,s2Step303HeadFvAfter,s2Step303Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step303F4_distinct : (811::806::830::800::((s2Step303Add0A++s2Step303Add1A)++(s2Step303Add0B++s2Step303Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303F4_flag : s2Step303HeadFvAfter.checkBorrow 1 [830]=some s2Step303F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step303HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step303F4_owned : (811::806::((s2Step303Add0A++s2Step303Add1A)++(s2Step303Add0B++s2Step303Add1B))).toFinset⊆s2Step303HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step303HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303F4_checked : compileHmrHybridF4Log s2Step303HeadFvAfter 811 806 s2Step303Add0A s2Step303Add0B s2Step303Add1A s2Step303Add1B [830] [800] s2Step303Add0Work s2Step303Add1Work=some s2Step303F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step303HeadFvAfter s2Step303F4FlagArena s2Step303Add0Arena s2Step303Add0During s2Step303Add1During 811 806
    s2Step303Add0A s2Step303Add0B s2Step303Add1A s2Step303Add1B [830] [800] s2Step303Add0Work s2Step303Add1Work
    (fun q hq => s2Step303F4_owned (List.mem_toFinset.mpr hq)) s2Step303F4_flag s2Step303F4_carry
    s2Step303F4_distinct s2Step303F4_apart s2Step303Add0_checked s2Step303Add1_checked

private theorem s2Step303Front_branch : s2Step303FrontSigmaArena.checkBorrow 1 [806]=some s2Step303HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step303FrontSigmaArena,s2Step303EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step303FrontSigmaArena,s2Step303EntryGvAfter,s2Step303HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step303Front_entry : HmrFrontEntryValid s2Step303EntryFBefore s2Step303FrontBank 120 167 ⟨119,120,167,167⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step303FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step303EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step303EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (832≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step303FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step303Front_sigma : s2Step303EntryGvAfter.checkBorrow 1 [811]=some s2Step303FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step303EntryGvAfter,arenaWires]
  · rfl

private def s2Step303HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303HeadFBefore : Arena := s2Step303HeadGAfter

private def s2Step303HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631],768⟩

private def s2Step303HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step303HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩

private def s2Step303HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩

private theorem s2Step303HeadBank_incomingDistinct : ([s2Step303HeadGRow,s2Step303HeadFRow,s2Step303HeadGvRow,s2Step303HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303HeadF_Incoming : rowsOwned s2Step303HeadFBefore [s2Step303HeadFRow,s2Step303HeadGvRow,s2Step303HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303HeadGRow,s2Step303HeadFRow,s2Step303HeadGvRow,s2Step303HeadFvRow] 1 s2Step303HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303HeadBank_outgoingOwned : rowsOwned s2Step303HeadFvAfter [s2Step303HeadGOut,s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step303HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303HeadF_Outgoing : rowsOwned s2Step303HeadFvAfter [s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut] :=
  hmrRows_owned_drop s2Step303HeadFvAfter [s2Step303HeadGOut,s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut] 1 s2Step303HeadBank_outgoingOwned

private theorem s2Step303HeadF_distinct : (s2Step303HeadFRow.sign::s2Step303HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303HeadF_owned : (s2Step303HeadFRow.sign::s2Step303HeadFRow.payload).toFinset⊆s2Step303HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303HeadF_reserved : s2Step303HeadFBefore.reserve s2Step303HeadFFresh.toFinset=some s2Step303HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step303HeadFFresh,arenaWires]
  · norm_num [s2Step303HeadFBefore,s2Step303HeadGAfter,s2Step303HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step303HeadFAfter,s2Step303HeadFBefore,s2Step303HeadGAfter,s2Step303HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step303HeadF_checked : planRowResizeLog s2Step303HeadFBefore s2Step303HeadFRow 121 s2Step303HeadFFresh=
    some (s2Step303HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 826],768⟩,growRow 768 s2Step303HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step303HeadFBefore s2Step303HeadFAfter s2Step303HeadFRow 121 s2Step303HeadFFresh
    s2Step303HeadF_distinct s2Step303HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step303HeadF_reserved
  have rowEq : WindowRow.mk (s2Step303HeadFRow.payload++s2Step303HeadFFresh) s2Step303HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step303HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step303HeadFvBefore : Arena := s2Step303HeadGvAfter

private theorem s2Step303HeadFv_Incoming : rowsOwned s2Step303HeadFvBefore [s2Step303HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303HeadGRow,s2Step303HeadFRow,s2Step303HeadGvRow,s2Step303HeadFvRow] 3 s2Step303HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303HeadFv_Outgoing : rowsOwned s2Step303HeadFvAfter [s2Step303HeadFvOut] :=
  hmrRows_owned_drop s2Step303HeadFvAfter [s2Step303HeadGOut,s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut] 3 s2Step303HeadBank_outgoingOwned

private theorem s2Step303HeadFv_distinct : (s2Step303HeadFvRow.sign::s2Step303HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303HeadFv_owned : (s2Step303HeadFvRow.sign::s2Step303HeadFvRow.payload).toFinset⊆s2Step303HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303HeadFv_reserved : s2Step303HeadFvBefore.reserve s2Step303HeadFvFresh.toFinset=some s2Step303HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step303HeadFvFresh,arenaWires]
  · norm_num [s2Step303HeadFvBefore,s2Step303HeadGvAfter,s2Step303HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step303HeadFvAfter,s2Step303HeadFvBefore,s2Step303HeadGvAfter,s2Step303HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step303HeadFv_checked : planRowResizeLog s2Step303HeadFvBefore s2Step303HeadFvRow 168 s2Step303HeadFvFresh=
    some (s2Step303HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 787],770⟩,growRow 770 s2Step303HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step303HeadFvBefore s2Step303HeadFvAfter s2Step303HeadFvRow 168 s2Step303HeadFvFresh
    s2Step303HeadFv_distinct s2Step303HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step303HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step303HeadFvRow.payload++s2Step303HeadFvFresh) s2Step303HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step303HeadG_Incoming : rowsOwned s2Step303HeadGBefore [s2Step303HeadGRow,s2Step303HeadFRow,s2Step303HeadGvRow,s2Step303HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303HeadGRow,s2Step303HeadFRow,s2Step303HeadGvRow,s2Step303HeadFvRow] 0 s2Step303HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303HeadG_Outgoing : rowsOwned s2Step303HeadFvAfter [s2Step303HeadGOut,s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut] :=
  hmrRows_owned_drop s2Step303HeadFvAfter [s2Step303HeadGOut,s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut] 0 s2Step303HeadBank_outgoingOwned

private theorem s2Step303HeadG_distinct : (s2Step303HeadGRow.sign::s2Step303HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303HeadG_owned : (s2Step303HeadGRow.sign::s2Step303HeadGRow.payload).toFinset⊆s2Step303HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303HeadG_reserved : s2Step303HeadGBefore.reserve s2Step303HeadGFresh.toFinset=some s2Step303HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step303HeadGFresh,arenaWires]
  · norm_num [s2Step303HeadGBefore,s2Step303HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step303HeadGAfter,s2Step303HeadGBefore,s2Step303HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step303HeadG_checked : planRowResizeLog s2Step303HeadGBefore s2Step303HeadGRow 121 s2Step303HeadGFresh=
    some (s2Step303HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 820],769⟩,growRow 769 s2Step303HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step303HeadGBefore s2Step303HeadGAfter s2Step303HeadGRow 121 s2Step303HeadGFresh
    s2Step303HeadG_distinct s2Step303HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step303HeadG_reserved
  have rowEq : WindowRow.mk (s2Step303HeadGRow.payload++s2Step303HeadGFresh) s2Step303HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 820],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step303HeadGvBefore : Arena := s2Step303HeadFAfter

private theorem s2Step303HeadGv_Incoming : rowsOwned s2Step303HeadGvBefore [s2Step303HeadGvRow,s2Step303HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step303HeadGRow,s2Step303HeadFRow,s2Step303HeadGvRow,s2Step303HeadFvRow] 2 s2Step303HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step303HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step303HeadGv_Outgoing : rowsOwned s2Step303HeadFvAfter [s2Step303HeadGvOut,s2Step303HeadFvOut] :=
  hmrRows_owned_drop s2Step303HeadFvAfter [s2Step303HeadGOut,s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut] 2 s2Step303HeadBank_outgoingOwned

private theorem s2Step303HeadGv_distinct : (s2Step303HeadGvRow.sign::s2Step303HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step303HeadGv_owned : (s2Step303HeadGvRow.sign::s2Step303HeadGvRow.payload).toFinset⊆s2Step303HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step303HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step303HeadGv_reserved : s2Step303HeadGvBefore.reserve s2Step303HeadGvFresh.toFinset=some s2Step303HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step303HeadGvFresh,arenaWires]
  · norm_num [s2Step303HeadGvBefore,s2Step303HeadFAfter,s2Step303HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step303HeadGvAfter,s2Step303HeadGvBefore,s2Step303HeadFAfter,s2Step303HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step303HeadGv_checked : planRowResizeLog s2Step303HeadGvBefore s2Step303HeadGvRow 168 s2Step303HeadGvFresh=
    some (s2Step303HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 805],771⟩,growRow 771 s2Step303HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step303HeadGvBefore s2Step303HeadGvAfter s2Step303HeadGvRow 168 s2Step303HeadGvFresh
    s2Step303HeadGv_distinct s2Step303HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step303HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step303HeadGvRow.payload++s2Step303HeadGvFresh) s2Step303HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step303HeadBank_rows : planWindowRowsLog s2Step303HeadGBefore [(s2Step303HeadGRow,121),(s2Step303HeadFRow,121),(s2Step303HeadGvRow,168),(s2Step303HeadFvRow,168)] [s2Step303HeadGFresh,s2Step303HeadFFresh,s2Step303HeadGvFresh,s2Step303HeadFvFresh]=
    some (s2Step303HeadFvAfter,[s2Step303HeadGOut,s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut],(growRow 769 s2Step303HeadGFresh ++ (growRow 768 s2Step303HeadFFresh ++ (growRow 771 s2Step303HeadGvFresh ++ (growRow 770 s2Step303HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step303HeadFvAfter [] []=some (s2Step303HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step303HeadFvBefore s2Step303HeadFvAfter s2Step303HeadFvAfter
    s2Step303HeadFvRow s2Step303HeadFvOut 168 s2Step303HeadFvFresh [] [] []
    (growRow 770 s2Step303HeadFvFresh) ([]) s2Step303HeadFv_Incoming s2Step303HeadFv_checked h4 s2Step303HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step303HeadGvBefore s2Step303HeadGvAfter s2Step303HeadFvAfter
    s2Step303HeadGvRow s2Step303HeadGvOut 168 s2Step303HeadGvFresh [(s2Step303HeadFvRow,168)] [s2Step303HeadFvFresh] [s2Step303HeadFvOut]
    (growRow 771 s2Step303HeadGvFresh) ((growRow 770 s2Step303HeadFvFresh ++ [])) s2Step303HeadGv_Incoming s2Step303HeadGv_checked h3 s2Step303HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step303HeadFBefore s2Step303HeadFAfter s2Step303HeadFvAfter
    s2Step303HeadFRow s2Step303HeadFOut 121 s2Step303HeadFFresh [(s2Step303HeadGvRow,168),(s2Step303HeadFvRow,168)] [s2Step303HeadGvFresh,s2Step303HeadFvFresh] [s2Step303HeadGvOut,s2Step303HeadFvOut]
    (growRow 768 s2Step303HeadFFresh) ((growRow 771 s2Step303HeadGvFresh ++ (growRow 770 s2Step303HeadFvFresh ++ []))) s2Step303HeadF_Incoming s2Step303HeadF_checked h2 s2Step303HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step303HeadGBefore s2Step303HeadGAfter s2Step303HeadFvAfter
    s2Step303HeadGRow s2Step303HeadGOut 121 s2Step303HeadGFresh [(s2Step303HeadFRow,121),(s2Step303HeadGvRow,168),(s2Step303HeadFvRow,168)] [s2Step303HeadFFresh,s2Step303HeadGvFresh,s2Step303HeadFvFresh] [s2Step303HeadFOut,s2Step303HeadGvOut,s2Step303HeadFvOut]
    (growRow 769 s2Step303HeadGFresh) ((growRow 768 s2Step303HeadFFresh ++ (growRow 771 s2Step303HeadGvFresh ++ (growRow 770 s2Step303HeadFvFresh ++ [])))) s2Step303HeadG_Incoming s2Step303HeadG_checked h1 s2Step303HeadG_Outgoing
  exact h0

private theorem s2Step303HeadBank_checked : compileHmrBankResizeLog .headroom s2Step303HeadGBefore ⟨s2Step303HeadFRow,s2Step303HeadGRow,s2Step303HeadFvRow,s2Step303HeadGvRow⟩ ⟨121,121,168,168⟩ [s2Step303HeadGFresh,s2Step303HeadFFresh,s2Step303HeadGvFresh,s2Step303HeadFvFresh]=
    some (s2Step303HeadFvAfter,⟨s2Step303HeadFOut,s2Step303HeadGOut,s2Step303HeadFvOut,s2Step303HeadGvOut⟩,(growRow 769 s2Step303HeadGFresh ++ (growRow 768 s2Step303HeadFFresh ++ (growRow 771 s2Step303HeadGvFresh ++ (growRow 770 s2Step303HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step303HeadBank_rows]
  rfl

private theorem s2Step303Front_checked : compileHmrSourceFrontLog s2Step303EntryFBefore s2Step303FrontBank 120 167 ⟨119,120,167,167⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step303FrontLog=some s2Step303FrontPlan := by
  have pairEq : s2Step303FrontPair=⟨s2Step303HeadFRow,s2Step303HeadGRow,s2Step303HeadFvRow,s2Step303HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step303FrontHead=⟨s2Step303ExitFRow,s2Step303ExitGRow,s2Step303ExitFvRow,s2Step303ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step303Add0A=s2Step303FrontHead.f.wires := by decide +kernel
  have gEq : s2Step303Add0B=s2Step303FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step303Add1A=s2Step303FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step303Add1B=s2Step303FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step303EntryFBefore s2Step303FrontBank 120 167 ⟨119,120,167,167⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step303FrontLog s2Step303FrontPlan
  · exact s2Step303Front_entry
  · exact s2Step303EntryBank_checked
  · exact s2Step303Front_sigma
  · rfl
  · exact s2Step303Front_branch
  · rfl
  · simpa only [s2Step303FrontPlan,pairEq] using s2Step303HeadBank_checked
  · simpa only [s2Step303FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step303F4_checked
  · exact s2Step303Counter_checked
  · rfl
  · simpa only [s2Step303FrontPlan,headEq] using s2Step303ExitBank_checked

private theorem s2Step303Complete_explicit_checked : compileHmrEarlyStepLog s2Step303EntryFBefore s2Step303FrontBank 120 167 ⟨119,120,167,167⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step303CompleteLog=some s2Step303CompletePlan := by
  let Q := s2Step303EarlyControlPlan
  have hq := s2Step303EarlyControl_plan_checked
  have fv1 : s2Step303CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step303CompleteOut.fv.payload[2]?.getD s2Step303CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step303CompleteOut.fv.payload[3]?.getD s2Step303CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step303CompleteOut.fv.payload[4]?.getD s2Step303CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step303EntryFBefore s2Step303EarlyControlArena s2Step303FrontBank 120 167 ⟨119,120,167,167⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step303CompleteLog s2Step303FrontPlan Q
    s2Step303Front_checked s2Step303Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step303Complete_owned s2Step303Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step303EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 s2Step303CompleteOut.fv.second (s2Step303CompleteOut.fv.payload[2]?.getD s2Step303CompleteOut.fv.sign) (s2Step303CompleteOut.fv.payload[3]?.getD s2Step303CompleteOut.fv.sign) (s2Step303CompleteOut.fv.payload[4]?.getD s2Step303CompleteOut.fv.sign) 806 55 s2Step303EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep303Arena : Arena := s2Step303EntryFBefore
def s2PrivateStep303Bank : WindowBank := s2Step303FrontBank
def s2PrivateStep303Spec : HmrSourceWalkStepLog := ⟨120,167,⟨119,120,167,167⟩,55,.early s2Step303CompleteLog⟩
def s2PrivateStep303Plan : HmrSourceStepPlan := .early s2Step303CompletePlan
theorem s2PrivateStep303_source : s2PrivateStep303Spec=s2ObservedLogs288[15] := rfl
theorem s2PrivateStep303_checked : compileHmrSourceStepLog s2PrivateStep303Arena s2PrivateStep303Bank
    s2PrivateStep303Spec.fgWidth s2PrivateStep303Spec.vWidth s2PrivateStep303Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 303 s2PrivateStep303Spec.need none s2PrivateStep303Spec.log=some s2PrivateStep303Plan := by
  change compileHmrSourceStepLog s2Step303EntryFBefore s2Step303FrontBank 120 167 ⟨119,120,167,167⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 303 55 none (.early s2Step303CompleteLog)=some (.early s2Step303CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 303<498)]
  rw [s2Step303Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
