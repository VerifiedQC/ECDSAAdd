import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep311
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

private def s2Step313CompleteMoves : List (Wire × Wire) := [(842,113)]

private def s2Step313EarlyControlLog : HmrEarlyControlLog := ⟨[842, 834, 787, 824, 810],[806],[846],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step313FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [803]],[[810], [824], [834], [787]],[[], [], [], []]⟩,[835],[837],[806],[846],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800]⟩

private def s2Step313CompleteLog : HmrEarlyStepLog := ⟨s2Step313FrontLog,s2Step313CompleteMoves,s2Step313EarlyControlLog⟩

private def s2Step313ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩

private def s2Step313ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step313ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],769⟩

private def s2Step313ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩

private def s2Step313FrontOut : WindowBank := ⟨s2Step313ExitFOut,s2Step313ExitGOut,s2Step313ExitFvOut,s2Step313ExitGvOut⟩

private def s2Step313CompleteOut : WindowBank := s2Step313FrontOut.repacked s2Step313CompleteMoves

private def s2Step313EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step313EarlyControlPositiveArena,[806],s2Step313EarlyControlEqualityArena,[846],⟨⟨835,false⟩,[⟨⟨806,false⟩,846⟩]⟩⟩

private def s2Step313EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,842⟩,⟨⟨774,false⟩,834⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,824⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step313EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step313EarlyControlZeroArena,s2Step313EarlyControlZeroPlan,s2Step313EarlyControlClassPlan,s2Step313EarlyControlFlagArena,s2Step313EarlyControlFittedArena,s2Step313EarlyControlHistoryArena,s2Step313EarlyControlSigmaArena,s2Step313EarlyControlOutputArena,s2Step313EarlyControlLog⟩

private def s2Step313CounterWork : List Wire := [806, 846, 830, 800]

private theorem s2Step313Counter_bounded : s2Step313CounterWork.toFinset⊆arenaWires := by norm_num [s2Step313CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step313HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313CounterDuring : Arena := ⟨s2Step313HeadFvAfter.live∪s2Step313CounterWork.toFinset,Finset.union_subset s2Step313HeadFvAfter.bounded s2Step313Counter_bounded⟩

private def s2Step313EntryFFresh : List Wire := []

private def s2Step313EntryFvFresh : List Wire := []

private def s2Step313EntryGFresh : List Wire := []

private def s2Step313EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EntryGvFresh : List Wire := [803]

private def s2Step313ExitFExtra : List Wire := [824]

private def s2Step313ExitFvExtra : List Wire := [787]

private def s2Step313ExitGExtra : List Wire := [113, 810]

private def s2Step313ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313ExitGvExtra : List Wire := [834]

private def s2Step313Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step313Add0_bounded : s2Step313Add0Work.toFinset⊆arenaWires := by
  have h : s2Step313Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step313Add0During : Arena := ⟨s2Step313Add0Arena.live∪s2Step313Add0Work.toFinset,Finset.union_subset s2Step313Add0Arena.bounded s2Step313Add0_bounded⟩

private def s2Step313Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step313Add1_bounded : s2Step313Add1Work.toFinset⊆arenaWires := by
  have h : s2Step313Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step313Add1During : Arena := ⟨s2Step313Add1Arena.live∪s2Step313Add1Work.toFinset,Finset.union_subset s2Step313Add1Arena.bounded s2Step313Add1_bounded⟩

private def s2Step313F4FlagArena : Arena := ⟨s2Step313HeadFvAfter.live∪{806},Finset.union_subset s2Step313HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step313F4Plan : HmrHybridF4Plan := ⟨s2Step313F4FlagArena,[806],s2Step313Add0Arena,[846],s2Step313Add0During,s2Step313Add0Work,s2Step313Add1During,s2Step313Add1Work⟩

private def s2Step313HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 824],768⟩

private def s2Step313HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 787],770⟩

private def s2Step313HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 810],769⟩

private def s2Step313HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 834],771⟩

private def s2Step313FrontHead : WindowBank := ⟨s2Step313HeadFOut,s2Step313HeadGOut,s2Step313HeadFvOut,s2Step313HeadGvOut⟩

private def s2Step313EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩

private def s2Step313EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step313EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],769⟩

private def s2Step313EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩

private def s2Step313FrontPair : WindowBank := ⟨s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut⟩

private def s2Step313FrontSigmaArena : Arena := ⟨s2Step313EntryGvAfter.live∪{835},Finset.union_subset s2Step313EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step313HeadFFresh : List Wire := [824]

private def s2Step313HeadFvFresh : List Wire := [787]

private def s2Step313HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313HeadGFresh : List Wire := [810]

private def s2Step313HeadGvFresh : List Wire := [834]

private def s2Step313FrontPlan : HmrSourceFront := ⟨s2Step313EntryGvAfter,s2Step313FrontPair,(growRow 768 s2Step313EntryFFresh ++ (growRow 769 s2Step313EntryGFresh ++ (growRow 770 s2Step313EntryFvFresh ++ (growRow 771 s2Step313EntryGvFresh ++ [])))),s2Step313FrontSigmaArena,[835],s2Step313HeadGBefore,[837],
  s2Step313HeadFvAfter,s2Step313FrontHead,(growRow 769 s2Step313HeadGFresh ++ (growRow 768 s2Step313HeadFFresh ++ (growRow 771 s2Step313HeadGvFresh ++ (growRow 770 s2Step313HeadFvFresh ++ [])))),s2Step313F4Plan,s2Step313CounterDuring,s2Step313CounterWork,s2Step313ExitGvAfter,s2Step313FrontOut,(shrinkRow 769 s2Step313ExitGExtra ++ (shrinkRow 768 s2Step313ExitFExtra ++ (shrinkRow 770 s2Step313ExitFvExtra ++ (shrinkRow 771 s2Step313ExitGvExtra ++ []))))⟩

private def s2Step313CompletePlan : HmrEarlyStepPlan := ⟨s2Step313FrontPlan,s2Step313EarlyControlArena,s2Step313EarlyControlPlan,s2Step313CompleteMoves⟩

