import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep302
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

private def s2Step304CompleteMoves : List (Wire × Wire) := []

private def s2Step304EarlyControlLog : HmrEarlyControlLog := ⟨[826, 806, 787, 793, 805],[830],[800],[894, 896, 901, 903, 907, 908],[]⟩

private def s2Step304FrontLog : HmrFrontAllocationLog := ⟨⟨[[806], [], [], []],[[805], [787], [826], [820]],[[], [], [], []]⟩,[811],[819],[830],[800],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step304CompleteLog : HmrEarlyStepLog := ⟨s2Step304FrontLog,s2Step304CompleteMoves,s2Step304EarlyControlLog⟩

private def s2Step304ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630],768⟩

private def s2Step304ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩

private def s2Step304ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩

private def s2Step304ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩

private def s2Step304FrontOut : WindowBank := ⟨s2Step304ExitFOut,s2Step304ExitGOut,s2Step304ExitFvOut,s2Step304ExitGvOut⟩

private def s2Step304CompleteOut : WindowBank := s2Step304FrontOut.repacked s2Step304CompleteMoves

private def s2Step304EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step304EarlyControlPositiveArena,[830],s2Step304EarlyControlEqualityArena,[800],⟨⟨811,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step304EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<909)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<909)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,826⟩,⟨⟨774,false⟩,806⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,793⟩,⟨⟨777,false⟩,805⟩]⟩

private def s2Step304EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step304EarlyControlZeroArena,s2Step304EarlyControlZeroPlan,s2Step304EarlyControlClassPlan,s2Step304EarlyControlFlagArena,s2Step304EarlyControlFittedArena,s2Step304EarlyControlHistoryArena,s2Step304EarlyControlSigmaArena,s2Step304EarlyControlOutputArena,s2Step304EarlyControlLog⟩

private def s2Step304CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step304Counter_bounded : s2Step304CounterWork.toFinset⊆arenaWires := by norm_num [s2Step304CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step304HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304CounterDuring : Arena := ⟨s2Step304HeadFvAfter.live∪s2Step304CounterWork.toFinset,Finset.union_subset s2Step304HeadFvAfter.bounded s2Step304Counter_bounded⟩

private def s2Step304EntryFFresh : List Wire := [806]

private def s2Step304EntryFvFresh : List Wire := []

private def s2Step304EntryGFresh : List Wire := []

private def s2Step304EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EntryGvAfter : Arena := s2Step304EntryFAfter

private def s2Step304EntryGvFresh : List Wire := []

private def s2Step304ExitFExtra : List Wire := [806, 787]

private def s2Step304ExitGExtra : List Wire := [793, 805]

private def s2Step304ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304ExitGvExtra : List Wire := [826]

private def s2Step304Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step304Add0_bounded : s2Step304Add0Work.toFinset⊆arenaWires := by
  have h : s2Step304Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step304Add0During : Arena := ⟨s2Step304Add0Arena.live∪s2Step304Add0Work.toFinset,Finset.union_subset s2Step304Add0Arena.bounded s2Step304Add0_bounded⟩

private def s2Step304Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step304Add1_bounded : s2Step304Add1Work.toFinset⊆arenaWires := by
  have h : s2Step304Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step304Add1During : Arena := ⟨s2Step304Add1Arena.live∪s2Step304Add1Work.toFinset,Finset.union_subset s2Step304Add1Arena.bounded s2Step304Add1_bounded⟩

private def s2Step304F4FlagArena : Arena := ⟨s2Step304HeadFvAfter.live∪{830},Finset.union_subset s2Step304HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step304F4Plan : HmrHybridF4Plan := ⟨s2Step304F4FlagArena,[830],s2Step304Add0Arena,[800],s2Step304Add0During,s2Step304Add0Work,s2Step304Add1During,s2Step304Add1Work⟩

private def s2Step304HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806, 787],768⟩

private def s2Step304HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩

private def s2Step304HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 805],769⟩

private def s2Step304HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 826],771⟩

private def s2Step304FrontHead : WindowBank := ⟨s2Step304HeadFOut,s2Step304HeadGOut,s2Step304HeadFvOut,s2Step304HeadGvOut⟩

private def s2Step304EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806],768⟩

private def s2Step304EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step304EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩

private def s2Step304EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩

private def s2Step304FrontPair : WindowBank := ⟨s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut⟩

private def s2Step304FrontSigmaArena : Arena := ⟨s2Step304EntryGvAfter.live∪{811},Finset.union_subset s2Step304EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step304HeadFFresh : List Wire := [787]

private def s2Step304HeadFvFresh : List Wire := [820]

private def s2Step304HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304HeadGFresh : List Wire := [805]

private def s2Step304HeadGvFresh : List Wire := [826]

private def s2Step304FrontPlan : HmrSourceFront := ⟨s2Step304EntryGvAfter,s2Step304FrontPair,(growRow 768 s2Step304EntryFFresh ++ (growRow 769 s2Step304EntryGFresh ++ (growRow 770 s2Step304EntryFvFresh ++ (growRow 771 s2Step304EntryGvFresh ++ [])))),s2Step304FrontSigmaArena,[811],s2Step304HeadGBefore,[819],
  s2Step304HeadFvAfter,s2Step304FrontHead,(growRow 769 s2Step304HeadGFresh ++ (growRow 768 s2Step304HeadFFresh ++ (growRow 771 s2Step304HeadGvFresh ++ (growRow 770 s2Step304HeadFvFresh ++ [])))),s2Step304F4Plan,s2Step304CounterDuring,s2Step304CounterWork,s2Step304ExitGvAfter,s2Step304FrontOut,(shrinkRow 769 s2Step304ExitGExtra ++ (shrinkRow 768 s2Step304ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step304ExitGvExtra ++ []))))⟩

private def s2Step304CompletePlan : HmrEarlyStepPlan := ⟨s2Step304FrontPlan,s2Step304EarlyControlArena,s2Step304EarlyControlPlan,s2Step304CompleteMoves⟩

