import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep305
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

private def s2Step307CompleteMoves : List (Wire × Wire) := [(824,117)]

private def s2Step307EarlyControlLog : HmrEarlyControlLog := ⟨[824, 787, 793, 802, 806],[846],[830],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step307FrontLog : HmrFrontAllocationLog := ⟨⟨[[802], [], [], []],[[846], [806], [787], [793]],[[], [], [], []]⟩,[811],[799],[830],[800],[894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step307CompleteLog : HmrEarlyStepLog := ⟨s2Step307FrontLog,s2Step307CompleteMoves,s2Step307EarlyControlLog⟩

private def s2Step307ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628],768⟩

private def s2Step307ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step307ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116],769⟩

private def s2Step307ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step307FrontOut : WindowBank := ⟨s2Step307ExitFOut,s2Step307ExitGOut,s2Step307ExitFvOut,s2Step307ExitGvOut⟩

private def s2Step307CompleteOut : WindowBank := s2Step307FrontOut.repacked s2Step307CompleteMoves

private def s2Step307EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step307EarlyControlPositiveArena,[846],s2Step307EarlyControlEqualityArena,[830],⟨⟨811,false⟩,[⟨⟨846,false⟩,830⟩]⟩⟩

private def s2Step307EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,824⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,793⟩,⟨⟨776,false⟩,802⟩,⟨⟨777,false⟩,806⟩]⟩

private def s2Step307EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step307EarlyControlZeroArena,s2Step307EarlyControlZeroPlan,s2Step307EarlyControlClassPlan,s2Step307EarlyControlFlagArena,s2Step307EarlyControlFittedArena,s2Step307EarlyControlHistoryArena,s2Step307EarlyControlSigmaArena,s2Step307EarlyControlOutputArena,s2Step307EarlyControlLog⟩

private def s2Step307CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step307Counter_bounded : s2Step307CounterWork.toFinset⊆arenaWires := by norm_num [s2Step307CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step307HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307CounterDuring : Arena := ⟨s2Step307HeadFvAfter.live∪s2Step307CounterWork.toFinset,Finset.union_subset s2Step307HeadFvAfter.bounded s2Step307Counter_bounded⟩

private def s2Step307EntryFFresh : List Wire := [802]

private def s2Step307EntryFvFresh : List Wire := []

private def s2Step307EntryGFresh : List Wire := []

private def s2Step307EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EntryGvAfter : Arena := s2Step307EntryFAfter

private def s2Step307EntryGvFresh : List Wire := []

private def s2Step307ExitFExtra : List Wire := [802, 806]

private def s2Step307ExitFvExtra : List Wire := [793]

private def s2Step307ExitGExtra : List Wire := [117, 846]

private def s2Step307ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307ExitGvExtra : List Wire := [787]

private def s2Step307Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step307Add0_bounded : s2Step307Add0Work.toFinset⊆arenaWires := by
  have h : s2Step307Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step307Add0During : Arena := ⟨s2Step307Add0Arena.live∪s2Step307Add0Work.toFinset,Finset.union_subset s2Step307Add0Arena.bounded s2Step307Add0_bounded⟩

private def s2Step307Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step307Add1_bounded : s2Step307Add1Work.toFinset⊆arenaWires := by
  have h : s2Step307Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step307Add1During : Arena := ⟨s2Step307Add1Arena.live∪s2Step307Add1Work.toFinset,Finset.union_subset s2Step307Add1Arena.bounded s2Step307Add1_bounded⟩

private def s2Step307F4FlagArena : Arena := ⟨s2Step307HeadFvAfter.live∪{830},Finset.union_subset s2Step307HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step307F4Plan : HmrHybridF4Plan := ⟨s2Step307F4FlagArena,[830],s2Step307Add0Arena,[800],s2Step307Add0During,s2Step307Add0Work,s2Step307Add1During,s2Step307Add1Work⟩

private def s2Step307HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802, 806],768⟩

private def s2Step307HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 793],770⟩

private def s2Step307HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩

private def s2Step307HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 787],771⟩

private def s2Step307FrontHead : WindowBank := ⟨s2Step307HeadFOut,s2Step307HeadGOut,s2Step307HeadFvOut,s2Step307HeadGvOut⟩

private def s2Step307EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802],768⟩

private def s2Step307EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step307EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step307EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step307FrontPair : WindowBank := ⟨s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut⟩

private def s2Step307FrontSigmaArena : Arena := ⟨s2Step307EntryGvAfter.live∪{811},Finset.union_subset s2Step307EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step307HeadFFresh : List Wire := [806]

private def s2Step307HeadFvFresh : List Wire := [793]

private def s2Step307HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307HeadGFresh : List Wire := [846]

private def s2Step307HeadGvFresh : List Wire := [787]

private def s2Step307FrontPlan : HmrSourceFront := ⟨s2Step307EntryGvAfter,s2Step307FrontPair,(growRow 768 s2Step307EntryFFresh ++ (growRow 769 s2Step307EntryGFresh ++ (growRow 770 s2Step307EntryFvFresh ++ (growRow 771 s2Step307EntryGvFresh ++ [])))),s2Step307FrontSigmaArena,[811],s2Step307HeadGBefore,[799],
  s2Step307HeadFvAfter,s2Step307FrontHead,(growRow 769 s2Step307HeadGFresh ++ (growRow 768 s2Step307HeadFFresh ++ (growRow 771 s2Step307HeadGvFresh ++ (growRow 770 s2Step307HeadFvFresh ++ [])))),s2Step307F4Plan,s2Step307CounterDuring,s2Step307CounterWork,s2Step307ExitGvAfter,s2Step307FrontOut,(shrinkRow 769 s2Step307ExitGExtra ++ (shrinkRow 768 s2Step307ExitFExtra ++ (shrinkRow 770 s2Step307ExitFvExtra ++ (shrinkRow 771 s2Step307ExitGvExtra ++ []))))⟩

private def s2Step307CompletePlan : HmrEarlyStepPlan := ⟨s2Step307FrontPlan,s2Step307EarlyControlArena,s2Step307EarlyControlPlan,s2Step307CompleteMoves⟩