private theorem s2Step313Complete_apart : List.Disjoint (s2Step313CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [835, 837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step313CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[835, 837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step313Complete_owned : (s2Step313CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step313CompleteMoveArena : Arena := ⟨s2Step313ExitGvAfter.live∪{113},Finset.union_subset s2Step313ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step313Complete_repack : s2Step313ExitGvAfter.checkRepack s2Step313CompleteMoves=some s2Step313EarlyControlArena := by
  have owned : 842∈s2Step313ExitGvAfter.live := by norm_num [s2Step313ExitGvAfter,arenaWires]
  have reserve : s2Step313ExitGvAfter.reserve {113}=some s2Step313CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step313ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step313CompleteMoveArena.retireSet {842}=s2Step313EarlyControlArena := by
    unfold Arena.retireSet s2Step313EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step313CompleteMoveArena,s2Step313ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step313CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step313CompleteMoveArena.retireSet {842}).checkRepack []=some s2Step313EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step313EarlyControl_branchOwned : ([837] : List Wire).toFinset⊆s2Step313EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_branch : compileHmrBranchRetirement s2Step313EarlyControlSigmaArena 837=some s2Step313EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step313EarlyControl_branchOwned
  · ext q
    simp [s2Step313EarlyControlOutputArena,s2Step313EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step313EarlyControl_classEqualityBorrow : s2Step313EarlyControlPositiveArena.checkBorrow (([835, 806] : List Wire).length-1) s2Step313EarlyControlLog.classWork=some s2Step313EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step313EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step313EarlyControlEqualityArena,s2Step313EarlyControlPositiveArena,s2Step313EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step313EarlyControl_classEqualityOwned : ([835, 806] : List Wire).toFinset⊆s2Step313EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_classEquality : compileHmrEqualityLog s2Step313EarlyControlPositiveArena [835, 806] 0 s2Step313EarlyControlLog.classWork=some (s2Step313EarlyControlEqualityArena,s2Step313EarlyControlLog.classWork,s2Step313EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step313EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step313EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step313EarlyControl_classOwned : ([777, 810, 835] : List Wire).toFinset⊆s2Step313EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_positiveBorrow : s2Step313EarlyControlZeroArena.checkBorrow (1) s2Step313EarlyControlLog.positiveWork=some s2Step313EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step313EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step313EarlyControlPositiveArena,s2Step313EarlyControlZeroArena,s2Step313EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step313EarlyControl_class : compileHmrSourceClassLog s2Step313EarlyControlZeroArena false 777 s2Step313EarlyControlZeroPlan.top 0 835 s2Step313EarlyControlLog.positiveWork s2Step313EarlyControlLog.classWork=some s2Step313EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step313EarlyControlClassPlan s2Step313EarlyControlZeroArena false 777 s2Step313EarlyControlZeroPlan.top 0 835
  constructor
  · decide +kernel
  · exact s2Step313EarlyControl_classOwned
  · exact s2Step313EarlyControl_positiveBorrow
  · exact s2Step313EarlyControl_classEquality

private theorem s2Step313EarlyControl_entryRecordOwned : ([837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_entrySigmaOwned : ([835, 254] : List Wire).toFinset⊆s2Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_fitBorrow : s2Step313EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step313EarlyControlLog.recordFresh=some s2Step313EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step313EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step313EarlyControlFittedArena,s2Step313EarlyControlFlagArena,s2Step313EarlyControlLog,arenaWires]

private theorem s2Step313EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step313EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_fit : compileHmrRecordGrowLog s2Step313EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step313EarlyControlLog.recordFresh=some s2Step313EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step313EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step313EarlyControl_fitBorrow

private theorem s2Step313EarlyControl_flagsBorrow : s2Step313EarlyControlEqualityArena.checkBorrow (6) s2Step313EarlyControlLog.flagWork=some s2Step313EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step313EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step313EarlyControlFlagArena,s2Step313EarlyControlEqualityArena,s2Step313EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step313EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step313EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_flags : compileHmrFlagsLog s2Step313EarlyControlClassPlan.equalityArena s2Step313EarlyControlClassPlan.equality.top 253 252 251 s2Step313EarlyControlLog.flagWork=some s2Step313EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step313EarlyControl_flagsOwned⟩
  · exact s2Step313EarlyControl_flagsBorrow

private theorem s2Step313EarlyControl_historyBorrow : s2Step313EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step313EarlyControlLog.recordFresh=some s2Step313EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step313EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step313EarlyControlHistoryArena,s2Step313EarlyControlArena,s2Step313EarlyControlLog,arenaWires]

private theorem s2Step313EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_history : compileHmrRecordGrowLog s2Step313EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step313EarlyControlLog.recordFresh=some s2Step313EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step313EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step313EarlyControl_historyBorrow

private theorem s2Step313EarlyControl_sigmaOwned : ([254, 835] : List Wire).toFinset⊆s2Step313EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_sigmaReleaseOwned : ([835] : List Wire).toFinset⊆s2Step313EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_sigmaRelease : s2Step313EarlyControlHistoryArena.release {835} (fun _ => false)=some s2Step313EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step313EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step313EarlyControlSigmaArena,s2Step313EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step313EarlyControl_sigma : compileHmrSigmaDropLog s2Step313EarlyControlHistoryArena false 0 0 254 835 []=some s2Step313EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step313EarlyControl_sigmaOwned⟩
  · exact s2Step313EarlyControl_sigmaRelease

private theorem s2Step313EarlyControl_zeroBorrow : s2Step313EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step313EarlyControlLog.zeroWork=some s2Step313EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step313EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step313EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step313EarlyControlZeroArena,s2Step313EarlyControlArena,s2Step313EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step313EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step313EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step313EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EarlyControl_zero : compileHmrEqualityLog s2Step313EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step313EarlyControlLog.zeroWork=some (s2Step313EarlyControlZeroArena,s2Step313EarlyControlLog.zeroWork,s2Step313EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step313EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step313EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step313EarlyControl_logged : s2Step313EarlyControlPlan.Logged s2Step313EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 837 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step313EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step313EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step313EarlyControl_zero
  · exact s2Step313EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step313EarlyControl_flags
  · exact s2Step313EarlyControl_fit
  · exact s2Step313EarlyControl_history
  · exact s2Step313EarlyControl_sigma
  · exact s2Step313EarlyControl_branch

private theorem s2Step313EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step313EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 837 56 s2Step313EarlyControlLog=some s2Step313EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step313EarlyControlPlan s2Step313EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 837 56 s2Step313EarlyControl_logged

private def s2Step313EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩

private def s2Step313EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step313EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],769⟩

private def s2Step313EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811],771⟩

private def s2Step313FrontBank : WindowBank := ⟨s2Step313EntryFRow,s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow⟩

private def s2Step313Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 824, 768]

private def s2Step313Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 810, 769]

private def s2Step313Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 787, 770]

private def s2Step313Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 834, 771]

private theorem s2Step313Counter_apart : Disjoint s2Step313HeadFvAfter.live s2Step313CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step313HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313Counter_borrowed : s2Step313HeadFvAfter.checkBorrow 4 s2Step313CounterWork=some s2Step313CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step313HeadFvAfter s2Step313CounterDuring s2Step313CounterWork.toFinset s2Step313Counter_bounded s2Step313Counter_apart rfl