private theorem s2Step304Complete_apart : List.Disjoint (s2Step304CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step304CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step304Complete_owned : (s2Step304CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304Complete_repack : s2Step304ExitGvAfter.checkRepack s2Step304CompleteMoves=some s2Step304EarlyControlArena := by rfl

private theorem s2Step304EarlyControl_branchOwned : ([819] : List Wire).toFinset⊆s2Step304EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_branch : compileHmrBranchRetirement s2Step304EarlyControlSigmaArena 819=some s2Step304EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step304EarlyControl_branchOwned
  · ext q
    simp [s2Step304EarlyControlOutputArena,s2Step304EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step304EarlyControl_classEqualityBorrow : s2Step304EarlyControlPositiveArena.checkBorrow (([811, 830] : List Wire).length-1) s2Step304EarlyControlLog.classWork=some s2Step304EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step304EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step304EarlyControlEqualityArena,s2Step304EarlyControlPositiveArena,s2Step304EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step304EarlyControl_classEqualityOwned : ([811, 830] : List Wire).toFinset⊆s2Step304EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_classEquality : compileHmrEqualityLog s2Step304EarlyControlPositiveArena [811, 830] 0 s2Step304EarlyControlLog.classWork=some (s2Step304EarlyControlEqualityArena,s2Step304EarlyControlLog.classWork,s2Step304EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step304EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step304EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step304EarlyControl_classOwned : ([777, 805, 811] : List Wire).toFinset⊆s2Step304EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_positiveBorrow : s2Step304EarlyControlZeroArena.checkBorrow (1) s2Step304EarlyControlLog.positiveWork=some s2Step304EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step304EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step304EarlyControlPositiveArena,s2Step304EarlyControlZeroArena,s2Step304EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step304EarlyControl_class : compileHmrSourceClassLog s2Step304EarlyControlZeroArena false 777 s2Step304EarlyControlZeroPlan.top 0 811 s2Step304EarlyControlLog.positiveWork s2Step304EarlyControlLog.classWork=some s2Step304EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step304EarlyControlClassPlan s2Step304EarlyControlZeroArena false 777 s2Step304EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step304EarlyControl_classOwned
  · exact s2Step304EarlyControl_positiveBorrow
  · exact s2Step304EarlyControl_classEquality

private theorem s2Step304EarlyControl_entryRecordOwned : ([819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_fitBorrow : s2Step304EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step304EarlyControlLog.recordFresh=some s2Step304EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step304EarlyControlFlagArena (fun q => (0≤q ∧ q<909)) rfl
      decide +kernel
    · ext q
      simp [s2Step304EarlyControlFittedArena,s2Step304EarlyControlFlagArena,s2Step304EarlyControlLog,arenaWires]

private theorem s2Step304EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step304EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlFlagArena (fun q => (0≤q ∧ q<909)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_fit : compileHmrRecordGrowLog s2Step304EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step304EarlyControlLog.recordFresh=some s2Step304EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step304EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step304EarlyControl_fitBorrow

private theorem s2Step304EarlyControl_flagsBorrow : s2Step304EarlyControlEqualityArena.checkBorrow (6) s2Step304EarlyControlLog.flagWork=some s2Step304EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step304EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step304EarlyControlFlagArena,s2Step304EarlyControlEqualityArena,s2Step304EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step304EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step304EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_flags : compileHmrFlagsLog s2Step304EarlyControlClassPlan.equalityArena s2Step304EarlyControlClassPlan.equality.top 253 252 251 s2Step304EarlyControlLog.flagWork=some s2Step304EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step304EarlyControl_flagsOwned⟩
  · exact s2Step304EarlyControl_flagsBorrow

private theorem s2Step304EarlyControl_historyBorrow : s2Step304EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step304EarlyControlLog.recordFresh=some s2Step304EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step304EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step304EarlyControlHistoryArena,s2Step304EarlyControlArena,s2Step304EarlyControlLog,arenaWires]

private theorem s2Step304EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_history : compileHmrRecordGrowLog s2Step304EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step304EarlyControlLog.recordFresh=some s2Step304EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step304EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step304EarlyControl_historyBorrow

private theorem s2Step304EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step304EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step304EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_sigmaRelease : s2Step304EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step304EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step304EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step304EarlyControlSigmaArena,s2Step304EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step304EarlyControl_sigma : compileHmrSigmaDropLog s2Step304EarlyControlHistoryArena false 0 0 254 811 []=some s2Step304EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step304EarlyControl_sigmaOwned⟩
  · exact s2Step304EarlyControl_sigmaRelease

private theorem s2Step304EarlyControl_zeroBorrow : s2Step304EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step304EarlyControlLog.zeroWork=some s2Step304EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step304EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step304EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step304EarlyControlZeroArena,s2Step304EarlyControlArena,s2Step304EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step304EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step304EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step304EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EarlyControl_zero : compileHmrEqualityLog s2Step304EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step304EarlyControlLog.zeroWork=some (s2Step304EarlyControlZeroArena,s2Step304EarlyControlLog.zeroWork,s2Step304EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step304EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step304EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step304EarlyControl_logged : s2Step304EarlyControlPlan.Logged s2Step304EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 819 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step304EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step304EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step304EarlyControl_zero
  · exact s2Step304EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step304EarlyControl_flags
  · exact s2Step304EarlyControl_fit
  · exact s2Step304EarlyControl_history
  · exact s2Step304EarlyControl_sigma
  · exact s2Step304EarlyControl_branch

private theorem s2Step304EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step304EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 819 55 s2Step304EarlyControlLog=some s2Step304EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step304EarlyControlPlan s2Step304EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 254 253 252 251 819 55 s2Step304EarlyControl_logged

private def s2Step304EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630],768⟩

private def s2Step304EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step304EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩

private def s2Step304EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩

private def s2Step304FrontBank : WindowBank := ⟨s2Step304EntryFRow,s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow⟩

private def s2Step304Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806, 787, 768]

private def s2Step304Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 805, 769]

private def s2Step304Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 770]

private def s2Step304Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 826, 771]

private theorem s2Step304Counter_apart : Disjoint s2Step304HeadFvAfter.live s2Step304CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step304HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304Counter_borrowed : s2Step304HeadFvAfter.checkBorrow 4 s2Step304CounterWork=some s2Step304CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step304HeadFvAfter s2Step304CounterDuring s2Step304CounterWork.toFinset s2Step304Counter_bounded s2Step304Counter_apart rfl

private theorem s2Step304Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step304HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step304HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304Counter_checked : compileHmrCounterStepLog s2Step304HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step304CounterWork=some s2Step304CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step304HeadFvAfter.live := fun q hq => s2Step304Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step304Counter_borrowed

private theorem s2Step304EntryBank_incomingDistinct : ([s2Step304EntryFRow,s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304EntryF_Incoming : rowsOwned s2Step304EntryFBefore [s2Step304EntryFRow,s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304EntryFRow,s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow] 0 s2Step304EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304EntryBank_outgoingOwned : rowsOwned s2Step304EntryGvAfter [s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step304EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304EntryF_Outgoing : rowsOwned s2Step304EntryGvAfter [s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut] :=
  hmrRows_owned_drop s2Step304EntryGvAfter [s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut] 0 s2Step304EntryBank_outgoingOwned

private theorem s2Step304EntryF_distinct : (s2Step304EntryFRow.sign::s2Step304EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304EntryF_owned : (s2Step304EntryFRow.sign::s2Step304EntryFRow.payload).toFinset⊆s2Step304EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EntryF_reserved : s2Step304EntryFBefore.reserve s2Step304EntryFFresh.toFinset=some s2Step304EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step304EntryFFresh,arenaWires]
  · norm_num [s2Step304EntryFBefore,s2Step304EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step304EntryFAfter,s2Step304EntryFBefore,s2Step304EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step304EntryF_checked : planRowResizeLog s2Step304EntryFBefore s2Step304EntryFRow 120 s2Step304EntryFFresh=
    some (s2Step304EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806],768⟩,growRow 768 s2Step304EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step304EntryFBefore s2Step304EntryFAfter s2Step304EntryFRow 120 s2Step304EntryFFresh
    s2Step304EntryF_distinct s2Step304EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304EntryF_reserved
  have rowEq : WindowRow.mk (s2Step304EntryFRow.payload++s2Step304EntryFFresh) s2Step304EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step304EntryFvAfter : Arena := s2Step304EntryFAfter

private def s2Step304EntryFvBefore : Arena := s2Step304EntryFAfter

private theorem s2Step304EntryFv_Incoming : rowsOwned s2Step304EntryFvBefore [s2Step304EntryFvRow,s2Step304EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304EntryFRow,s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow] 2 s2Step304EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304EntryFv_Outgoing : rowsOwned s2Step304EntryGvAfter [s2Step304EntryFvOut,s2Step304EntryGvOut] :=
  hmrRows_owned_drop s2Step304EntryGvAfter [s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut] 2 s2Step304EntryBank_outgoingOwned

private theorem s2Step304EntryFv_distinct : (s2Step304EntryFvRow.sign::s2Step304EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304EntryFv_owned : (s2Step304EntryFvRow.sign::s2Step304EntryFvRow.payload).toFinset⊆s2Step304EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EntryFv_reserved : s2Step304EntryFvBefore.reserve s2Step304EntryFvFresh.toFinset=some s2Step304EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step304EntryFvFresh,arenaWires]
  · norm_num [s2Step304EntryFvBefore,s2Step304EntryFAfter,s2Step304EntryFvFresh,arenaWires]
  · simp only [s2Step304EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step304EntryFv_checked : planRowResizeLog s2Step304EntryFvBefore s2Step304EntryFvRow 167 s2Step304EntryFvFresh=
    some (s2Step304EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩,growRow 770 s2Step304EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step304EntryFvBefore s2Step304EntryFvAfter s2Step304EntryFvRow 167 s2Step304EntryFvFresh
    s2Step304EntryFv_distinct s2Step304EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step304EntryFvRow.payload++s2Step304EntryFvFresh) s2Step304EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step304EntryGAfter : Arena := s2Step304EntryFAfter

private def s2Step304EntryGBefore : Arena := s2Step304EntryFAfter

private theorem s2Step304EntryG_Incoming : rowsOwned s2Step304EntryGBefore [s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304EntryFRow,s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow] 1 s2Step304EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304EntryG_Outgoing : rowsOwned s2Step304EntryGvAfter [s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut] :=
  hmrRows_owned_drop s2Step304EntryGvAfter [s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut] 1 s2Step304EntryBank_outgoingOwned

private theorem s2Step304EntryG_distinct : (s2Step304EntryGRow.sign::s2Step304EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304EntryG_owned : (s2Step304EntryGRow.sign::s2Step304EntryGRow.payload).toFinset⊆s2Step304EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EntryG_reserved : s2Step304EntryGBefore.reserve s2Step304EntryGFresh.toFinset=some s2Step304EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step304EntryGFresh,arenaWires]
  · norm_num [s2Step304EntryGBefore,s2Step304EntryFAfter,s2Step304EntryGFresh,arenaWires]
  · simp only [s2Step304EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step304EntryG_checked : planRowResizeLog s2Step304EntryGBefore s2Step304EntryGRow 120 s2Step304EntryGFresh=
    some (s2Step304EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩,growRow 769 s2Step304EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step304EntryGBefore s2Step304EntryGAfter s2Step304EntryGRow 120 s2Step304EntryGFresh
    s2Step304EntryG_distinct s2Step304EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304EntryG_reserved
  have rowEq : WindowRow.mk (s2Step304EntryGRow.payload++s2Step304EntryGFresh) s2Step304EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step304EntryGvBefore : Arena := s2Step304EntryFAfter

private theorem s2Step304EntryGv_Incoming : rowsOwned s2Step304EntryGvBefore [s2Step304EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304EntryFRow,s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow] 3 s2Step304EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304EntryGv_Outgoing : rowsOwned s2Step304EntryGvAfter [s2Step304EntryGvOut] :=
  hmrRows_owned_drop s2Step304EntryGvAfter [s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut] 3 s2Step304EntryBank_outgoingOwned

private theorem s2Step304EntryGv_distinct : (s2Step304EntryGvRow.sign::s2Step304EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304EntryGv_owned : (s2Step304EntryGvRow.sign::s2Step304EntryGvRow.payload).toFinset⊆s2Step304EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304EntryGv_reserved : s2Step304EntryGvBefore.reserve s2Step304EntryGvFresh.toFinset=some s2Step304EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step304EntryGvFresh,arenaWires]
  · norm_num [s2Step304EntryGvBefore,s2Step304EntryFAfter,s2Step304EntryGvFresh,arenaWires]
  · simp only [s2Step304EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step304EntryGv_checked : planRowResizeLog s2Step304EntryGvBefore s2Step304EntryGvRow 167 s2Step304EntryGvFresh=
    some (s2Step304EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩,growRow 771 s2Step304EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step304EntryGvBefore s2Step304EntryGvAfter s2Step304EntryGvRow 167 s2Step304EntryGvFresh
    s2Step304EntryGv_distinct s2Step304EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step304EntryGvRow.payload++s2Step304EntryGvFresh) s2Step304EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step304EntryBank_rows : planWindowRowsLog s2Step304EntryFBefore [(s2Step304EntryFRow,120),(s2Step304EntryGRow,120),(s2Step304EntryFvRow,167),(s2Step304EntryGvRow,167)] [s2Step304EntryFFresh,s2Step304EntryGFresh,s2Step304EntryFvFresh,s2Step304EntryGvFresh]=
    some (s2Step304EntryGvAfter,[s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut],(growRow 768 s2Step304EntryFFresh ++ (growRow 769 s2Step304EntryGFresh ++ (growRow 770 s2Step304EntryFvFresh ++ (growRow 771 s2Step304EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step304EntryGvAfter [] []=some (s2Step304EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step304EntryGvBefore s2Step304EntryGvAfter s2Step304EntryGvAfter
    s2Step304EntryGvRow s2Step304EntryGvOut 167 s2Step304EntryGvFresh [] [] []
    (growRow 771 s2Step304EntryGvFresh) ([]) s2Step304EntryGv_Incoming s2Step304EntryGv_checked h4 s2Step304EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step304EntryFvBefore s2Step304EntryFvAfter s2Step304EntryGvAfter
    s2Step304EntryFvRow s2Step304EntryFvOut 167 s2Step304EntryFvFresh [(s2Step304EntryGvRow,167)] [s2Step304EntryGvFresh] [s2Step304EntryGvOut]
    (growRow 770 s2Step304EntryFvFresh) ((growRow 771 s2Step304EntryGvFresh ++ [])) s2Step304EntryFv_Incoming s2Step304EntryFv_checked h3 s2Step304EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step304EntryGBefore s2Step304EntryGAfter s2Step304EntryGvAfter
    s2Step304EntryGRow s2Step304EntryGOut 120 s2Step304EntryGFresh [(s2Step304EntryFvRow,167),(s2Step304EntryGvRow,167)] [s2Step304EntryFvFresh,s2Step304EntryGvFresh] [s2Step304EntryFvOut,s2Step304EntryGvOut]
    (growRow 769 s2Step304EntryGFresh) ((growRow 770 s2Step304EntryFvFresh ++ (growRow 771 s2Step304EntryGvFresh ++ []))) s2Step304EntryG_Incoming s2Step304EntryG_checked h2 s2Step304EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step304EntryFBefore s2Step304EntryFAfter s2Step304EntryGvAfter
    s2Step304EntryFRow s2Step304EntryFOut 120 s2Step304EntryFFresh [(s2Step304EntryGRow,120),(s2Step304EntryFvRow,167),(s2Step304EntryGvRow,167)] [s2Step304EntryGFresh,s2Step304EntryFvFresh,s2Step304EntryGvFresh] [s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut]
    (growRow 768 s2Step304EntryFFresh) ((growRow 769 s2Step304EntryGFresh ++ (growRow 770 s2Step304EntryFvFresh ++ (growRow 771 s2Step304EntryGvFresh ++ [])))) s2Step304EntryF_Incoming s2Step304EntryF_checked h1 s2Step304EntryF_Outgoing
  exact h0

private theorem s2Step304EntryBank_checked : compileHmrBankResizeLog .entry s2Step304EntryFBefore ⟨s2Step304EntryFRow,s2Step304EntryGRow,s2Step304EntryFvRow,s2Step304EntryGvRow⟩ ⟨120,120,167,167⟩ [s2Step304EntryFFresh,s2Step304EntryGFresh,s2Step304EntryFvFresh,s2Step304EntryGvFresh]=
    some (s2Step304EntryGvAfter,⟨s2Step304EntryFOut,s2Step304EntryGOut,s2Step304EntryFvOut,s2Step304EntryGvOut⟩,(growRow 768 s2Step304EntryFFresh ++ (growRow 769 s2Step304EntryGFresh ++ (growRow 770 s2Step304EntryFvFresh ++ (growRow 771 s2Step304EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step304EntryBank_rows]
  rfl

private def s2Step304ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304ExitFBefore : Arena := s2Step304ExitGAfter

private def s2Step304ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806, 787],768⟩

private def s2Step304ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩

private def s2Step304ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 805],769⟩

private def s2Step304ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 826],771⟩

private theorem s2Step304ExitBank_incomingDistinct : ([s2Step304ExitGRow,s2Step304ExitFRow,s2Step304ExitFvRow,s2Step304ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304ExitF_Incoming : rowsOwned s2Step304ExitFBefore [s2Step304ExitFRow,s2Step304ExitFvRow,s2Step304ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304ExitGRow,s2Step304ExitFRow,s2Step304ExitFvRow,s2Step304ExitGvRow] 1 s2Step304ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304ExitBank_outgoingOwned : rowsOwned s2Step304ExitGvAfter [s2Step304ExitGOut,s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step304ExitGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304ExitF_Outgoing : rowsOwned s2Step304ExitGvAfter [s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut] :=
  hmrRows_owned_drop s2Step304ExitGvAfter [s2Step304ExitGOut,s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut] 1 s2Step304ExitBank_outgoingOwned

private theorem s2Step304ExitF_distinct : (s2Step304ExitFRow.sign::s2Step304ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304ExitF_owned : (s2Step304ExitFRow.sign::s2Step304ExitFRow.payload).toFinset⊆s2Step304ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304ExitF_retired : s2Step304ExitFBefore.retireSet s2Step304ExitFExtra.toFinset=s2Step304ExitFAfter := by
  unfold Arena.retireSet s2Step304ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step304ExitFBefore,s2Step304ExitGAfter,s2Step304ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step304ExitF_checked : planRowResizeLog s2Step304ExitFBefore s2Step304ExitFRow 119 []=
    some (s2Step304ExitFAfter,s2Step304ExitFOut,shrinkRow 768 s2Step304ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step304ExitFBefore s2Step304ExitFRow 119 s2Step304ExitF_distinct s2Step304ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step304ExitFRow.payload.take 119) s2Step304ExitFRow.sign=s2Step304ExitFOut := by decide +kernel
  have hi : s2Step304ExitFRow.payload.drop 119=s2Step304ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step304ExitF_retired] at result
  exact result

private def s2Step304ExitFvAfter : Arena := s2Step304ExitFAfter

private def s2Step304ExitFvBefore : Arena := s2Step304ExitFAfter

private theorem s2Step304ExitFv_Incoming : rowsOwned s2Step304ExitFvBefore [s2Step304ExitFvRow,s2Step304ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304ExitGRow,s2Step304ExitFRow,s2Step304ExitFvRow,s2Step304ExitGvRow] 2 s2Step304ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304ExitFv_Outgoing : rowsOwned s2Step304ExitGvAfter [s2Step304ExitFvOut,s2Step304ExitGvOut] :=
  hmrRows_owned_drop s2Step304ExitGvAfter [s2Step304ExitGOut,s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut] 2 s2Step304ExitBank_outgoingOwned

private theorem s2Step304ExitFv_distinct : (s2Step304ExitFvRow.sign::s2Step304ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304ExitFv_owned : (s2Step304ExitFvRow.sign::s2Step304ExitFvRow.payload).toFinset⊆s2Step304ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304ExitFv_reserved : s2Step304ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step304ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step304ExitFv_checked : planRowResizeLog s2Step304ExitFvBefore s2Step304ExitFvRow 168 []=
    some (s2Step304ExitFvAfter,s2Step304ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step304ExitFvBefore s2Step304ExitFvAfter s2Step304ExitFvRow 168 []
    s2Step304ExitFv_distinct s2Step304ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step304ExitFvRow.payload++[]) s2Step304ExitFvRow.sign=s2Step304ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step304ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step304ExitG_Incoming : rowsOwned s2Step304ExitGBefore [s2Step304ExitGRow,s2Step304ExitFRow,s2Step304ExitFvRow,s2Step304ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304ExitGRow,s2Step304ExitFRow,s2Step304ExitFvRow,s2Step304ExitGvRow] 0 s2Step304ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304ExitG_Outgoing : rowsOwned s2Step304ExitGvAfter [s2Step304ExitGOut,s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut] :=
  hmrRows_owned_drop s2Step304ExitGvAfter [s2Step304ExitGOut,s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut] 0 s2Step304ExitBank_outgoingOwned

private theorem s2Step304ExitG_distinct : (s2Step304ExitGRow.sign::s2Step304ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304ExitG_owned : (s2Step304ExitGRow.sign::s2Step304ExitGRow.payload).toFinset⊆s2Step304ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304ExitG_retired : s2Step304ExitGBefore.retireSet s2Step304ExitGExtra.toFinset=s2Step304ExitGAfter := by
  unfold Arena.retireSet s2Step304ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step304ExitGBefore,s2Step304ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step304ExitG_checked : planRowResizeLog s2Step304ExitGBefore s2Step304ExitGRow 119 []=
    some (s2Step304ExitGAfter,s2Step304ExitGOut,shrinkRow 769 s2Step304ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step304ExitGBefore s2Step304ExitGRow 119 s2Step304ExitG_distinct s2Step304ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step304ExitGRow.payload.take 119) s2Step304ExitGRow.sign=s2Step304ExitGOut := by decide +kernel
  have hi : s2Step304ExitGRow.payload.drop 119=s2Step304ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step304ExitG_retired] at result
  exact result

private def s2Step304ExitGvBefore : Arena := s2Step304ExitFAfter

private theorem s2Step304ExitGv_Incoming : rowsOwned s2Step304ExitGvBefore [s2Step304ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304ExitGRow,s2Step304ExitFRow,s2Step304ExitFvRow,s2Step304ExitGvRow] 3 s2Step304ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304ExitGv_Outgoing : rowsOwned s2Step304ExitGvAfter [s2Step304ExitGvOut] :=
  hmrRows_owned_drop s2Step304ExitGvAfter [s2Step304ExitGOut,s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut] 3 s2Step304ExitBank_outgoingOwned

private theorem s2Step304ExitGv_distinct : (s2Step304ExitGvRow.sign::s2Step304ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304ExitGv_owned : (s2Step304ExitGvRow.sign::s2Step304ExitGvRow.payload).toFinset⊆s2Step304ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304ExitGv_retired : s2Step304ExitGvBefore.retireSet s2Step304ExitGvExtra.toFinset=s2Step304ExitGvAfter := by
  unfold Arena.retireSet s2Step304ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step304ExitGvBefore,s2Step304ExitFAfter,s2Step304ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step304ExitGv_checked : planRowResizeLog s2Step304ExitGvBefore s2Step304ExitGvRow 167 []=
    some (s2Step304ExitGvAfter,s2Step304ExitGvOut,shrinkRow 771 s2Step304ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step304ExitGvBefore s2Step304ExitGvRow 167 s2Step304ExitGv_distinct s2Step304ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step304ExitGvRow.payload.take 167) s2Step304ExitGvRow.sign=s2Step304ExitGvOut := by decide +kernel
  have hi : s2Step304ExitGvRow.payload.drop 167=s2Step304ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step304ExitGv_retired] at result
  exact result

private theorem s2Step304ExitBank_rows : planWindowRowsLog s2Step304ExitGBefore [(s2Step304ExitGRow,119),(s2Step304ExitFRow,119),(s2Step304ExitFvRow,168),(s2Step304ExitGvRow,167)] [[],[],[],[]]=
    some (s2Step304ExitGvAfter,[s2Step304ExitGOut,s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut],(shrinkRow 769 s2Step304ExitGExtra ++ (shrinkRow 768 s2Step304ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step304ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step304ExitGvAfter [] []=some (s2Step304ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step304ExitGvBefore s2Step304ExitGvAfter s2Step304ExitGvAfter
    s2Step304ExitGvRow s2Step304ExitGvOut 167 [] [] [] []
    (shrinkRow 771 s2Step304ExitGvExtra) ([]) s2Step304ExitGv_Incoming s2Step304ExitGv_checked h4 s2Step304ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step304ExitFvBefore s2Step304ExitFvAfter s2Step304ExitGvAfter
    s2Step304ExitFvRow s2Step304ExitFvOut 168 [] [(s2Step304ExitGvRow,167)] [[]] [s2Step304ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step304ExitGvExtra ++ [])) s2Step304ExitFv_Incoming s2Step304ExitFv_checked h3 s2Step304ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step304ExitFBefore s2Step304ExitFAfter s2Step304ExitGvAfter
    s2Step304ExitFRow s2Step304ExitFOut 119 [] [(s2Step304ExitFvRow,168),(s2Step304ExitGvRow,167)] [[],[]] [s2Step304ExitFvOut,s2Step304ExitGvOut]
    (shrinkRow 768 s2Step304ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step304ExitGvExtra ++ []))) s2Step304ExitF_Incoming s2Step304ExitF_checked h2 s2Step304ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step304ExitGBefore s2Step304ExitGAfter s2Step304ExitGvAfter
    s2Step304ExitGRow s2Step304ExitGOut 119 [] [(s2Step304ExitFRow,119),(s2Step304ExitFvRow,168),(s2Step304ExitGvRow,167)] [[],[],[]] [s2Step304ExitFOut,s2Step304ExitFvOut,s2Step304ExitGvOut]
    (shrinkRow 769 s2Step304ExitGExtra) ((shrinkRow 768 s2Step304ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step304ExitGvExtra ++ [])))) s2Step304ExitG_Incoming s2Step304ExitG_checked h1 s2Step304ExitG_Outgoing
  exact h0

private theorem s2Step304ExitBank_checked : compileHmrBankResizeLog .exit s2Step304ExitGBefore ⟨s2Step304ExitFRow,s2Step304ExitGRow,s2Step304ExitFvRow,s2Step304ExitGvRow⟩ ⟨119,119,168,167⟩ [[],[],[],[]]=
    some (s2Step304ExitGvAfter,⟨s2Step304ExitFOut,s2Step304ExitGOut,s2Step304ExitFvOut,s2Step304ExitGvOut⟩,(shrinkRow 769 s2Step304ExitGExtra ++ (shrinkRow 768 s2Step304ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step304ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step304ExitBank_rows]
  rfl

private theorem s2Step304Add0_apart : Disjoint s2Step304Add0Arena.live s2Step304Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step304Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304Add0_card : s2Step304Add0Arena.live.card=903 := by
  decide +kernel

private theorem s2Step304Add0_borrowed : s2Step304Add0Arena.checkBorrow (hmrHybridCount s2Step304Add0Arena s2Step304Add0B.length) s2Step304Add0Work=some s2Step304Add0During := by
  have len : s2Step304Add0Work.length=hmrHybridCount s2Step304Add0Arena s2Step304Add0B.length := by
    rw [hmrHybridCount,s2Step304Add0_card]
    decide +kernel
  have nd : s2Step304Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step304Add0Arena s2Step304Add0During s2Step304Add0Work.toFinset s2Step304Add0_bounded s2Step304Add0_apart rfl

private theorem s2Step304Add0_distinct : (830::819::800::(s2Step304Add0A++s2Step304Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304Add0_owned : (830::819::800::(s2Step304Add0A++s2Step304Add0B)).toFinset⊆s2Step304Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step304Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304Add0_checked : compileHmrHybridCinLog s2Step304Add0Arena 819 830 800 s2Step304Add0A s2Step304Add0B s2Step304Add0Work=some s2Step304Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step304Add0Arena s2Step304Add0During 819 830 800 s2Step304Add0A s2Step304Add0B s2Step304Add0Work
    (by decide +kernel) (by decide +kernel) s2Step304Add0_distinct
    (fun q hq => s2Step304Add0_owned (List.mem_toFinset.mpr hq)) s2Step304Add0_borrowed

private theorem s2Step304Add1_apart : Disjoint s2Step304Add1Arena.live s2Step304Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step304Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304Add1_card : s2Step304Add1Arena.live.card=903 := by
  decide +kernel

private theorem s2Step304Add1_borrowed : s2Step304Add1Arena.checkBorrow (hmrHybridCount s2Step304Add1Arena s2Step304Add1B.length) s2Step304Add1Work=some s2Step304Add1During := by
  have len : s2Step304Add1Work.length=hmrHybridCount s2Step304Add1Arena s2Step304Add1B.length := by
    rw [hmrHybridCount,s2Step304Add1_card]
    decide +kernel
  have nd : s2Step304Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step304Add1Arena s2Step304Add1During s2Step304Add1Work.toFinset s2Step304Add1_bounded s2Step304Add1_apart rfl

private theorem s2Step304Add1_distinct : (830::819::800::(s2Step304Add1A++s2Step304Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304Add1_owned : (830::819::800::(s2Step304Add1A++s2Step304Add1B)).toFinset⊆s2Step304Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step304Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304Add1_checked : compileHmrHybridCinLog s2Step304Add1Arena 819 830 800 s2Step304Add1A s2Step304Add1B s2Step304Add1Work=some s2Step304Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step304Add1Arena s2Step304Add1During 819 830 800 s2Step304Add1A s2Step304Add1B s2Step304Add1Work
    (by decide +kernel) (by decide +kernel) s2Step304Add1_distinct
    (fun q hq => s2Step304Add1_owned (List.mem_toFinset.mpr hq)) s2Step304Add1_borrowed

private theorem s2Step304F4_apart : Disjoint (s2Step304Add0A++s2Step304Add0B).toFinset (s2Step304Add1A++s2Step304Add1B).toFinset := by
  have nd : ((s2Step304Add0A++s2Step304Add0B)++(s2Step304Add1A++s2Step304Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step304F4_carry : s2Step304F4FlagArena.checkBorrow 1 [800]=some s2Step304Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step304F4FlagArena,s2Step304HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step304F4FlagArena,s2Step304HeadFvAfter,s2Step304Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step304F4_distinct : (811::819::830::800::((s2Step304Add0A++s2Step304Add1A)++(s2Step304Add0B++s2Step304Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304F4_flag : s2Step304HeadFvAfter.checkBorrow 1 [830]=some s2Step304F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step304HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step304F4_owned : (811::819::((s2Step304Add0A++s2Step304Add1A)++(s2Step304Add0B++s2Step304Add1B))).toFinset⊆s2Step304HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step304HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304F4_checked : compileHmrHybridF4Log s2Step304HeadFvAfter 811 819 s2Step304Add0A s2Step304Add0B s2Step304Add1A s2Step304Add1B [830] [800] s2Step304Add0Work s2Step304Add1Work=some s2Step304F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step304HeadFvAfter s2Step304F4FlagArena s2Step304Add0Arena s2Step304Add0During s2Step304Add1During 811 819
    s2Step304Add0A s2Step304Add0B s2Step304Add1A s2Step304Add1B [830] [800] s2Step304Add0Work s2Step304Add1Work
    (fun q hq => s2Step304F4_owned (List.mem_toFinset.mpr hq)) s2Step304F4_flag s2Step304F4_carry
    s2Step304F4_distinct s2Step304F4_apart s2Step304Add0_checked s2Step304Add1_checked

private theorem s2Step304Front_branch : s2Step304FrontSigmaArena.checkBorrow 1 [819]=some s2Step304HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step304FrontSigmaArena,s2Step304EntryGvAfter,s2Step304EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step304FrontSigmaArena,s2Step304EntryGvAfter,s2Step304EntryFAfter,s2Step304HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step304Front_entry : HmrFrontEntryValid s2Step304EntryFBefore s2Step304FrontBank 120 167 ⟨119,119,168,167⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step304FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step304EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step304EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step304FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step304Front_sigma : s2Step304EntryGvAfter.checkBorrow 1 [811]=some s2Step304FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step304EntryGvAfter,s2Step304EntryFAfter,arenaWires]
  · rfl

private def s2Step304HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304HeadFBefore : Arena := s2Step304HeadGAfter

private def s2Step304HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806],768⟩

private def s2Step304HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797],770⟩

private def s2Step304HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793],769⟩

private def s2Step304HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831],771⟩

private theorem s2Step304HeadBank_incomingDistinct : ([s2Step304HeadGRow,s2Step304HeadFRow,s2Step304HeadGvRow,s2Step304HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304HeadF_Incoming : rowsOwned s2Step304HeadFBefore [s2Step304HeadFRow,s2Step304HeadGvRow,s2Step304HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304HeadGRow,s2Step304HeadFRow,s2Step304HeadGvRow,s2Step304HeadFvRow] 1 s2Step304HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304HeadBank_outgoingOwned : rowsOwned s2Step304HeadFvAfter [s2Step304HeadGOut,s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step304HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304HeadF_Outgoing : rowsOwned s2Step304HeadFvAfter [s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut] :=
  hmrRows_owned_drop s2Step304HeadFvAfter [s2Step304HeadGOut,s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut] 1 s2Step304HeadBank_outgoingOwned

private theorem s2Step304HeadF_distinct : (s2Step304HeadFRow.sign::s2Step304HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304HeadF_owned : (s2Step304HeadFRow.sign::s2Step304HeadFRow.payload).toFinset⊆s2Step304HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304HeadF_reserved : s2Step304HeadFBefore.reserve s2Step304HeadFFresh.toFinset=some s2Step304HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step304HeadFFresh,arenaWires]
  · norm_num [s2Step304HeadFBefore,s2Step304HeadGAfter,s2Step304HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step304HeadFAfter,s2Step304HeadFBefore,s2Step304HeadGAfter,s2Step304HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step304HeadF_checked : planRowResizeLog s2Step304HeadFBefore s2Step304HeadFRow 121 s2Step304HeadFFresh=
    some (s2Step304HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806, 787],768⟩,growRow 768 s2Step304HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step304HeadFBefore s2Step304HeadFAfter s2Step304HeadFRow 121 s2Step304HeadFFresh
    s2Step304HeadF_distinct s2Step304HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304HeadF_reserved
  have rowEq : WindowRow.mk (s2Step304HeadFRow.payload++s2Step304HeadFFresh) s2Step304HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 806, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step304HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step304HeadFvBefore : Arena := s2Step304HeadGvAfter

private theorem s2Step304HeadFv_Incoming : rowsOwned s2Step304HeadFvBefore [s2Step304HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304HeadGRow,s2Step304HeadFRow,s2Step304HeadGvRow,s2Step304HeadFvRow] 3 s2Step304HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304HeadFv_Outgoing : rowsOwned s2Step304HeadFvAfter [s2Step304HeadFvOut] :=
  hmrRows_owned_drop s2Step304HeadFvAfter [s2Step304HeadGOut,s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut] 3 s2Step304HeadBank_outgoingOwned

private theorem s2Step304HeadFv_distinct : (s2Step304HeadFvRow.sign::s2Step304HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304HeadFv_owned : (s2Step304HeadFvRow.sign::s2Step304HeadFvRow.payload).toFinset⊆s2Step304HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304HeadFv_reserved : s2Step304HeadFvBefore.reserve s2Step304HeadFvFresh.toFinset=some s2Step304HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step304HeadFvFresh,arenaWires]
  · norm_num [s2Step304HeadFvBefore,s2Step304HeadGvAfter,s2Step304HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step304HeadFvAfter,s2Step304HeadFvBefore,s2Step304HeadGvAfter,s2Step304HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step304HeadFv_checked : planRowResizeLog s2Step304HeadFvBefore s2Step304HeadFvRow 168 s2Step304HeadFvFresh=
    some (s2Step304HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩,growRow 770 s2Step304HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step304HeadFvBefore s2Step304HeadFvAfter s2Step304HeadFvRow 168 s2Step304HeadFvFresh
    s2Step304HeadFv_distinct s2Step304HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step304HeadFvRow.payload++s2Step304HeadFvFresh) s2Step304HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step304HeadG_Incoming : rowsOwned s2Step304HeadGBefore [s2Step304HeadGRow,s2Step304HeadFRow,s2Step304HeadGvRow,s2Step304HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304HeadGRow,s2Step304HeadFRow,s2Step304HeadGvRow,s2Step304HeadFvRow] 0 s2Step304HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304HeadG_Outgoing : rowsOwned s2Step304HeadFvAfter [s2Step304HeadGOut,s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut] :=
  hmrRows_owned_drop s2Step304HeadFvAfter [s2Step304HeadGOut,s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut] 0 s2Step304HeadBank_outgoingOwned

private theorem s2Step304HeadG_distinct : (s2Step304HeadGRow.sign::s2Step304HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304HeadG_owned : (s2Step304HeadGRow.sign::s2Step304HeadGRow.payload).toFinset⊆s2Step304HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304HeadG_reserved : s2Step304HeadGBefore.reserve s2Step304HeadGFresh.toFinset=some s2Step304HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step304HeadGFresh,arenaWires]
  · norm_num [s2Step304HeadGBefore,s2Step304HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step304HeadGAfter,s2Step304HeadGBefore,s2Step304HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step304HeadG_checked : planRowResizeLog s2Step304HeadGBefore s2Step304HeadGRow 121 s2Step304HeadGFresh=
    some (s2Step304HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 805],769⟩,growRow 769 s2Step304HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step304HeadGBefore s2Step304HeadGAfter s2Step304HeadGRow 121 s2Step304HeadGFresh
    s2Step304HeadG_distinct s2Step304HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304HeadG_reserved
  have rowEq : WindowRow.mk (s2Step304HeadGRow.payload++s2Step304HeadGFresh) s2Step304HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 793, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step304HeadGvBefore : Arena := s2Step304HeadFAfter

private theorem s2Step304HeadGv_Incoming : rowsOwned s2Step304HeadGvBefore [s2Step304HeadGvRow,s2Step304HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step304HeadGRow,s2Step304HeadFRow,s2Step304HeadGvRow,s2Step304HeadFvRow] 2 s2Step304HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step304HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step304HeadGv_Outgoing : rowsOwned s2Step304HeadFvAfter [s2Step304HeadGvOut,s2Step304HeadFvOut] :=
  hmrRows_owned_drop s2Step304HeadFvAfter [s2Step304HeadGOut,s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut] 2 s2Step304HeadBank_outgoingOwned

private theorem s2Step304HeadGv_distinct : (s2Step304HeadGvRow.sign::s2Step304HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step304HeadGv_owned : (s2Step304HeadGvRow.sign::s2Step304HeadGvRow.payload).toFinset⊆s2Step304HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step304HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step304HeadGv_reserved : s2Step304HeadGvBefore.reserve s2Step304HeadGvFresh.toFinset=some s2Step304HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step304HeadGvFresh,arenaWires]
  · norm_num [s2Step304HeadGvBefore,s2Step304HeadFAfter,s2Step304HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step304HeadGvAfter,s2Step304HeadGvBefore,s2Step304HeadFAfter,s2Step304HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step304HeadGv_checked : planRowResizeLog s2Step304HeadGvBefore s2Step304HeadGvRow 168 s2Step304HeadGvFresh=
    some (s2Step304HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 826],771⟩,growRow 771 s2Step304HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step304HeadGvBefore s2Step304HeadGvAfter s2Step304HeadGvRow 168 s2Step304HeadGvFresh
    s2Step304HeadGv_distinct s2Step304HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step304HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step304HeadGvRow.payload++s2Step304HeadGvFresh) s2Step304HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step304HeadBank_rows : planWindowRowsLog s2Step304HeadGBefore [(s2Step304HeadGRow,121),(s2Step304HeadFRow,121),(s2Step304HeadGvRow,168),(s2Step304HeadFvRow,168)] [s2Step304HeadGFresh,s2Step304HeadFFresh,s2Step304HeadGvFresh,s2Step304HeadFvFresh]=
    some (s2Step304HeadFvAfter,[s2Step304HeadGOut,s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut],(growRow 769 s2Step304HeadGFresh ++ (growRow 768 s2Step304HeadFFresh ++ (growRow 771 s2Step304HeadGvFresh ++ (growRow 770 s2Step304HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step304HeadFvAfter [] []=some (s2Step304HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step304HeadFvBefore s2Step304HeadFvAfter s2Step304HeadFvAfter
    s2Step304HeadFvRow s2Step304HeadFvOut 168 s2Step304HeadFvFresh [] [] []
    (growRow 770 s2Step304HeadFvFresh) ([]) s2Step304HeadFv_Incoming s2Step304HeadFv_checked h4 s2Step304HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step304HeadGvBefore s2Step304HeadGvAfter s2Step304HeadFvAfter
    s2Step304HeadGvRow s2Step304HeadGvOut 168 s2Step304HeadGvFresh [(s2Step304HeadFvRow,168)] [s2Step304HeadFvFresh] [s2Step304HeadFvOut]
    (growRow 771 s2Step304HeadGvFresh) ((growRow 770 s2Step304HeadFvFresh ++ [])) s2Step304HeadGv_Incoming s2Step304HeadGv_checked h3 s2Step304HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step304HeadFBefore s2Step304HeadFAfter s2Step304HeadFvAfter
    s2Step304HeadFRow s2Step304HeadFOut 121 s2Step304HeadFFresh [(s2Step304HeadGvRow,168),(s2Step304HeadFvRow,168)] [s2Step304HeadGvFresh,s2Step304HeadFvFresh] [s2Step304HeadGvOut,s2Step304HeadFvOut]
    (growRow 768 s2Step304HeadFFresh) ((growRow 771 s2Step304HeadGvFresh ++ (growRow 770 s2Step304HeadFvFresh ++ []))) s2Step304HeadF_Incoming s2Step304HeadF_checked h2 s2Step304HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step304HeadGBefore s2Step304HeadGAfter s2Step304HeadFvAfter
    s2Step304HeadGRow s2Step304HeadGOut 121 s2Step304HeadGFresh [(s2Step304HeadFRow,121),(s2Step304HeadGvRow,168),(s2Step304HeadFvRow,168)] [s2Step304HeadFFresh,s2Step304HeadGvFresh,s2Step304HeadFvFresh] [s2Step304HeadFOut,s2Step304HeadGvOut,s2Step304HeadFvOut]
    (growRow 769 s2Step304HeadGFresh) ((growRow 768 s2Step304HeadFFresh ++ (growRow 771 s2Step304HeadGvFresh ++ (growRow 770 s2Step304HeadFvFresh ++ [])))) s2Step304HeadG_Incoming s2Step304HeadG_checked h1 s2Step304HeadG_Outgoing
  exact h0

private theorem s2Step304HeadBank_checked : compileHmrBankResizeLog .headroom s2Step304HeadGBefore ⟨s2Step304HeadFRow,s2Step304HeadGRow,s2Step304HeadFvRow,s2Step304HeadGvRow⟩ ⟨121,121,168,168⟩ [s2Step304HeadGFresh,s2Step304HeadFFresh,s2Step304HeadGvFresh,s2Step304HeadFvFresh]=
    some (s2Step304HeadFvAfter,⟨s2Step304HeadFOut,s2Step304HeadGOut,s2Step304HeadFvOut,s2Step304HeadGvOut⟩,(growRow 769 s2Step304HeadGFresh ++ (growRow 768 s2Step304HeadFFresh ++ (growRow 771 s2Step304HeadGvFresh ++ (growRow 770 s2Step304HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step304HeadBank_rows]
  rfl

private theorem s2Step304Front_checked : compileHmrSourceFrontLog s2Step304EntryFBefore s2Step304FrontBank 120 167 ⟨119,119,168,167⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step304FrontLog=some s2Step304FrontPlan := by
  have pairEq : s2Step304FrontPair=⟨s2Step304HeadFRow,s2Step304HeadGRow,s2Step304HeadFvRow,s2Step304HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step304FrontHead=⟨s2Step304ExitFRow,s2Step304ExitGRow,s2Step304ExitFvRow,s2Step304ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step304Add0A=s2Step304FrontHead.f.wires := by decide +kernel
  have gEq : s2Step304Add0B=s2Step304FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step304Add1A=s2Step304FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step304Add1B=s2Step304FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step304EntryFBefore s2Step304FrontBank 120 167 ⟨119,119,168,167⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step304FrontLog s2Step304FrontPlan
  · exact s2Step304Front_entry
  · exact s2Step304EntryBank_checked
  · exact s2Step304Front_sigma
  · rfl
  · exact s2Step304Front_branch
  · rfl
  · simpa only [s2Step304FrontPlan,pairEq] using s2Step304HeadBank_checked
  · simpa only [s2Step304FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step304F4_checked
  · exact s2Step304Counter_checked
  · rfl
  · simpa only [s2Step304FrontPlan,headEq] using s2Step304ExitBank_checked

private theorem s2Step304Complete_explicit_checked : compileHmrEarlyStepLog s2Step304EntryFBefore s2Step304FrontBank 120 167 ⟨119,119,168,167⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step304CompleteLog=some s2Step304CompletePlan := by
  let Q := s2Step304EarlyControlPlan
  have hq := s2Step304EarlyControl_plan_checked
  have fv1 : s2Step304CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step304CompleteOut.fv.payload[2]?.getD s2Step304CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step304CompleteOut.fv.payload[3]?.getD s2Step304CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step304CompleteOut.fv.payload[4]?.getD s2Step304CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step304EntryFBefore s2Step304EarlyControlArena s2Step304FrontBank 120 167 ⟨119,119,168,167⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step304CompleteLog s2Step304FrontPlan Q
    s2Step304Front_checked s2Step304Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step304Complete_owned s2Step304Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step304EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 811 s2Step304CompleteOut.fv.second (s2Step304CompleteOut.fv.payload[2]?.getD s2Step304CompleteOut.fv.sign) (s2Step304CompleteOut.fv.payload[3]?.getD s2Step304CompleteOut.fv.sign) (s2Step304CompleteOut.fv.payload[4]?.getD s2Step304CompleteOut.fv.sign) 819 55 s2Step304EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep304Arena : Arena := s2Step304EntryFBefore
def s2PrivateStep304Bank : WindowBank := s2Step304FrontBank
def s2PrivateStep304Spec : HmrSourceWalkStepLog := ⟨120,167,⟨119,119,168,167⟩,55,.early s2Step304CompleteLog⟩
def s2PrivateStep304Plan : HmrSourceStepPlan := .early s2Step304CompletePlan
theorem s2PrivateStep304_source : s2PrivateStep304Spec=s2ObservedLogs304[0] := rfl
theorem s2PrivateStep304_checked : compileHmrSourceStepLog s2PrivateStep304Arena s2PrivateStep304Bank
    s2PrivateStep304Spec.fgWidth s2PrivateStep304Spec.vWidth s2PrivateStep304Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 304 s2PrivateStep304Spec.need none s2PrivateStep304Spec.log=some s2PrivateStep304Plan := by
  change compileHmrSourceStepLog s2Step304EntryFBefore s2Step304FrontBank 120 167 ⟨119,119,168,167⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 304 55 none (.early s2Step304CompleteLog)=some (.early s2Step304CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 304<498)]
  rw [s2Step304Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