private theorem s2Step307Complete_apart : List.Disjoint (s2Step307CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step307CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step307Complete_owned : (s2Step307CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step307CompleteMoveArena : Arena := ⟨s2Step307ExitGvAfter.live∪{117},Finset.union_subset s2Step307ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step307Complete_repack : s2Step307ExitGvAfter.checkRepack s2Step307CompleteMoves=some s2Step307EarlyControlArena := by
  have owned : 824∈s2Step307ExitGvAfter.live := by norm_num [s2Step307ExitGvAfter,arenaWires]
  have reserve : s2Step307ExitGvAfter.reserve {117}=some s2Step307CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step307ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step307CompleteMoveArena.retireSet {824}=s2Step307EarlyControlArena := by
    unfold Arena.retireSet s2Step307EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step307CompleteMoveArena,s2Step307ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step307CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step307CompleteMoveArena.retireSet {824}).checkRepack []=some s2Step307EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step307EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step307EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_branch : compileHmrBranchRetirement s2Step307EarlyControlSigmaArena 799=some s2Step307EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step307EarlyControl_branchOwned
  · ext q
    simp [s2Step307EarlyControlOutputArena,s2Step307EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step307EarlyControl_classEqualityBorrow : s2Step307EarlyControlPositiveArena.checkBorrow (([811, 846] : List Wire).length-1) s2Step307EarlyControlLog.classWork=some s2Step307EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step307EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step307EarlyControlEqualityArena,s2Step307EarlyControlPositiveArena,s2Step307EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step307EarlyControl_classEqualityOwned : ([811, 846] : List Wire).toFinset⊆s2Step307EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_classEquality : compileHmrEqualityLog s2Step307EarlyControlPositiveArena [811, 846] 0 s2Step307EarlyControlLog.classWork=some (s2Step307EarlyControlEqualityArena,s2Step307EarlyControlLog.classWork,s2Step307EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step307EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step307EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step307EarlyControl_classOwned : ([777, 806, 811] : List Wire).toFinset⊆s2Step307EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_positiveBorrow : s2Step307EarlyControlZeroArena.checkBorrow (1) s2Step307EarlyControlLog.positiveWork=some s2Step307EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step307EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step307EarlyControlPositiveArena,s2Step307EarlyControlZeroArena,s2Step307EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step307EarlyControl_class : compileHmrSourceClassLog s2Step307EarlyControlZeroArena false 777 s2Step307EarlyControlZeroPlan.top 0 811 s2Step307EarlyControlLog.positiveWork s2Step307EarlyControlLog.classWork=some s2Step307EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step307EarlyControlClassPlan s2Step307EarlyControlZeroArena false 777 s2Step307EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step307EarlyControl_classOwned
  · exact s2Step307EarlyControl_positiveBorrow
  · exact s2Step307EarlyControl_classEquality

private theorem s2Step307EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_fitBorrow : s2Step307EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step307EarlyControlLog.recordFresh=some s2Step307EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step307EarlyControlFlagArena (fun q => (0≤q ∧ q<908) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step307EarlyControlFittedArena,s2Step307EarlyControlFlagArena,s2Step307EarlyControlLog,arenaWires]

private theorem s2Step307EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step307EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlFlagArena (fun q => (0≤q ∧ q<908) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_fit : compileHmrRecordGrowLog s2Step307EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step307EarlyControlLog.recordFresh=some s2Step307EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step307EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step307EarlyControl_fitBorrow

private theorem s2Step307EarlyControl_flagsBorrow : s2Step307EarlyControlEqualityArena.checkBorrow (6) s2Step307EarlyControlLog.flagWork=some s2Step307EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step307EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step307EarlyControlFlagArena,s2Step307EarlyControlEqualityArena,s2Step307EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step307EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step307EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_flags : compileHmrFlagsLog s2Step307EarlyControlClassPlan.equalityArena s2Step307EarlyControlClassPlan.equality.top 253 252 251 s2Step307EarlyControlLog.flagWork=some s2Step307EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step307EarlyControl_flagsOwned⟩
  · exact s2Step307EarlyControl_flagsBorrow

private theorem s2Step307EarlyControl_historyBorrow : s2Step307EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step307EarlyControlLog.recordFresh=some s2Step307EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step307EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step307EarlyControlHistoryArena,s2Step307EarlyControlArena,s2Step307EarlyControlLog,arenaWires]

private theorem s2Step307EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_history : compileHmrRecordGrowLog s2Step307EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step307EarlyControlLog.recordFresh=some s2Step307EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step307EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step307EarlyControl_historyBorrow

private theorem s2Step307EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step307EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step307EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_sigmaRelease : s2Step307EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step307EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step307EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step307EarlyControlSigmaArena,s2Step307EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step307EarlyControl_sigma : compileHmrSigmaDropLog s2Step307EarlyControlHistoryArena false 0 0 254 811 []=some s2Step307EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step307EarlyControl_sigmaOwned⟩
  · exact s2Step307EarlyControl_sigmaRelease

private theorem s2Step307EarlyControl_zeroBorrow : s2Step307EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step307EarlyControlLog.zeroWork=some s2Step307EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step307EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step307EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step307EarlyControlZeroArena,s2Step307EarlyControlArena,s2Step307EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step307EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step307EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step307EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EarlyControl_zero : compileHmrEqualityLog s2Step307EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step307EarlyControlLog.zeroWork=some (s2Step307EarlyControlZeroArena,s2Step307EarlyControlLog.zeroWork,s2Step307EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step307EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step307EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step307EarlyControl_logged : s2Step307EarlyControlPlan.Logged s2Step307EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 799 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step307EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step307EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step307EarlyControl_zero
  · exact s2Step307EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step307EarlyControl_flags
  · exact s2Step307EarlyControl_fit
  · exact s2Step307EarlyControl_history
  · exact s2Step307EarlyControl_sigma
  · exact s2Step307EarlyControl_branch

private theorem s2Step307EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step307EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 799 56 s2Step307EarlyControlLog=some s2Step307EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step307EarlyControlPlan s2Step307EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 799 56 s2Step307EarlyControl_logged

private def s2Step307EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628],768⟩

private def s2Step307EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step307EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step307EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step307FrontBank : WindowBank := ⟨s2Step307EntryFRow,s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow⟩

private def s2Step307Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802, 806, 768]

private def s2Step307Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846, 769]

private def s2Step307Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 793, 770]

private def s2Step307Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 787, 771]

private theorem s2Step307Counter_apart : Disjoint s2Step307HeadFvAfter.live s2Step307CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step307HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307Counter_borrowed : s2Step307HeadFvAfter.checkBorrow 4 s2Step307CounterWork=some s2Step307CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step307HeadFvAfter s2Step307CounterDuring s2Step307CounterWork.toFinset s2Step307Counter_bounded s2Step307Counter_apart rfl

private theorem s2Step307Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step307HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step307HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307Counter_checked : compileHmrCounterStepLog s2Step307HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step307CounterWork=some s2Step307CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step307HeadFvAfter.live := fun q hq => s2Step307Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step307Counter_borrowed