private theorem s2Step313Counter_owned : (835::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step313HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step313HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313Counter_checked : compileHmrCounterStepLog s2Step313HeadFvAfter true 835 [772, 773, 774, 775, 776, 777] s2Step313CounterWork=some s2Step313CounterDuring := by
  have owned : ∀q∈835::[772, 773, 774, 775, 776, 777],q∈s2Step313HeadFvAfter.live := fun q hq => s2Step313Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step313Counter_borrowed

private def s2Step313EntryFAfter : Arena := s2Step313EntryFBefore

private theorem s2Step313EntryBank_incomingDistinct : ([s2Step313EntryFRow,s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313EntryF_Incoming : rowsOwned s2Step313EntryFBefore [s2Step313EntryFRow,s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313EntryFRow,s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow] 0 s2Step313EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313EntryBank_outgoingOwned : rowsOwned s2Step313EntryGvAfter [s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step313EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313EntryF_Outgoing : rowsOwned s2Step313EntryGvAfter [s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut] :=
  hmrRows_owned_drop s2Step313EntryGvAfter [s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut] 0 s2Step313EntryBank_outgoingOwned

private theorem s2Step313EntryF_distinct : (s2Step313EntryFRow.sign::s2Step313EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313EntryF_owned : (s2Step313EntryFRow.sign::s2Step313EntryFRow.payload).toFinset⊆s2Step313EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EntryF_reserved : s2Step313EntryFBefore.reserve s2Step313EntryFFresh.toFinset=some s2Step313EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step313EntryFFresh,arenaWires]
  · norm_num [s2Step313EntryFBefore,s2Step313EntryFFresh,arenaWires]
  · simp only [s2Step313EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step313EntryF_checked : planRowResizeLog s2Step313EntryFBefore s2Step313EntryFRow 114 s2Step313EntryFFresh=
    some (s2Step313EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩,growRow 768 s2Step313EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step313EntryFBefore s2Step313EntryFAfter s2Step313EntryFRow 114 s2Step313EntryFFresh
    s2Step313EntryF_distinct s2Step313EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step313EntryF_reserved
  have rowEq : WindowRow.mk (s2Step313EntryFRow.payload++s2Step313EntryFFresh) s2Step313EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step313EntryFvAfter : Arena := s2Step313EntryFBefore

private def s2Step313EntryFvBefore : Arena := s2Step313EntryFBefore

private theorem s2Step313EntryFv_Incoming : rowsOwned s2Step313EntryFvBefore [s2Step313EntryFvRow,s2Step313EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313EntryFRow,s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow] 2 s2Step313EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313EntryFv_Outgoing : rowsOwned s2Step313EntryGvAfter [s2Step313EntryFvOut,s2Step313EntryGvOut] :=
  hmrRows_owned_drop s2Step313EntryGvAfter [s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut] 2 s2Step313EntryBank_outgoingOwned

private theorem s2Step313EntryFv_distinct : (s2Step313EntryFvRow.sign::s2Step313EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313EntryFv_owned : (s2Step313EntryFvRow.sign::s2Step313EntryFvRow.payload).toFinset⊆s2Step313EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EntryFv_reserved : s2Step313EntryFvBefore.reserve s2Step313EntryFvFresh.toFinset=some s2Step313EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step313EntryFvFresh,arenaWires]
  · norm_num [s2Step313EntryFvBefore,s2Step313EntryFBefore,s2Step313EntryFvFresh,arenaWires]
  · simp only [s2Step313EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step313EntryFv_checked : planRowResizeLog s2Step313EntryFvBefore s2Step313EntryFvRow 172 s2Step313EntryFvFresh=
    some (s2Step313EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩,growRow 770 s2Step313EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step313EntryFvBefore s2Step313EntryFvAfter s2Step313EntryFvRow 172 s2Step313EntryFvFresh
    s2Step313EntryFv_distinct s2Step313EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step313EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step313EntryFvRow.payload++s2Step313EntryFvFresh) s2Step313EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step313EntryGAfter : Arena := s2Step313EntryFBefore

private def s2Step313EntryGBefore : Arena := s2Step313EntryFBefore

private theorem s2Step313EntryG_Incoming : rowsOwned s2Step313EntryGBefore [s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313EntryFRow,s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow] 1 s2Step313EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313EntryG_Outgoing : rowsOwned s2Step313EntryGvAfter [s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut] :=
  hmrRows_owned_drop s2Step313EntryGvAfter [s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut] 1 s2Step313EntryBank_outgoingOwned

private theorem s2Step313EntryG_distinct : (s2Step313EntryGRow.sign::s2Step313EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313EntryG_owned : (s2Step313EntryGRow.sign::s2Step313EntryGRow.payload).toFinset⊆s2Step313EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EntryG_reserved : s2Step313EntryGBefore.reserve s2Step313EntryGFresh.toFinset=some s2Step313EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step313EntryGFresh,arenaWires]
  · norm_num [s2Step313EntryGBefore,s2Step313EntryFBefore,s2Step313EntryGFresh,arenaWires]
  · simp only [s2Step313EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step313EntryG_checked : planRowResizeLog s2Step313EntryGBefore s2Step313EntryGRow 114 s2Step313EntryGFresh=
    some (s2Step313EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],769⟩,growRow 769 s2Step313EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step313EntryGBefore s2Step313EntryGAfter s2Step313EntryGRow 114 s2Step313EntryGFresh
    s2Step313EntryG_distinct s2Step313EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step313EntryG_reserved
  have rowEq : WindowRow.mk (s2Step313EntryGRow.payload++s2Step313EntryGFresh) s2Step313EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step313EntryGvBefore : Arena := s2Step313EntryFBefore

private theorem s2Step313EntryGv_Incoming : rowsOwned s2Step313EntryGvBefore [s2Step313EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313EntryFRow,s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow] 3 s2Step313EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313EntryGv_Outgoing : rowsOwned s2Step313EntryGvAfter [s2Step313EntryGvOut] :=
  hmrRows_owned_drop s2Step313EntryGvAfter [s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut] 3 s2Step313EntryBank_outgoingOwned

private theorem s2Step313EntryGv_distinct : (s2Step313EntryGvRow.sign::s2Step313EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313EntryGv_owned : (s2Step313EntryGvRow.sign::s2Step313EntryGvRow.payload).toFinset⊆s2Step313EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313EntryGv_reserved : s2Step313EntryGvBefore.reserve s2Step313EntryGvFresh.toFinset=some s2Step313EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step313EntryGvFresh,arenaWires]
  · norm_num [s2Step313EntryGvBefore,s2Step313EntryFBefore,s2Step313EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step313EntryGvAfter,s2Step313EntryGvBefore,s2Step313EntryFBefore,s2Step313EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step313EntryGv_checked : planRowResizeLog s2Step313EntryGvBefore s2Step313EntryGvRow 172 s2Step313EntryGvFresh=
    some (s2Step313EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩,growRow 771 s2Step313EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step313EntryGvBefore s2Step313EntryGvAfter s2Step313EntryGvRow 172 s2Step313EntryGvFresh
    s2Step313EntryGv_distinct s2Step313EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step313EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step313EntryGvRow.payload++s2Step313EntryGvFresh) s2Step313EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step313EntryBank_rows : planWindowRowsLog s2Step313EntryFBefore [(s2Step313EntryFRow,114),(s2Step313EntryGRow,114),(s2Step313EntryFvRow,172),(s2Step313EntryGvRow,172)] [s2Step313EntryFFresh,s2Step313EntryGFresh,s2Step313EntryFvFresh,s2Step313EntryGvFresh]=
    some (s2Step313EntryGvAfter,[s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut],(growRow 768 s2Step313EntryFFresh ++ (growRow 769 s2Step313EntryGFresh ++ (growRow 770 s2Step313EntryFvFresh ++ (growRow 771 s2Step313EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step313EntryGvAfter [] []=some (s2Step313EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step313EntryGvBefore s2Step313EntryGvAfter s2Step313EntryGvAfter
    s2Step313EntryGvRow s2Step313EntryGvOut 172 s2Step313EntryGvFresh [] [] []
    (growRow 771 s2Step313EntryGvFresh) ([]) s2Step313EntryGv_Incoming s2Step313EntryGv_checked h4 s2Step313EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step313EntryFvBefore s2Step313EntryFvAfter s2Step313EntryGvAfter
    s2Step313EntryFvRow s2Step313EntryFvOut 172 s2Step313EntryFvFresh [(s2Step313EntryGvRow,172)] [s2Step313EntryGvFresh] [s2Step313EntryGvOut]
    (growRow 770 s2Step313EntryFvFresh) ((growRow 771 s2Step313EntryGvFresh ++ [])) s2Step313EntryFv_Incoming s2Step313EntryFv_checked h3 s2Step313EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step313EntryGBefore s2Step313EntryGAfter s2Step313EntryGvAfter
    s2Step313EntryGRow s2Step313EntryGOut 114 s2Step313EntryGFresh [(s2Step313EntryFvRow,172),(s2Step313EntryGvRow,172)] [s2Step313EntryFvFresh,s2Step313EntryGvFresh] [s2Step313EntryFvOut,s2Step313EntryGvOut]
    (growRow 769 s2Step313EntryGFresh) ((growRow 770 s2Step313EntryFvFresh ++ (growRow 771 s2Step313EntryGvFresh ++ []))) s2Step313EntryG_Incoming s2Step313EntryG_checked h2 s2Step313EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step313EntryFBefore s2Step313EntryFAfter s2Step313EntryGvAfter
    s2Step313EntryFRow s2Step313EntryFOut 114 s2Step313EntryFFresh [(s2Step313EntryGRow,114),(s2Step313EntryFvRow,172),(s2Step313EntryGvRow,172)] [s2Step313EntryGFresh,s2Step313EntryFvFresh,s2Step313EntryGvFresh] [s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut]
    (growRow 768 s2Step313EntryFFresh) ((growRow 769 s2Step313EntryGFresh ++ (growRow 770 s2Step313EntryFvFresh ++ (growRow 771 s2Step313EntryGvFresh ++ [])))) s2Step313EntryF_Incoming s2Step313EntryF_checked h1 s2Step313EntryF_Outgoing
  exact h0

private theorem s2Step313EntryBank_checked : compileHmrBankResizeLog .entry s2Step313EntryFBefore ⟨s2Step313EntryFRow,s2Step313EntryGRow,s2Step313EntryFvRow,s2Step313EntryGvRow⟩ ⟨114,114,172,172⟩ [s2Step313EntryFFresh,s2Step313EntryGFresh,s2Step313EntryFvFresh,s2Step313EntryGvFresh]=
    some (s2Step313EntryGvAfter,⟨s2Step313EntryFOut,s2Step313EntryGOut,s2Step313EntryFvOut,s2Step313EntryGvOut⟩,(growRow 768 s2Step313EntryFFresh ++ (growRow 769 s2Step313EntryGFresh ++ (growRow 770 s2Step313EntryFvFresh ++ (growRow 771 s2Step313EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step313EntryBank_rows]
  rfl

private def s2Step313ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313ExitFBefore : Arena := s2Step313ExitGAfter

private def s2Step313ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 824],768⟩

private def s2Step313ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 787],770⟩

private def s2Step313ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 810],769⟩

private def s2Step313ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 834],771⟩

private theorem s2Step313ExitBank_incomingDistinct : ([s2Step313ExitGRow,s2Step313ExitFRow,s2Step313ExitFvRow,s2Step313ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313ExitF_Incoming : rowsOwned s2Step313ExitFBefore [s2Step313ExitFRow,s2Step313ExitFvRow,s2Step313ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313ExitGRow,s2Step313ExitFRow,s2Step313ExitFvRow,s2Step313ExitGvRow] 1 s2Step313ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313ExitFBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313ExitBank_outgoingOwned : rowsOwned s2Step313ExitGvAfter [s2Step313ExitGOut,s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step313ExitGvAfter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313ExitF_Outgoing : rowsOwned s2Step313ExitGvAfter [s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut] :=
  hmrRows_owned_drop s2Step313ExitGvAfter [s2Step313ExitGOut,s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut] 1 s2Step313ExitBank_outgoingOwned

private theorem s2Step313ExitF_distinct : (s2Step313ExitFRow.sign::s2Step313ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313ExitF_owned : (s2Step313ExitFRow.sign::s2Step313ExitFRow.payload).toFinset⊆s2Step313ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313ExitFBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313ExitF_retired : s2Step313ExitFBefore.retireSet s2Step313ExitFExtra.toFinset=s2Step313ExitFAfter := by
  unfold Arena.retireSet s2Step313ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step313ExitFBefore,s2Step313ExitGAfter,s2Step313ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step313ExitF_checked : planRowResizeLog s2Step313ExitFBefore s2Step313ExitFRow 114 []=
    some (s2Step313ExitFAfter,s2Step313ExitFOut,shrinkRow 768 s2Step313ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step313ExitFBefore s2Step313ExitFRow 114 s2Step313ExitF_distinct s2Step313ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step313ExitFRow.payload.take 114) s2Step313ExitFRow.sign=s2Step313ExitFOut := by decide +kernel
  have hi : s2Step313ExitFRow.payload.drop 114=s2Step313ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step313ExitF_retired] at result
  exact result

private def s2Step313ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313ExitFvBefore : Arena := s2Step313ExitFAfter

private theorem s2Step313ExitFv_Incoming : rowsOwned s2Step313ExitFvBefore [s2Step313ExitFvRow,s2Step313ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313ExitGRow,s2Step313ExitFRow,s2Step313ExitFvRow,s2Step313ExitGvRow] 2 s2Step313ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313ExitFvBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313ExitFv_Outgoing : rowsOwned s2Step313ExitGvAfter [s2Step313ExitFvOut,s2Step313ExitGvOut] :=
  hmrRows_owned_drop s2Step313ExitGvAfter [s2Step313ExitGOut,s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut] 2 s2Step313ExitBank_outgoingOwned

private theorem s2Step313ExitFv_distinct : (s2Step313ExitFvRow.sign::s2Step313ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313ExitFv_owned : (s2Step313ExitFvRow.sign::s2Step313ExitFvRow.payload).toFinset⊆s2Step313ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313ExitFvBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313ExitFv_retired : s2Step313ExitFvBefore.retireSet s2Step313ExitFvExtra.toFinset=s2Step313ExitFvAfter := by
  unfold Arena.retireSet s2Step313ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step313ExitFvBefore,s2Step313ExitFAfter,s2Step313ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step313ExitFv_checked : planRowResizeLog s2Step313ExitFvBefore s2Step313ExitFvRow 172 []=
    some (s2Step313ExitFvAfter,s2Step313ExitFvOut,shrinkRow 770 s2Step313ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step313ExitFvBefore s2Step313ExitFvRow 172 s2Step313ExitFv_distinct s2Step313ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step313ExitFvRow.payload.take 172) s2Step313ExitFvRow.sign=s2Step313ExitFvOut := by decide +kernel
  have hi : s2Step313ExitFvRow.payload.drop 172=s2Step313ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step313ExitFv_retired] at result
  exact result

private def s2Step313ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step313ExitG_Incoming : rowsOwned s2Step313ExitGBefore [s2Step313ExitGRow,s2Step313ExitFRow,s2Step313ExitFvRow,s2Step313ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313ExitGRow,s2Step313ExitFRow,s2Step313ExitFvRow,s2Step313ExitGvRow] 0 s2Step313ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313ExitG_Outgoing : rowsOwned s2Step313ExitGvAfter [s2Step313ExitGOut,s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut] :=
  hmrRows_owned_drop s2Step313ExitGvAfter [s2Step313ExitGOut,s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut] 0 s2Step313ExitBank_outgoingOwned

private theorem s2Step313ExitG_distinct : (s2Step313ExitGRow.sign::s2Step313ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313ExitG_owned : (s2Step313ExitGRow.sign::s2Step313ExitGRow.payload).toFinset⊆s2Step313ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313ExitG_retired : s2Step313ExitGBefore.retireSet s2Step313ExitGExtra.toFinset=s2Step313ExitGAfter := by
  unfold Arena.retireSet s2Step313ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step313ExitGBefore,s2Step313ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step313ExitG_checked : planRowResizeLog s2Step313ExitGBefore s2Step313ExitGRow 113 []=
    some (s2Step313ExitGAfter,s2Step313ExitGOut,shrinkRow 769 s2Step313ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step313ExitGBefore s2Step313ExitGRow 113 s2Step313ExitG_distinct s2Step313ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step313ExitGRow.payload.take 113) s2Step313ExitGRow.sign=s2Step313ExitGOut := by decide +kernel
  have hi : s2Step313ExitGRow.payload.drop 113=s2Step313ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step313ExitG_retired] at result
  exact result

private def s2Step313ExitGvBefore : Arena := s2Step313ExitFvAfter

private theorem s2Step313ExitGv_Incoming : rowsOwned s2Step313ExitGvBefore [s2Step313ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313ExitGRow,s2Step313ExitFRow,s2Step313ExitFvRow,s2Step313ExitGvRow] 3 s2Step313ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313ExitGvBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313ExitGv_Outgoing : rowsOwned s2Step313ExitGvAfter [s2Step313ExitGvOut] :=
  hmrRows_owned_drop s2Step313ExitGvAfter [s2Step313ExitGOut,s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut] 3 s2Step313ExitBank_outgoingOwned

private theorem s2Step313ExitGv_distinct : (s2Step313ExitGvRow.sign::s2Step313ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313ExitGv_owned : (s2Step313ExitGvRow.sign::s2Step313ExitGvRow.payload).toFinset⊆s2Step313ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313ExitGvBefore (fun q => (0≤q ∧ q<113) ∨ (114≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313ExitGv_retired : s2Step313ExitGvBefore.retireSet s2Step313ExitGvExtra.toFinset=s2Step313ExitGvAfter := by
  unfold Arena.retireSet s2Step313ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step313ExitGvBefore,s2Step313ExitFvAfter,s2Step313ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step313ExitGv_checked : planRowResizeLog s2Step313ExitGvBefore s2Step313ExitGvRow 172 []=
    some (s2Step313ExitGvAfter,s2Step313ExitGvOut,shrinkRow 771 s2Step313ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step313ExitGvBefore s2Step313ExitGvRow 172 s2Step313ExitGv_distinct s2Step313ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step313ExitGvRow.payload.take 172) s2Step313ExitGvRow.sign=s2Step313ExitGvOut := by decide +kernel
  have hi : s2Step313ExitGvRow.payload.drop 172=s2Step313ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step313ExitGv_retired] at result
  exact result

private theorem s2Step313ExitBank_rows : planWindowRowsLog s2Step313ExitGBefore [(s2Step313ExitGRow,113),(s2Step313ExitFRow,114),(s2Step313ExitFvRow,172),(s2Step313ExitGvRow,172)] [[],[],[],[]]=
    some (s2Step313ExitGvAfter,[s2Step313ExitGOut,s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut],(shrinkRow 769 s2Step313ExitGExtra ++ (shrinkRow 768 s2Step313ExitFExtra ++ (shrinkRow 770 s2Step313ExitFvExtra ++ (shrinkRow 771 s2Step313ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step313ExitGvAfter [] []=some (s2Step313ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step313ExitGvBefore s2Step313ExitGvAfter s2Step313ExitGvAfter
    s2Step313ExitGvRow s2Step313ExitGvOut 172 [] [] [] []
    (shrinkRow 771 s2Step313ExitGvExtra) ([]) s2Step313ExitGv_Incoming s2Step313ExitGv_checked h4 s2Step313ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step313ExitFvBefore s2Step313ExitFvAfter s2Step313ExitGvAfter
    s2Step313ExitFvRow s2Step313ExitFvOut 172 [] [(s2Step313ExitGvRow,172)] [[]] [s2Step313ExitGvOut]
    (shrinkRow 770 s2Step313ExitFvExtra) ((shrinkRow 771 s2Step313ExitGvExtra ++ [])) s2Step313ExitFv_Incoming s2Step313ExitFv_checked h3 s2Step313ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step313ExitFBefore s2Step313ExitFAfter s2Step313ExitGvAfter
    s2Step313ExitFRow s2Step313ExitFOut 114 [] [(s2Step313ExitFvRow,172),(s2Step313ExitGvRow,172)] [[],[]] [s2Step313ExitFvOut,s2Step313ExitGvOut]
    (shrinkRow 768 s2Step313ExitFExtra) ((shrinkRow 770 s2Step313ExitFvExtra ++ (shrinkRow 771 s2Step313ExitGvExtra ++ []))) s2Step313ExitF_Incoming s2Step313ExitF_checked h2 s2Step313ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step313ExitGBefore s2Step313ExitGAfter s2Step313ExitGvAfter
    s2Step313ExitGRow s2Step313ExitGOut 113 [] [(s2Step313ExitFRow,114),(s2Step313ExitFvRow,172),(s2Step313ExitGvRow,172)] [[],[],[]] [s2Step313ExitFOut,s2Step313ExitFvOut,s2Step313ExitGvOut]
    (shrinkRow 769 s2Step313ExitGExtra) ((shrinkRow 768 s2Step313ExitFExtra ++ (shrinkRow 770 s2Step313ExitFvExtra ++ (shrinkRow 771 s2Step313ExitGvExtra ++ [])))) s2Step313ExitG_Incoming s2Step313ExitG_checked h1 s2Step313ExitG_Outgoing
  exact h0

private theorem s2Step313ExitBank_checked : compileHmrBankResizeLog .exit s2Step313ExitGBefore ⟨s2Step313ExitFRow,s2Step313ExitGRow,s2Step313ExitFvRow,s2Step313ExitGvRow⟩ ⟨114,113,172,172⟩ [[],[],[],[]]=
    some (s2Step313ExitGvAfter,⟨s2Step313ExitFOut,s2Step313ExitGOut,s2Step313ExitFvOut,s2Step313ExitGvOut⟩,(shrinkRow 769 s2Step313ExitGExtra ++ (shrinkRow 768 s2Step313ExitFExtra ++ (shrinkRow 770 s2Step313ExitFvExtra ++ (shrinkRow 771 s2Step313ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step313ExitBank_rows]
  rfl

private theorem s2Step313Add0_apart : Disjoint s2Step313Add0Arena.live s2Step313Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step313Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313Add0_card : s2Step313Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step313Add0_borrowed : s2Step313Add0Arena.checkBorrow (hmrHybridCount s2Step313Add0Arena s2Step313Add0B.length) s2Step313Add0Work=some s2Step313Add0During := by
  have len : s2Step313Add0Work.length=hmrHybridCount s2Step313Add0Arena s2Step313Add0B.length := by
    rw [hmrHybridCount,s2Step313Add0_card]
    decide +kernel
  have nd : s2Step313Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step313Add0Arena s2Step313Add0During s2Step313Add0Work.toFinset s2Step313Add0_bounded s2Step313Add0_apart rfl

private theorem s2Step313Add0_distinct : (806::837::846::(s2Step313Add0A++s2Step313Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313Add0_owned : (806::837::846::(s2Step313Add0A++s2Step313Add0B)).toFinset⊆s2Step313Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step313Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313Add0_checked : compileHmrHybridCinLog s2Step313Add0Arena 837 806 846 s2Step313Add0A s2Step313Add0B s2Step313Add0Work=some s2Step313Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step313Add0Arena s2Step313Add0During 837 806 846 s2Step313Add0A s2Step313Add0B s2Step313Add0Work
    (by decide +kernel) (by decide +kernel) s2Step313Add0_distinct
    (fun q hq => s2Step313Add0_owned (List.mem_toFinset.mpr hq)) s2Step313Add0_borrowed

private theorem s2Step313Add1_apart : Disjoint s2Step313Add1Arena.live s2Step313Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step313Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313Add1_card : s2Step313Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step313Add1_borrowed : s2Step313Add1Arena.checkBorrow (hmrHybridCount s2Step313Add1Arena s2Step313Add1B.length) s2Step313Add1Work=some s2Step313Add1During := by
  have len : s2Step313Add1Work.length=hmrHybridCount s2Step313Add1Arena s2Step313Add1B.length := by
    rw [hmrHybridCount,s2Step313Add1_card]
    decide +kernel
  have nd : s2Step313Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step313Add1Arena s2Step313Add1During s2Step313Add1Work.toFinset s2Step313Add1_bounded s2Step313Add1_apart rfl

private theorem s2Step313Add1_distinct : (806::837::846::(s2Step313Add1A++s2Step313Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313Add1_owned : (806::837::846::(s2Step313Add1A++s2Step313Add1B)).toFinset⊆s2Step313Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step313Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313Add1_checked : compileHmrHybridCinLog s2Step313Add1Arena 837 806 846 s2Step313Add1A s2Step313Add1B s2Step313Add1Work=some s2Step313Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step313Add1Arena s2Step313Add1During 837 806 846 s2Step313Add1A s2Step313Add1B s2Step313Add1Work
    (by decide +kernel) (by decide +kernel) s2Step313Add1_distinct
    (fun q hq => s2Step313Add1_owned (List.mem_toFinset.mpr hq)) s2Step313Add1_borrowed

private theorem s2Step313F4_apart : Disjoint (s2Step313Add0A++s2Step313Add0B).toFinset (s2Step313Add1A++s2Step313Add1B).toFinset := by
  have nd : ((s2Step313Add0A++s2Step313Add0B)++(s2Step313Add1A++s2Step313Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step313F4_carry : s2Step313F4FlagArena.checkBorrow 1 [846]=some s2Step313Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step313F4FlagArena,s2Step313HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step313F4FlagArena,s2Step313HeadFvAfter,s2Step313Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step313F4_distinct : (835::837::806::846::((s2Step313Add0A++s2Step313Add1A)++(s2Step313Add0B++s2Step313Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313F4_flag : s2Step313HeadFvAfter.checkBorrow 1 [806]=some s2Step313F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step313HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step313F4_owned : (835::837::((s2Step313Add0A++s2Step313Add1A)++(s2Step313Add0B++s2Step313Add1B))).toFinset⊆s2Step313HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step313HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313F4_checked : compileHmrHybridF4Log s2Step313HeadFvAfter 835 837 s2Step313Add0A s2Step313Add0B s2Step313Add1A s2Step313Add1B [806] [846] s2Step313Add0Work s2Step313Add1Work=some s2Step313F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step313HeadFvAfter s2Step313F4FlagArena s2Step313Add0Arena s2Step313Add0During s2Step313Add1During 835 837
    s2Step313Add0A s2Step313Add0B s2Step313Add1A s2Step313Add1B [806] [846] s2Step313Add0Work s2Step313Add1Work
    (fun q hq => s2Step313F4_owned (List.mem_toFinset.mpr hq)) s2Step313F4_flag s2Step313F4_carry
    s2Step313F4_distinct s2Step313F4_apart s2Step313Add0_checked s2Step313Add1_checked

private theorem s2Step313Front_branch : s2Step313FrontSigmaArena.checkBorrow 1 [837]=some s2Step313HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step313FrontSigmaArena,s2Step313EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step313FrontSigmaArena,s2Step313EntryGvAfter,s2Step313HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step313Front_entry : HmrFrontEntryValid s2Step313EntryFBefore s2Step313FrontBank 114 172 ⟨114,113,172,172⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step313FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step313EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step313EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step313FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step313Front_sigma : s2Step313EntryGvAfter.checkBorrow 1 [835]=some s2Step313FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step313EntryGvAfter,arenaWires]
  · rfl

private def s2Step313HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313HeadFBefore : Arena := s2Step313HeadGAfter

private def s2Step313HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩

private def s2Step313HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step313HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],769⟩

private def s2Step313HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩

private theorem s2Step313HeadBank_incomingDistinct : ([s2Step313HeadGRow,s2Step313HeadFRow,s2Step313HeadGvRow,s2Step313HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313HeadF_Incoming : rowsOwned s2Step313HeadFBefore [s2Step313HeadFRow,s2Step313HeadGvRow,s2Step313HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313HeadGRow,s2Step313HeadFRow,s2Step313HeadGvRow,s2Step313HeadFvRow] 1 s2Step313HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313HeadBank_outgoingOwned : rowsOwned s2Step313HeadFvAfter [s2Step313HeadGOut,s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step313HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313HeadF_Outgoing : rowsOwned s2Step313HeadFvAfter [s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut] :=
  hmrRows_owned_drop s2Step313HeadFvAfter [s2Step313HeadGOut,s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut] 1 s2Step313HeadBank_outgoingOwned

private theorem s2Step313HeadF_distinct : (s2Step313HeadFRow.sign::s2Step313HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313HeadF_owned : (s2Step313HeadFRow.sign::s2Step313HeadFRow.payload).toFinset⊆s2Step313HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313HeadF_reserved : s2Step313HeadFBefore.reserve s2Step313HeadFFresh.toFinset=some s2Step313HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step313HeadFFresh,arenaWires]
  · norm_num [s2Step313HeadFBefore,s2Step313HeadGAfter,s2Step313HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step313HeadFAfter,s2Step313HeadFBefore,s2Step313HeadGAfter,s2Step313HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step313HeadF_checked : planRowResizeLog s2Step313HeadFBefore s2Step313HeadFRow 115 s2Step313HeadFFresh=
    some (s2Step313HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 824],768⟩,growRow 768 s2Step313HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step313HeadFBefore s2Step313HeadFAfter s2Step313HeadFRow 115 s2Step313HeadFFresh
    s2Step313HeadF_distinct s2Step313HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step313HeadF_reserved
  have rowEq : WindowRow.mk (s2Step313HeadFRow.payload++s2Step313HeadFFresh) s2Step313HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 824],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step313HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step313HeadFvBefore : Arena := s2Step313HeadGvAfter

private theorem s2Step313HeadFv_Incoming : rowsOwned s2Step313HeadFvBefore [s2Step313HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313HeadGRow,s2Step313HeadFRow,s2Step313HeadGvRow,s2Step313HeadFvRow] 3 s2Step313HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313HeadFv_Outgoing : rowsOwned s2Step313HeadFvAfter [s2Step313HeadFvOut] :=
  hmrRows_owned_drop s2Step313HeadFvAfter [s2Step313HeadGOut,s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut] 3 s2Step313HeadBank_outgoingOwned

private theorem s2Step313HeadFv_distinct : (s2Step313HeadFvRow.sign::s2Step313HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313HeadFv_owned : (s2Step313HeadFvRow.sign::s2Step313HeadFvRow.payload).toFinset⊆s2Step313HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313HeadFv_reserved : s2Step313HeadFvBefore.reserve s2Step313HeadFvFresh.toFinset=some s2Step313HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step313HeadFvFresh,arenaWires]
  · norm_num [s2Step313HeadFvBefore,s2Step313HeadGvAfter,s2Step313HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step313HeadFvAfter,s2Step313HeadFvBefore,s2Step313HeadGvAfter,s2Step313HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step313HeadFv_checked : planRowResizeLog s2Step313HeadFvBefore s2Step313HeadFvRow 173 s2Step313HeadFvFresh=
    some (s2Step313HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 787],770⟩,growRow 770 s2Step313HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step313HeadFvBefore s2Step313HeadFvAfter s2Step313HeadFvRow 173 s2Step313HeadFvFresh
    s2Step313HeadFv_distinct s2Step313HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step313HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step313HeadFvRow.payload++s2Step313HeadFvFresh) s2Step313HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step313HeadG_Incoming : rowsOwned s2Step313HeadGBefore [s2Step313HeadGRow,s2Step313HeadFRow,s2Step313HeadGvRow,s2Step313HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313HeadGRow,s2Step313HeadFRow,s2Step313HeadGvRow,s2Step313HeadFvRow] 0 s2Step313HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313HeadG_Outgoing : rowsOwned s2Step313HeadFvAfter [s2Step313HeadGOut,s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut] :=
  hmrRows_owned_drop s2Step313HeadFvAfter [s2Step313HeadGOut,s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut] 0 s2Step313HeadBank_outgoingOwned

private theorem s2Step313HeadG_distinct : (s2Step313HeadGRow.sign::s2Step313HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313HeadG_owned : (s2Step313HeadGRow.sign::s2Step313HeadGRow.payload).toFinset⊆s2Step313HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313HeadG_reserved : s2Step313HeadGBefore.reserve s2Step313HeadGFresh.toFinset=some s2Step313HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step313HeadGFresh,arenaWires]
  · norm_num [s2Step313HeadGBefore,s2Step313HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step313HeadGAfter,s2Step313HeadGBefore,s2Step313HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step313HeadG_checked : planRowResizeLog s2Step313HeadGBefore s2Step313HeadGRow 115 s2Step313HeadGFresh=
    some (s2Step313HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 810],769⟩,growRow 769 s2Step313HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step313HeadGBefore s2Step313HeadGAfter s2Step313HeadGRow 115 s2Step313HeadGFresh
    s2Step313HeadG_distinct s2Step313HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step313HeadG_reserved
  have rowEq : WindowRow.mk (s2Step313HeadGRow.payload++s2Step313HeadGFresh) s2Step313HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step313HeadGvBefore : Arena := s2Step313HeadFAfter

private theorem s2Step313HeadGv_Incoming : rowsOwned s2Step313HeadGvBefore [s2Step313HeadGvRow,s2Step313HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step313HeadGRow,s2Step313HeadFRow,s2Step313HeadGvRow,s2Step313HeadFvRow] 2 s2Step313HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step313HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step313HeadGv_Outgoing : rowsOwned s2Step313HeadFvAfter [s2Step313HeadGvOut,s2Step313HeadFvOut] :=
  hmrRows_owned_drop s2Step313HeadFvAfter [s2Step313HeadGOut,s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut] 2 s2Step313HeadBank_outgoingOwned

private theorem s2Step313HeadGv_distinct : (s2Step313HeadGvRow.sign::s2Step313HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step313HeadGv_owned : (s2Step313HeadGvRow.sign::s2Step313HeadGvRow.payload).toFinset⊆s2Step313HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step313HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step313HeadGv_reserved : s2Step313HeadGvBefore.reserve s2Step313HeadGvFresh.toFinset=some s2Step313HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step313HeadGvFresh,arenaWires]
  · norm_num [s2Step313HeadGvBefore,s2Step313HeadFAfter,s2Step313HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step313HeadGvAfter,s2Step313HeadGvBefore,s2Step313HeadFAfter,s2Step313HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step313HeadGv_checked : planRowResizeLog s2Step313HeadGvBefore s2Step313HeadGvRow 173 s2Step313HeadGvFresh=
    some (s2Step313HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 834],771⟩,growRow 771 s2Step313HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step313HeadGvBefore s2Step313HeadGvAfter s2Step313HeadGvRow 173 s2Step313HeadGvFresh
    s2Step313HeadGv_distinct s2Step313HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step313HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step313HeadGvRow.payload++s2Step313HeadGvFresh) s2Step313HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 834],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step313HeadBank_rows : planWindowRowsLog s2Step313HeadGBefore [(s2Step313HeadGRow,115),(s2Step313HeadFRow,115),(s2Step313HeadGvRow,173),(s2Step313HeadFvRow,173)] [s2Step313HeadGFresh,s2Step313HeadFFresh,s2Step313HeadGvFresh,s2Step313HeadFvFresh]=
    some (s2Step313HeadFvAfter,[s2Step313HeadGOut,s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut],(growRow 769 s2Step313HeadGFresh ++ (growRow 768 s2Step313HeadFFresh ++ (growRow 771 s2Step313HeadGvFresh ++ (growRow 770 s2Step313HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step313HeadFvAfter [] []=some (s2Step313HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step313HeadFvBefore s2Step313HeadFvAfter s2Step313HeadFvAfter
    s2Step313HeadFvRow s2Step313HeadFvOut 173 s2Step313HeadFvFresh [] [] []
    (growRow 770 s2Step313HeadFvFresh) ([]) s2Step313HeadFv_Incoming s2Step313HeadFv_checked h4 s2Step313HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step313HeadGvBefore s2Step313HeadGvAfter s2Step313HeadFvAfter
    s2Step313HeadGvRow s2Step313HeadGvOut 173 s2Step313HeadGvFresh [(s2Step313HeadFvRow,173)] [s2Step313HeadFvFresh] [s2Step313HeadFvOut]
    (growRow 771 s2Step313HeadGvFresh) ((growRow 770 s2Step313HeadFvFresh ++ [])) s2Step313HeadGv_Incoming s2Step313HeadGv_checked h3 s2Step313HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step313HeadFBefore s2Step313HeadFAfter s2Step313HeadFvAfter
    s2Step313HeadFRow s2Step313HeadFOut 115 s2Step313HeadFFresh [(s2Step313HeadGvRow,173),(s2Step313HeadFvRow,173)] [s2Step313HeadGvFresh,s2Step313HeadFvFresh] [s2Step313HeadGvOut,s2Step313HeadFvOut]
    (growRow 768 s2Step313HeadFFresh) ((growRow 771 s2Step313HeadGvFresh ++ (growRow 770 s2Step313HeadFvFresh ++ []))) s2Step313HeadF_Incoming s2Step313HeadF_checked h2 s2Step313HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step313HeadGBefore s2Step313HeadGAfter s2Step313HeadFvAfter
    s2Step313HeadGRow s2Step313HeadGOut 115 s2Step313HeadGFresh [(s2Step313HeadFRow,115),(s2Step313HeadGvRow,173),(s2Step313HeadFvRow,173)] [s2Step313HeadFFresh,s2Step313HeadGvFresh,s2Step313HeadFvFresh] [s2Step313HeadFOut,s2Step313HeadGvOut,s2Step313HeadFvOut]
    (growRow 769 s2Step313HeadGFresh) ((growRow 768 s2Step313HeadFFresh ++ (growRow 771 s2Step313HeadGvFresh ++ (growRow 770 s2Step313HeadFvFresh ++ [])))) s2Step313HeadG_Incoming s2Step313HeadG_checked h1 s2Step313HeadG_Outgoing
  exact h0

private theorem s2Step313HeadBank_checked : compileHmrBankResizeLog .headroom s2Step313HeadGBefore ⟨s2Step313HeadFRow,s2Step313HeadGRow,s2Step313HeadFvRow,s2Step313HeadGvRow⟩ ⟨115,115,173,173⟩ [s2Step313HeadGFresh,s2Step313HeadFFresh,s2Step313HeadGvFresh,s2Step313HeadFvFresh]=
    some (s2Step313HeadFvAfter,⟨s2Step313HeadFOut,s2Step313HeadGOut,s2Step313HeadFvOut,s2Step313HeadGvOut⟩,(growRow 769 s2Step313HeadGFresh ++ (growRow 768 s2Step313HeadFFresh ++ (growRow 771 s2Step313HeadGvFresh ++ (growRow 770 s2Step313HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step313HeadBank_rows]
  rfl

private theorem s2Step313Front_checked : compileHmrSourceFrontLog s2Step313EntryFBefore s2Step313FrontBank 114 172 ⟨114,113,172,172⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step313FrontLog=some s2Step313FrontPlan := by
  have pairEq : s2Step313FrontPair=⟨s2Step313HeadFRow,s2Step313HeadGRow,s2Step313HeadFvRow,s2Step313HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step313FrontHead=⟨s2Step313ExitFRow,s2Step313ExitGRow,s2Step313ExitFvRow,s2Step313ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step313Add0A=s2Step313FrontHead.f.wires := by decide +kernel
  have gEq : s2Step313Add0B=s2Step313FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step313Add1A=s2Step313FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step313Add1B=s2Step313FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step313EntryFBefore s2Step313FrontBank 114 172 ⟨114,113,172,172⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step313FrontLog s2Step313FrontPlan
  · exact s2Step313Front_entry
  · exact s2Step313EntryBank_checked
  · exact s2Step313Front_sigma
  · rfl
  · exact s2Step313Front_branch
  · rfl
  · simpa only [s2Step313FrontPlan,pairEq] using s2Step313HeadBank_checked
  · simpa only [s2Step313FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step313F4_checked
  · exact s2Step313Counter_checked
  · rfl
  · simpa only [s2Step313FrontPlan,headEq] using s2Step313ExitBank_checked

private theorem s2Step313Complete_explicit_checked : compileHmrEarlyStepLog s2Step313EntryFBefore s2Step313FrontBank 114 172 ⟨114,113,172,172⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step313CompleteLog=some s2Step313CompletePlan := by
  let Q := s2Step313EarlyControlPlan
  have hq := s2Step313EarlyControl_plan_checked
  have fv1 : s2Step313CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step313CompleteOut.fv.payload[2]?.getD s2Step313CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step313CompleteOut.fv.payload[3]?.getD s2Step313CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step313CompleteOut.fv.payload[4]?.getD s2Step313CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step313EntryFBefore s2Step313EarlyControlArena s2Step313FrontBank 114 172 ⟨114,113,172,172⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step313CompleteLog s2Step313FrontPlan Q
    s2Step313Front_checked s2Step313Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step313Complete_owned s2Step313Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step313EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 s2Step313CompleteOut.fv.second (s2Step313CompleteOut.fv.payload[2]?.getD s2Step313CompleteOut.fv.sign) (s2Step313CompleteOut.fv.payload[3]?.getD s2Step313CompleteOut.fv.sign) (s2Step313CompleteOut.fv.payload[4]?.getD s2Step313CompleteOut.fv.sign) 837 56 s2Step313EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep313Arena : Arena := s2Step313EntryFBefore
def s2PrivateStep313Bank : WindowBank := s2Step313FrontBank
def s2PrivateStep313Spec : HmrSourceWalkStepLog := ⟨114,172,⟨114,113,172,172⟩,56,.early s2Step313CompleteLog⟩
def s2PrivateStep313Plan : HmrSourceStepPlan := .early s2Step313CompletePlan
theorem s2PrivateStep313_source : s2PrivateStep313Spec=s2ObservedLogs304[9] := rfl
theorem s2PrivateStep313_checked : compileHmrSourceStepLog s2PrivateStep313Arena s2PrivateStep313Bank
    s2PrivateStep313Spec.fgWidth s2PrivateStep313Spec.vWidth s2PrivateStep313Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 313 s2PrivateStep313Spec.need none s2PrivateStep313Spec.log=some s2PrivateStep313Plan := by
  change compileHmrSourceStepLog s2Step313EntryFBefore s2Step313FrontBank 114 172 ⟨114,113,172,172⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 313 56 none (.early s2Step313CompleteLog)=some (.early s2Step313CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 313<498)]
  rw [s2Step313Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