private theorem s2Step307EntryBank_incomingDistinct : ([s2Step307EntryFRow,s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307EntryF_Incoming : rowsOwned s2Step307EntryFBefore [s2Step307EntryFRow,s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307EntryFRow,s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow] 0 s2Step307EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307EntryBank_outgoingOwned : rowsOwned s2Step307EntryGvAfter [s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step307EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307EntryF_Outgoing : rowsOwned s2Step307EntryGvAfter [s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut] :=
  hmrRows_owned_drop s2Step307EntryGvAfter [s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut] 0 s2Step307EntryBank_outgoingOwned

private theorem s2Step307EntryF_distinct : (s2Step307EntryFRow.sign::s2Step307EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307EntryF_owned : (s2Step307EntryFRow.sign::s2Step307EntryFRow.payload).toFinset⊆s2Step307EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EntryF_reserved : s2Step307EntryFBefore.reserve s2Step307EntryFFresh.toFinset=some s2Step307EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step307EntryFFresh,arenaWires]
  · norm_num [s2Step307EntryFBefore,s2Step307EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step307EntryFAfter,s2Step307EntryFBefore,s2Step307EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step307EntryF_checked : planRowResizeLog s2Step307EntryFBefore s2Step307EntryFRow 118 s2Step307EntryFFresh=
    some (s2Step307EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802],768⟩,growRow 768 s2Step307EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step307EntryFBefore s2Step307EntryFAfter s2Step307EntryFRow 118 s2Step307EntryFFresh
    s2Step307EntryF_distinct s2Step307EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step307EntryF_reserved
  have rowEq : WindowRow.mk (s2Step307EntryFRow.payload++s2Step307EntryFFresh) s2Step307EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step307EntryFvAfter : Arena := s2Step307EntryFAfter

private def s2Step307EntryFvBefore : Arena := s2Step307EntryFAfter

private theorem s2Step307EntryFv_Incoming : rowsOwned s2Step307EntryFvBefore [s2Step307EntryFvRow,s2Step307EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307EntryFRow,s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow] 2 s2Step307EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307EntryFv_Outgoing : rowsOwned s2Step307EntryGvAfter [s2Step307EntryFvOut,s2Step307EntryGvOut] :=
  hmrRows_owned_drop s2Step307EntryGvAfter [s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut] 2 s2Step307EntryBank_outgoingOwned

private theorem s2Step307EntryFv_distinct : (s2Step307EntryFvRow.sign::s2Step307EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307EntryFv_owned : (s2Step307EntryFvRow.sign::s2Step307EntryFvRow.payload).toFinset⊆s2Step307EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EntryFv_reserved : s2Step307EntryFvBefore.reserve s2Step307EntryFvFresh.toFinset=some s2Step307EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step307EntryFvFresh,arenaWires]
  · norm_num [s2Step307EntryFvBefore,s2Step307EntryFAfter,s2Step307EntryFvFresh,arenaWires]
  · simp only [s2Step307EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step307EntryFv_checked : planRowResizeLog s2Step307EntryFvBefore s2Step307EntryFvRow 169 s2Step307EntryFvFresh=
    some (s2Step307EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩,growRow 770 s2Step307EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step307EntryFvBefore s2Step307EntryFvAfter s2Step307EntryFvRow 169 s2Step307EntryFvFresh
    s2Step307EntryFv_distinct s2Step307EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step307EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step307EntryFvRow.payload++s2Step307EntryFvFresh) s2Step307EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step307EntryGAfter : Arena := s2Step307EntryFAfter

private def s2Step307EntryGBefore : Arena := s2Step307EntryFAfter

private theorem s2Step307EntryG_Incoming : rowsOwned s2Step307EntryGBefore [s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307EntryFRow,s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow] 1 s2Step307EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307EntryG_Outgoing : rowsOwned s2Step307EntryGvAfter [s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut] :=
  hmrRows_owned_drop s2Step307EntryGvAfter [s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut] 1 s2Step307EntryBank_outgoingOwned

private theorem s2Step307EntryG_distinct : (s2Step307EntryGRow.sign::s2Step307EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307EntryG_owned : (s2Step307EntryGRow.sign::s2Step307EntryGRow.payload).toFinset⊆s2Step307EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EntryG_reserved : s2Step307EntryGBefore.reserve s2Step307EntryGFresh.toFinset=some s2Step307EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step307EntryGFresh,arenaWires]
  · norm_num [s2Step307EntryGBefore,s2Step307EntryFAfter,s2Step307EntryGFresh,arenaWires]
  · simp only [s2Step307EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step307EntryG_checked : planRowResizeLog s2Step307EntryGBefore s2Step307EntryGRow 118 s2Step307EntryGFresh=
    some (s2Step307EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩,growRow 769 s2Step307EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step307EntryGBefore s2Step307EntryGAfter s2Step307EntryGRow 118 s2Step307EntryGFresh
    s2Step307EntryG_distinct s2Step307EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step307EntryG_reserved
  have rowEq : WindowRow.mk (s2Step307EntryGRow.payload++s2Step307EntryGFresh) s2Step307EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step307EntryGvBefore : Arena := s2Step307EntryFAfter

private theorem s2Step307EntryGv_Incoming : rowsOwned s2Step307EntryGvBefore [s2Step307EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307EntryFRow,s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow] 3 s2Step307EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307EntryGv_Outgoing : rowsOwned s2Step307EntryGvAfter [s2Step307EntryGvOut] :=
  hmrRows_owned_drop s2Step307EntryGvAfter [s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut] 3 s2Step307EntryBank_outgoingOwned

private theorem s2Step307EntryGv_distinct : (s2Step307EntryGvRow.sign::s2Step307EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307EntryGv_owned : (s2Step307EntryGvRow.sign::s2Step307EntryGvRow.payload).toFinset⊆s2Step307EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307EntryGv_reserved : s2Step307EntryGvBefore.reserve s2Step307EntryGvFresh.toFinset=some s2Step307EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step307EntryGvFresh,arenaWires]
  · norm_num [s2Step307EntryGvBefore,s2Step307EntryFAfter,s2Step307EntryGvFresh,arenaWires]
  · simp only [s2Step307EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step307EntryGv_checked : planRowResizeLog s2Step307EntryGvBefore s2Step307EntryGvRow 169 s2Step307EntryGvFresh=
    some (s2Step307EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩,growRow 771 s2Step307EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step307EntryGvBefore s2Step307EntryGvAfter s2Step307EntryGvRow 169 s2Step307EntryGvFresh
    s2Step307EntryGv_distinct s2Step307EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step307EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step307EntryGvRow.payload++s2Step307EntryGvFresh) s2Step307EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step307EntryBank_rows : planWindowRowsLog s2Step307EntryFBefore [(s2Step307EntryFRow,118),(s2Step307EntryGRow,118),(s2Step307EntryFvRow,169),(s2Step307EntryGvRow,169)] [s2Step307EntryFFresh,s2Step307EntryGFresh,s2Step307EntryFvFresh,s2Step307EntryGvFresh]=
    some (s2Step307EntryGvAfter,[s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut],(growRow 768 s2Step307EntryFFresh ++ (growRow 769 s2Step307EntryGFresh ++ (growRow 770 s2Step307EntryFvFresh ++ (growRow 771 s2Step307EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step307EntryGvAfter [] []=some (s2Step307EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step307EntryGvBefore s2Step307EntryGvAfter s2Step307EntryGvAfter
    s2Step307EntryGvRow s2Step307EntryGvOut 169 s2Step307EntryGvFresh [] [] []
    (growRow 771 s2Step307EntryGvFresh) ([]) s2Step307EntryGv_Incoming s2Step307EntryGv_checked h4 s2Step307EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step307EntryFvBefore s2Step307EntryFvAfter s2Step307EntryGvAfter
    s2Step307EntryFvRow s2Step307EntryFvOut 169 s2Step307EntryFvFresh [(s2Step307EntryGvRow,169)] [s2Step307EntryGvFresh] [s2Step307EntryGvOut]
    (growRow 770 s2Step307EntryFvFresh) ((growRow 771 s2Step307EntryGvFresh ++ [])) s2Step307EntryFv_Incoming s2Step307EntryFv_checked h3 s2Step307EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step307EntryGBefore s2Step307EntryGAfter s2Step307EntryGvAfter
    s2Step307EntryGRow s2Step307EntryGOut 118 s2Step307EntryGFresh [(s2Step307EntryFvRow,169),(s2Step307EntryGvRow,169)] [s2Step307EntryFvFresh,s2Step307EntryGvFresh] [s2Step307EntryFvOut,s2Step307EntryGvOut]
    (growRow 769 s2Step307EntryGFresh) ((growRow 770 s2Step307EntryFvFresh ++ (growRow 771 s2Step307EntryGvFresh ++ []))) s2Step307EntryG_Incoming s2Step307EntryG_checked h2 s2Step307EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step307EntryFBefore s2Step307EntryFAfter s2Step307EntryGvAfter
    s2Step307EntryFRow s2Step307EntryFOut 118 s2Step307EntryFFresh [(s2Step307EntryGRow,118),(s2Step307EntryFvRow,169),(s2Step307EntryGvRow,169)] [s2Step307EntryGFresh,s2Step307EntryFvFresh,s2Step307EntryGvFresh] [s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut]
    (growRow 768 s2Step307EntryFFresh) ((growRow 769 s2Step307EntryGFresh ++ (growRow 770 s2Step307EntryFvFresh ++ (growRow 771 s2Step307EntryGvFresh ++ [])))) s2Step307EntryF_Incoming s2Step307EntryF_checked h1 s2Step307EntryF_Outgoing
  exact h0

private theorem s2Step307EntryBank_checked : compileHmrBankResizeLog .entry s2Step307EntryFBefore ⟨s2Step307EntryFRow,s2Step307EntryGRow,s2Step307EntryFvRow,s2Step307EntryGvRow⟩ ⟨118,118,169,169⟩ [s2Step307EntryFFresh,s2Step307EntryGFresh,s2Step307EntryFvFresh,s2Step307EntryGvFresh]=
    some (s2Step307EntryGvAfter,⟨s2Step307EntryFOut,s2Step307EntryGOut,s2Step307EntryFvOut,s2Step307EntryGvOut⟩,(growRow 768 s2Step307EntryFFresh ++ (growRow 769 s2Step307EntryGFresh ++ (growRow 770 s2Step307EntryFvFresh ++ (growRow 771 s2Step307EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step307EntryBank_rows]
  rfl

private def s2Step307ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307ExitFBefore : Arena := s2Step307ExitGAfter

private def s2Step307ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802, 806],768⟩

private def s2Step307ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 793],770⟩

private def s2Step307ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩

private def s2Step307ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 787],771⟩

private theorem s2Step307ExitBank_incomingDistinct : ([s2Step307ExitGRow,s2Step307ExitFRow,s2Step307ExitFvRow,s2Step307ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307ExitF_Incoming : rowsOwned s2Step307ExitFBefore [s2Step307ExitFRow,s2Step307ExitFvRow,s2Step307ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307ExitGRow,s2Step307ExitFRow,s2Step307ExitFvRow,s2Step307ExitGvRow] 1 s2Step307ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307ExitFBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307ExitBank_outgoingOwned : rowsOwned s2Step307ExitGvAfter [s2Step307ExitGOut,s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step307ExitGvAfter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307ExitF_Outgoing : rowsOwned s2Step307ExitGvAfter [s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut] :=
  hmrRows_owned_drop s2Step307ExitGvAfter [s2Step307ExitGOut,s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut] 1 s2Step307ExitBank_outgoingOwned

private theorem s2Step307ExitF_distinct : (s2Step307ExitFRow.sign::s2Step307ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307ExitF_owned : (s2Step307ExitFRow.sign::s2Step307ExitFRow.payload).toFinset⊆s2Step307ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307ExitFBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307ExitF_retired : s2Step307ExitFBefore.retireSet s2Step307ExitFExtra.toFinset=s2Step307ExitFAfter := by
  unfold Arena.retireSet s2Step307ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step307ExitFBefore,s2Step307ExitGAfter,s2Step307ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step307ExitF_checked : planRowResizeLog s2Step307ExitFBefore s2Step307ExitFRow 117 []=
    some (s2Step307ExitFAfter,s2Step307ExitFOut,shrinkRow 768 s2Step307ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step307ExitFBefore s2Step307ExitFRow 117 s2Step307ExitF_distinct s2Step307ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step307ExitFRow.payload.take 117) s2Step307ExitFRow.sign=s2Step307ExitFOut := by decide +kernel
  have hi : s2Step307ExitFRow.payload.drop 117=s2Step307ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step307ExitF_retired] at result
  exact result

private def s2Step307ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307ExitFvBefore : Arena := s2Step307ExitFAfter

private theorem s2Step307ExitFv_Incoming : rowsOwned s2Step307ExitFvBefore [s2Step307ExitFvRow,s2Step307ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307ExitGRow,s2Step307ExitFRow,s2Step307ExitFvRow,s2Step307ExitGvRow] 2 s2Step307ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307ExitFvBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307ExitFv_Outgoing : rowsOwned s2Step307ExitGvAfter [s2Step307ExitFvOut,s2Step307ExitGvOut] :=
  hmrRows_owned_drop s2Step307ExitGvAfter [s2Step307ExitGOut,s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut] 2 s2Step307ExitBank_outgoingOwned

private theorem s2Step307ExitFv_distinct : (s2Step307ExitFvRow.sign::s2Step307ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307ExitFv_owned : (s2Step307ExitFvRow.sign::s2Step307ExitFvRow.payload).toFinset⊆s2Step307ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307ExitFvBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307ExitFv_retired : s2Step307ExitFvBefore.retireSet s2Step307ExitFvExtra.toFinset=s2Step307ExitFvAfter := by
  unfold Arena.retireSet s2Step307ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step307ExitFvBefore,s2Step307ExitFAfter,s2Step307ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step307ExitFv_checked : planRowResizeLog s2Step307ExitFvBefore s2Step307ExitFvRow 169 []=
    some (s2Step307ExitFvAfter,s2Step307ExitFvOut,shrinkRow 770 s2Step307ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step307ExitFvBefore s2Step307ExitFvRow 169 s2Step307ExitFv_distinct s2Step307ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step307ExitFvRow.payload.take 169) s2Step307ExitFvRow.sign=s2Step307ExitFvOut := by decide +kernel
  have hi : s2Step307ExitFvRow.payload.drop 169=s2Step307ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step307ExitFv_retired] at result
  exact result

private def s2Step307ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step307ExitG_Incoming : rowsOwned s2Step307ExitGBefore [s2Step307ExitGRow,s2Step307ExitFRow,s2Step307ExitFvRow,s2Step307ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307ExitGRow,s2Step307ExitFRow,s2Step307ExitFvRow,s2Step307ExitGvRow] 0 s2Step307ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307ExitG_Outgoing : rowsOwned s2Step307ExitGvAfter [s2Step307ExitGOut,s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut] :=
  hmrRows_owned_drop s2Step307ExitGvAfter [s2Step307ExitGOut,s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut] 0 s2Step307ExitBank_outgoingOwned

private theorem s2Step307ExitG_distinct : (s2Step307ExitGRow.sign::s2Step307ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307ExitG_owned : (s2Step307ExitGRow.sign::s2Step307ExitGRow.payload).toFinset⊆s2Step307ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307ExitG_retired : s2Step307ExitGBefore.retireSet s2Step307ExitGExtra.toFinset=s2Step307ExitGAfter := by
  unfold Arena.retireSet s2Step307ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step307ExitGBefore,s2Step307ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step307ExitG_checked : planRowResizeLog s2Step307ExitGBefore s2Step307ExitGRow 117 []=
    some (s2Step307ExitGAfter,s2Step307ExitGOut,shrinkRow 769 s2Step307ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step307ExitGBefore s2Step307ExitGRow 117 s2Step307ExitG_distinct s2Step307ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step307ExitGRow.payload.take 117) s2Step307ExitGRow.sign=s2Step307ExitGOut := by decide +kernel
  have hi : s2Step307ExitGRow.payload.drop 117=s2Step307ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step307ExitG_retired] at result
  exact result

private def s2Step307ExitGvBefore : Arena := s2Step307ExitFvAfter

private theorem s2Step307ExitGv_Incoming : rowsOwned s2Step307ExitGvBefore [s2Step307ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307ExitGRow,s2Step307ExitFRow,s2Step307ExitFvRow,s2Step307ExitGvRow] 3 s2Step307ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307ExitGvBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307ExitGv_Outgoing : rowsOwned s2Step307ExitGvAfter [s2Step307ExitGvOut] :=
  hmrRows_owned_drop s2Step307ExitGvAfter [s2Step307ExitGOut,s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut] 3 s2Step307ExitBank_outgoingOwned

private theorem s2Step307ExitGv_distinct : (s2Step307ExitGvRow.sign::s2Step307ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307ExitGv_owned : (s2Step307ExitGvRow.sign::s2Step307ExitGvRow.payload).toFinset⊆s2Step307ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307ExitGvBefore (fun q => (0≤q ∧ q<117) ∨ (118≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307ExitGv_retired : s2Step307ExitGvBefore.retireSet s2Step307ExitGvExtra.toFinset=s2Step307ExitGvAfter := by
  unfold Arena.retireSet s2Step307ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step307ExitGvBefore,s2Step307ExitFvAfter,s2Step307ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step307ExitGv_checked : planRowResizeLog s2Step307ExitGvBefore s2Step307ExitGvRow 169 []=
    some (s2Step307ExitGvAfter,s2Step307ExitGvOut,shrinkRow 771 s2Step307ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step307ExitGvBefore s2Step307ExitGvRow 169 s2Step307ExitGv_distinct s2Step307ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step307ExitGvRow.payload.take 169) s2Step307ExitGvRow.sign=s2Step307ExitGvOut := by decide +kernel
  have hi : s2Step307ExitGvRow.payload.drop 169=s2Step307ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step307ExitGv_retired] at result
  exact result

private theorem s2Step307ExitBank_rows : planWindowRowsLog s2Step307ExitGBefore [(s2Step307ExitGRow,117),(s2Step307ExitFRow,117),(s2Step307ExitFvRow,169),(s2Step307ExitGvRow,169)] [[],[],[],[]]=
    some (s2Step307ExitGvAfter,[s2Step307ExitGOut,s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut],(shrinkRow 769 s2Step307ExitGExtra ++ (shrinkRow 768 s2Step307ExitFExtra ++ (shrinkRow 770 s2Step307ExitFvExtra ++ (shrinkRow 771 s2Step307ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step307ExitGvAfter [] []=some (s2Step307ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step307ExitGvBefore s2Step307ExitGvAfter s2Step307ExitGvAfter
    s2Step307ExitGvRow s2Step307ExitGvOut 169 [] [] [] []
    (shrinkRow 771 s2Step307ExitGvExtra) ([]) s2Step307ExitGv_Incoming s2Step307ExitGv_checked h4 s2Step307ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step307ExitFvBefore s2Step307ExitFvAfter s2Step307ExitGvAfter
    s2Step307ExitFvRow s2Step307ExitFvOut 169 [] [(s2Step307ExitGvRow,169)] [[]] [s2Step307ExitGvOut]
    (shrinkRow 770 s2Step307ExitFvExtra) ((shrinkRow 771 s2Step307ExitGvExtra ++ [])) s2Step307ExitFv_Incoming s2Step307ExitFv_checked h3 s2Step307ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step307ExitFBefore s2Step307ExitFAfter s2Step307ExitGvAfter
    s2Step307ExitFRow s2Step307ExitFOut 117 [] [(s2Step307ExitFvRow,169),(s2Step307ExitGvRow,169)] [[],[]] [s2Step307ExitFvOut,s2Step307ExitGvOut]
    (shrinkRow 768 s2Step307ExitFExtra) ((shrinkRow 770 s2Step307ExitFvExtra ++ (shrinkRow 771 s2Step307ExitGvExtra ++ []))) s2Step307ExitF_Incoming s2Step307ExitF_checked h2 s2Step307ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step307ExitGBefore s2Step307ExitGAfter s2Step307ExitGvAfter
    s2Step307ExitGRow s2Step307ExitGOut 117 [] [(s2Step307ExitFRow,117),(s2Step307ExitFvRow,169),(s2Step307ExitGvRow,169)] [[],[],[]] [s2Step307ExitFOut,s2Step307ExitFvOut,s2Step307ExitGvOut]
    (shrinkRow 769 s2Step307ExitGExtra) ((shrinkRow 768 s2Step307ExitFExtra ++ (shrinkRow 770 s2Step307ExitFvExtra ++ (shrinkRow 771 s2Step307ExitGvExtra ++ [])))) s2Step307ExitG_Incoming s2Step307ExitG_checked h1 s2Step307ExitG_Outgoing
  exact h0

private theorem s2Step307ExitBank_checked : compileHmrBankResizeLog .exit s2Step307ExitGBefore ⟨s2Step307ExitFRow,s2Step307ExitGRow,s2Step307ExitFvRow,s2Step307ExitGvRow⟩ ⟨117,117,169,169⟩ [[],[],[],[]]=
    some (s2Step307ExitGvAfter,⟨s2Step307ExitFOut,s2Step307ExitGOut,s2Step307ExitFvOut,s2Step307ExitGvOut⟩,(shrinkRow 769 s2Step307ExitGExtra ++ (shrinkRow 768 s2Step307ExitFExtra ++ (shrinkRow 770 s2Step307ExitFvExtra ++ (shrinkRow 771 s2Step307ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step307ExitBank_rows]
  rfl

private theorem s2Step307Add0_apart : Disjoint s2Step307Add0Arena.live s2Step307Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step307Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307Add0_card : s2Step307Add0Arena.live.card=904 := by
  decide +kernel

private theorem s2Step307Add0_borrowed : s2Step307Add0Arena.checkBorrow (hmrHybridCount s2Step307Add0Arena s2Step307Add0B.length) s2Step307Add0Work=some s2Step307Add0During := by
  have len : s2Step307Add0Work.length=hmrHybridCount s2Step307Add0Arena s2Step307Add0B.length := by
    rw [hmrHybridCount,s2Step307Add0_card]
    decide +kernel
  have nd : s2Step307Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step307Add0Arena s2Step307Add0During s2Step307Add0Work.toFinset s2Step307Add0_bounded s2Step307Add0_apart rfl

private theorem s2Step307Add0_distinct : (830::799::800::(s2Step307Add0A++s2Step307Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307Add0_owned : (830::799::800::(s2Step307Add0A++s2Step307Add0B)).toFinset⊆s2Step307Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step307Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307Add0_checked : compileHmrHybridCinLog s2Step307Add0Arena 799 830 800 s2Step307Add0A s2Step307Add0B s2Step307Add0Work=some s2Step307Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step307Add0Arena s2Step307Add0During 799 830 800 s2Step307Add0A s2Step307Add0B s2Step307Add0Work
    (by decide +kernel) (by decide +kernel) s2Step307Add0_distinct
    (fun q hq => s2Step307Add0_owned (List.mem_toFinset.mpr hq)) s2Step307Add0_borrowed

private theorem s2Step307Add1_apart : Disjoint s2Step307Add1Arena.live s2Step307Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step307Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307Add1_card : s2Step307Add1Arena.live.card=904 := by
  decide +kernel

private theorem s2Step307Add1_borrowed : s2Step307Add1Arena.checkBorrow (hmrHybridCount s2Step307Add1Arena s2Step307Add1B.length) s2Step307Add1Work=some s2Step307Add1During := by
  have len : s2Step307Add1Work.length=hmrHybridCount s2Step307Add1Arena s2Step307Add1B.length := by
    rw [hmrHybridCount,s2Step307Add1_card]
    decide +kernel
  have nd : s2Step307Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step307Add1Arena s2Step307Add1During s2Step307Add1Work.toFinset s2Step307Add1_bounded s2Step307Add1_apart rfl

private theorem s2Step307Add1_distinct : (830::799::800::(s2Step307Add1A++s2Step307Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307Add1_owned : (830::799::800::(s2Step307Add1A++s2Step307Add1B)).toFinset⊆s2Step307Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step307Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307Add1_checked : compileHmrHybridCinLog s2Step307Add1Arena 799 830 800 s2Step307Add1A s2Step307Add1B s2Step307Add1Work=some s2Step307Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step307Add1Arena s2Step307Add1During 799 830 800 s2Step307Add1A s2Step307Add1B s2Step307Add1Work
    (by decide +kernel) (by decide +kernel) s2Step307Add1_distinct
    (fun q hq => s2Step307Add1_owned (List.mem_toFinset.mpr hq)) s2Step307Add1_borrowed

private theorem s2Step307F4_apart : Disjoint (s2Step307Add0A++s2Step307Add0B).toFinset (s2Step307Add1A++s2Step307Add1B).toFinset := by
  have nd : ((s2Step307Add0A++s2Step307Add0B)++(s2Step307Add1A++s2Step307Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step307F4_carry : s2Step307F4FlagArena.checkBorrow 1 [800]=some s2Step307Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step307F4FlagArena,s2Step307HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step307F4FlagArena,s2Step307HeadFvAfter,s2Step307Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step307F4_distinct : (811::799::830::800::((s2Step307Add0A++s2Step307Add1A)++(s2Step307Add0B++s2Step307Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307F4_flag : s2Step307HeadFvAfter.checkBorrow 1 [830]=some s2Step307F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step307HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step307F4_owned : (811::799::((s2Step307Add0A++s2Step307Add1A)++(s2Step307Add0B++s2Step307Add1B))).toFinset⊆s2Step307HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step307HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307F4_checked : compileHmrHybridF4Log s2Step307HeadFvAfter 811 799 s2Step307Add0A s2Step307Add0B s2Step307Add1A s2Step307Add1B [830] [800] s2Step307Add0Work s2Step307Add1Work=some s2Step307F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step307HeadFvAfter s2Step307F4FlagArena s2Step307Add0Arena s2Step307Add0During s2Step307Add1During 811 799
    s2Step307Add0A s2Step307Add0B s2Step307Add1A s2Step307Add1B [830] [800] s2Step307Add0Work s2Step307Add1Work
    (fun q hq => s2Step307F4_owned (List.mem_toFinset.mpr hq)) s2Step307F4_flag s2Step307F4_carry
    s2Step307F4_distinct s2Step307F4_apart s2Step307Add0_checked s2Step307Add1_checked

private theorem s2Step307Front_branch : s2Step307FrontSigmaArena.checkBorrow 1 [799]=some s2Step307HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step307FrontSigmaArena,s2Step307EntryGvAfter,s2Step307EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step307FrontSigmaArena,s2Step307EntryGvAfter,s2Step307EntryFAfter,s2Step307HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step307Front_entry : HmrFrontEntryValid s2Step307EntryFBefore s2Step307FrontBank 118 169 ⟨117,117,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step307FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step307EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step307EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step307FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step307Front_sigma : s2Step307EntryGvAfter.checkBorrow 1 [811]=some s2Step307FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step307EntryGvAfter,s2Step307EntryFAfter,arenaWires]
  · rfl

private def s2Step307HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307HeadFBefore : Arena := s2Step307HeadGAfter

private def s2Step307HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802],768⟩

private def s2Step307HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step307HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117],769⟩

private def s2Step307HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private theorem s2Step307HeadBank_incomingDistinct : ([s2Step307HeadGRow,s2Step307HeadFRow,s2Step307HeadGvRow,s2Step307HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307HeadF_Incoming : rowsOwned s2Step307HeadFBefore [s2Step307HeadFRow,s2Step307HeadGvRow,s2Step307HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307HeadGRow,s2Step307HeadFRow,s2Step307HeadGvRow,s2Step307HeadFvRow] 1 s2Step307HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307HeadBank_outgoingOwned : rowsOwned s2Step307HeadFvAfter [s2Step307HeadGOut,s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step307HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307HeadF_Outgoing : rowsOwned s2Step307HeadFvAfter [s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut] :=
  hmrRows_owned_drop s2Step307HeadFvAfter [s2Step307HeadGOut,s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut] 1 s2Step307HeadBank_outgoingOwned

private theorem s2Step307HeadF_distinct : (s2Step307HeadFRow.sign::s2Step307HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307HeadF_owned : (s2Step307HeadFRow.sign::s2Step307HeadFRow.payload).toFinset⊆s2Step307HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307HeadF_reserved : s2Step307HeadFBefore.reserve s2Step307HeadFFresh.toFinset=some s2Step307HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step307HeadFFresh,arenaWires]
  · norm_num [s2Step307HeadFBefore,s2Step307HeadGAfter,s2Step307HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step307HeadFAfter,s2Step307HeadFBefore,s2Step307HeadGAfter,s2Step307HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step307HeadF_checked : planRowResizeLog s2Step307HeadFBefore s2Step307HeadFRow 119 s2Step307HeadFFresh=
    some (s2Step307HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802, 806],768⟩,growRow 768 s2Step307HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step307HeadFBefore s2Step307HeadFAfter s2Step307HeadFRow 119 s2Step307HeadFFresh
    s2Step307HeadF_distinct s2Step307HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step307HeadF_reserved
  have rowEq : WindowRow.mk (s2Step307HeadFRow.payload++s2Step307HeadFFresh) s2Step307HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 802, 806],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step307HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step307HeadFvBefore : Arena := s2Step307HeadGvAfter

private theorem s2Step307HeadFv_Incoming : rowsOwned s2Step307HeadFvBefore [s2Step307HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307HeadGRow,s2Step307HeadFRow,s2Step307HeadGvRow,s2Step307HeadFvRow] 3 s2Step307HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307HeadFv_Outgoing : rowsOwned s2Step307HeadFvAfter [s2Step307HeadFvOut] :=
  hmrRows_owned_drop s2Step307HeadFvAfter [s2Step307HeadGOut,s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut] 3 s2Step307HeadBank_outgoingOwned

private theorem s2Step307HeadFv_distinct : (s2Step307HeadFvRow.sign::s2Step307HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307HeadFv_owned : (s2Step307HeadFvRow.sign::s2Step307HeadFvRow.payload).toFinset⊆s2Step307HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307HeadFv_reserved : s2Step307HeadFvBefore.reserve s2Step307HeadFvFresh.toFinset=some s2Step307HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step307HeadFvFresh,arenaWires]
  · norm_num [s2Step307HeadFvBefore,s2Step307HeadGvAfter,s2Step307HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step307HeadFvAfter,s2Step307HeadFvBefore,s2Step307HeadGvAfter,s2Step307HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step307HeadFv_checked : planRowResizeLog s2Step307HeadFvBefore s2Step307HeadFvRow 170 s2Step307HeadFvFresh=
    some (s2Step307HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 793],770⟩,growRow 770 s2Step307HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step307HeadFvBefore s2Step307HeadFvAfter s2Step307HeadFvRow 170 s2Step307HeadFvFresh
    s2Step307HeadFv_distinct s2Step307HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step307HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step307HeadFvRow.payload++s2Step307HeadFvFresh) s2Step307HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step307HeadG_Incoming : rowsOwned s2Step307HeadGBefore [s2Step307HeadGRow,s2Step307HeadFRow,s2Step307HeadGvRow,s2Step307HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307HeadGRow,s2Step307HeadFRow,s2Step307HeadGvRow,s2Step307HeadFvRow] 0 s2Step307HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307HeadG_Outgoing : rowsOwned s2Step307HeadFvAfter [s2Step307HeadGOut,s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut] :=
  hmrRows_owned_drop s2Step307HeadFvAfter [s2Step307HeadGOut,s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut] 0 s2Step307HeadBank_outgoingOwned

private theorem s2Step307HeadG_distinct : (s2Step307HeadGRow.sign::s2Step307HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307HeadG_owned : (s2Step307HeadGRow.sign::s2Step307HeadGRow.payload).toFinset⊆s2Step307HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307HeadG_reserved : s2Step307HeadGBefore.reserve s2Step307HeadGFresh.toFinset=some s2Step307HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step307HeadGFresh,arenaWires]
  · norm_num [s2Step307HeadGBefore,s2Step307HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step307HeadGAfter,s2Step307HeadGBefore,s2Step307HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step307HeadG_checked : planRowResizeLog s2Step307HeadGBefore s2Step307HeadGRow 119 s2Step307HeadGFresh=
    some (s2Step307HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩,growRow 769 s2Step307HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step307HeadGBefore s2Step307HeadGAfter s2Step307HeadGRow 119 s2Step307HeadGFresh
    s2Step307HeadG_distinct s2Step307HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step307HeadG_reserved
  have rowEq : WindowRow.mk (s2Step307HeadGRow.payload++s2Step307HeadGFresh) s2Step307HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step307HeadGvBefore : Arena := s2Step307HeadFAfter

private theorem s2Step307HeadGv_Incoming : rowsOwned s2Step307HeadGvBefore [s2Step307HeadGvRow,s2Step307HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step307HeadGRow,s2Step307HeadFRow,s2Step307HeadGvRow,s2Step307HeadFvRow] 2 s2Step307HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step307HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step307HeadGv_Outgoing : rowsOwned s2Step307HeadFvAfter [s2Step307HeadGvOut,s2Step307HeadFvOut] :=
  hmrRows_owned_drop s2Step307HeadFvAfter [s2Step307HeadGOut,s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut] 2 s2Step307HeadBank_outgoingOwned

private theorem s2Step307HeadGv_distinct : (s2Step307HeadGvRow.sign::s2Step307HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step307HeadGv_owned : (s2Step307HeadGvRow.sign::s2Step307HeadGvRow.payload).toFinset⊆s2Step307HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step307HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step307HeadGv_reserved : s2Step307HeadGvBefore.reserve s2Step307HeadGvFresh.toFinset=some s2Step307HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step307HeadGvFresh,arenaWires]
  · norm_num [s2Step307HeadGvBefore,s2Step307HeadFAfter,s2Step307HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step307HeadGvAfter,s2Step307HeadGvBefore,s2Step307HeadFAfter,s2Step307HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step307HeadGv_checked : planRowResizeLog s2Step307HeadGvBefore s2Step307HeadGvRow 170 s2Step307HeadGvFresh=
    some (s2Step307HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 787],771⟩,growRow 771 s2Step307HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step307HeadGvBefore s2Step307HeadGvAfter s2Step307HeadGvRow 170 s2Step307HeadGvFresh
    s2Step307HeadGv_distinct s2Step307HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step307HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step307HeadGvRow.payload++s2Step307HeadGvFresh) s2Step307HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step307HeadBank_rows : planWindowRowsLog s2Step307HeadGBefore [(s2Step307HeadGRow,119),(s2Step307HeadFRow,119),(s2Step307HeadGvRow,170),(s2Step307HeadFvRow,170)] [s2Step307HeadGFresh,s2Step307HeadFFresh,s2Step307HeadGvFresh,s2Step307HeadFvFresh]=
    some (s2Step307HeadFvAfter,[s2Step307HeadGOut,s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut],(growRow 769 s2Step307HeadGFresh ++ (growRow 768 s2Step307HeadFFresh ++ (growRow 771 s2Step307HeadGvFresh ++ (growRow 770 s2Step307HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step307HeadFvAfter [] []=some (s2Step307HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step307HeadFvBefore s2Step307HeadFvAfter s2Step307HeadFvAfter
    s2Step307HeadFvRow s2Step307HeadFvOut 170 s2Step307HeadFvFresh [] [] []
    (growRow 770 s2Step307HeadFvFresh) ([]) s2Step307HeadFv_Incoming s2Step307HeadFv_checked h4 s2Step307HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step307HeadGvBefore s2Step307HeadGvAfter s2Step307HeadFvAfter
    s2Step307HeadGvRow s2Step307HeadGvOut 170 s2Step307HeadGvFresh [(s2Step307HeadFvRow,170)] [s2Step307HeadFvFresh] [s2Step307HeadFvOut]
    (growRow 771 s2Step307HeadGvFresh) ((growRow 770 s2Step307HeadFvFresh ++ [])) s2Step307HeadGv_Incoming s2Step307HeadGv_checked h3 s2Step307HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step307HeadFBefore s2Step307HeadFAfter s2Step307HeadFvAfter
    s2Step307HeadFRow s2Step307HeadFOut 119 s2Step307HeadFFresh [(s2Step307HeadGvRow,170),(s2Step307HeadFvRow,170)] [s2Step307HeadGvFresh,s2Step307HeadFvFresh] [s2Step307HeadGvOut,s2Step307HeadFvOut]
    (growRow 768 s2Step307HeadFFresh) ((growRow 771 s2Step307HeadGvFresh ++ (growRow 770 s2Step307HeadFvFresh ++ []))) s2Step307HeadF_Incoming s2Step307HeadF_checked h2 s2Step307HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step307HeadGBefore s2Step307HeadGAfter s2Step307HeadFvAfter
    s2Step307HeadGRow s2Step307HeadGOut 119 s2Step307HeadGFresh [(s2Step307HeadFRow,119),(s2Step307HeadGvRow,170),(s2Step307HeadFvRow,170)] [s2Step307HeadFFresh,s2Step307HeadGvFresh,s2Step307HeadFvFresh] [s2Step307HeadFOut,s2Step307HeadGvOut,s2Step307HeadFvOut]
    (growRow 769 s2Step307HeadGFresh) ((growRow 768 s2Step307HeadFFresh ++ (growRow 771 s2Step307HeadGvFresh ++ (growRow 770 s2Step307HeadFvFresh ++ [])))) s2Step307HeadG_Incoming s2Step307HeadG_checked h1 s2Step307HeadG_Outgoing
  exact h0

private theorem s2Step307HeadBank_checked : compileHmrBankResizeLog .headroom s2Step307HeadGBefore ⟨s2Step307HeadFRow,s2Step307HeadGRow,s2Step307HeadFvRow,s2Step307HeadGvRow⟩ ⟨119,119,170,170⟩ [s2Step307HeadGFresh,s2Step307HeadFFresh,s2Step307HeadGvFresh,s2Step307HeadFvFresh]=
    some (s2Step307HeadFvAfter,⟨s2Step307HeadFOut,s2Step307HeadGOut,s2Step307HeadFvOut,s2Step307HeadGvOut⟩,(growRow 769 s2Step307HeadGFresh ++ (growRow 768 s2Step307HeadFFresh ++ (growRow 771 s2Step307HeadGvFresh ++ (growRow 770 s2Step307HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step307HeadBank_rows]
  rfl

private theorem s2Step307Front_checked : compileHmrSourceFrontLog s2Step307EntryFBefore s2Step307FrontBank 118 169 ⟨117,117,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step307FrontLog=some s2Step307FrontPlan := by
  have pairEq : s2Step307FrontPair=⟨s2Step307HeadFRow,s2Step307HeadGRow,s2Step307HeadFvRow,s2Step307HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step307FrontHead=⟨s2Step307ExitFRow,s2Step307ExitGRow,s2Step307ExitFvRow,s2Step307ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step307Add0A=s2Step307FrontHead.f.wires := by decide +kernel
  have gEq : s2Step307Add0B=s2Step307FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step307Add1A=s2Step307FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step307Add1B=s2Step307FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step307EntryFBefore s2Step307FrontBank 118 169 ⟨117,117,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step307FrontLog s2Step307FrontPlan
  · exact s2Step307Front_entry
  · exact s2Step307EntryBank_checked
  · exact s2Step307Front_sigma
  · rfl
  · exact s2Step307Front_branch
  · rfl
  · simpa only [s2Step307FrontPlan,pairEq] using s2Step307HeadBank_checked
  · simpa only [s2Step307FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step307F4_checked
  · exact s2Step307Counter_checked
  · rfl
  · simpa only [s2Step307FrontPlan,headEq] using s2Step307ExitBank_checked

private theorem s2Step307Complete_explicit_checked : compileHmrEarlyStepLog s2Step307EntryFBefore s2Step307FrontBank 118 169 ⟨117,117,169,169⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step307CompleteLog=some s2Step307CompletePlan := by
  let Q := s2Step307EarlyControlPlan
  have hq := s2Step307EarlyControl_plan_checked
  have fv1 : s2Step307CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step307CompleteOut.fv.payload[2]?.getD s2Step307CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step307CompleteOut.fv.payload[3]?.getD s2Step307CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step307CompleteOut.fv.payload[4]?.getD s2Step307CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step307EntryFBefore s2Step307EarlyControlArena s2Step307FrontBank 118 169 ⟨117,117,169,169⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step307CompleteLog s2Step307FrontPlan Q
    s2Step307Front_checked s2Step307Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step307Complete_owned s2Step307Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step307EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 s2Step307CompleteOut.fv.second (s2Step307CompleteOut.fv.payload[2]?.getD s2Step307CompleteOut.fv.sign) (s2Step307CompleteOut.fv.payload[3]?.getD s2Step307CompleteOut.fv.sign) (s2Step307CompleteOut.fv.payload[4]?.getD s2Step307CompleteOut.fv.sign) 799 56 s2Step307EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep307Arena : Arena := s2Step307EntryFBefore
def s2PrivateStep307Bank : WindowBank := s2Step307FrontBank
def s2PrivateStep307Spec : HmrSourceWalkStepLog := ⟨118,169,⟨117,117,169,169⟩,56,.early s2Step307CompleteLog⟩
def s2PrivateStep307Plan : HmrSourceStepPlan := .early s2Step307CompletePlan
theorem s2PrivateStep307_source : s2PrivateStep307Spec=s2ObservedLogs304[3] := rfl
theorem s2PrivateStep307_checked : compileHmrSourceStepLog s2PrivateStep307Arena s2PrivateStep307Bank
    s2PrivateStep307Spec.fgWidth s2PrivateStep307Spec.vWidth s2PrivateStep307Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 307 s2PrivateStep307Spec.need none s2PrivateStep307Spec.log=some s2PrivateStep307Plan := by
  change compileHmrSourceStepLog s2Step307EntryFBefore s2Step307FrontBank 118 169 ⟨117,117,169,169⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 307 56 none (.early s2Step307CompleteLog)=some (.early s2Step307CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 307<498)]
  rw [s2Step307Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
