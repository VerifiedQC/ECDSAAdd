import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep296
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

private def s2Step298CompleteMoves : List (Wire × Wire) := []

private def s2Step298EarlyControlLog : HmrEarlyControlLog := ⟨[805, 847, 811, 783, 787],[820],[830],[800, 894, 896, 901, 903, 907],[]⟩

private def s2Step298FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [811], [], []],[[783], [847], [805], [882]],[[], [], [], []]⟩,[780],[806],[787],[820],[830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[787, 820, 830, 800]⟩

private def s2Step298CompleteLog : HmrEarlyStepLog := ⟨s2Step298FrontLog,s2Step298CompleteMoves,s2Step298EarlyControlLog⟩

private def s2Step298ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩

private def s2Step298ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step298ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step298ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩

private def s2Step298FrontOut : WindowBank := ⟨s2Step298ExitFOut,s2Step298ExitGOut,s2Step298ExitFvOut,s2Step298ExitGvOut⟩

private def s2Step298CompleteOut : WindowBank := s2Step298FrontOut.repacked s2Step298CompleteMoves

private def s2Step298EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step298EarlyControlPositiveArena,[820],s2Step298EarlyControlEqualityArena,[830],⟨⟨780,false⟩,[⟨⟨820,false⟩,830⟩]⟩⟩

private def s2Step298EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<908)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨774,false⟩,847⟩,⟨⟨775,false⟩,811⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,787⟩]⟩

private def s2Step298EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step298EarlyControlZeroArena,s2Step298EarlyControlZeroPlan,s2Step298EarlyControlClassPlan,s2Step298EarlyControlFlagArena,s2Step298EarlyControlFittedArena,s2Step298EarlyControlHistoryArena,s2Step298EarlyControlSigmaArena,s2Step298EarlyControlOutputArena,s2Step298EarlyControlLog⟩

private def s2Step298CounterWork : List Wire := [787, 820, 830, 800]

private theorem s2Step298Counter_bounded : s2Step298CounterWork.toFinset⊆arenaWires := by norm_num [s2Step298CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step298HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298CounterDuring : Arena := ⟨s2Step298HeadFvAfter.live∪s2Step298CounterWork.toFinset,Finset.union_subset s2Step298HeadFvAfter.bounded s2Step298Counter_bounded⟩

private def s2Step298EntryFFresh : List Wire := []

private def s2Step298EntryFvFresh : List Wire := []

private def s2Step298EntryGFresh : List Wire := [811]

private def s2Step298EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EntryGvAfter : Arena := s2Step298EntryGAfter

private def s2Step298EntryGvFresh : List Wire := []

private def s2Step298ExitFExtra : List Wire := [847]

private def s2Step298ExitGExtra : List Wire := [811, 783]

private def s2Step298ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298ExitGvExtra : List Wire := [805]

private def s2Step298Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step298Add0_bounded : s2Step298Add0Work.toFinset⊆arenaWires := by
  have h : s2Step298Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step298Add0During : Arena := ⟨s2Step298Add0Arena.live∪s2Step298Add0Work.toFinset,Finset.union_subset s2Step298Add0Arena.bounded s2Step298Add0_bounded⟩

private def s2Step298Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step298Add1_bounded : s2Step298Add1Work.toFinset⊆arenaWires := by
  have h : s2Step298Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step298Add1During : Arena := ⟨s2Step298Add1Arena.live∪s2Step298Add1Work.toFinset,Finset.union_subset s2Step298Add1Arena.bounded s2Step298Add1_bounded⟩

private def s2Step298F4FlagArena : Arena := ⟨s2Step298HeadFvAfter.live∪{787},Finset.union_subset s2Step298HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step298F4Plan : HmrHybridF4Plan := ⟨s2Step298F4FlagArena,[787],s2Step298Add0Arena,[820],s2Step298Add0During,s2Step298Add0Work,s2Step298Add1During,s2Step298Add1Work⟩

private def s2Step298HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 847],768⟩

private def s2Step298HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step298HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811, 783],769⟩

private def s2Step298HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 805],771⟩

private def s2Step298FrontHead : WindowBank := ⟨s2Step298HeadFOut,s2Step298HeadGOut,s2Step298HeadFvOut,s2Step298HeadGvOut⟩

private def s2Step298EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩

private def s2Step298EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step298EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811],769⟩

private def s2Step298EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩

private def s2Step298FrontPair : WindowBank := ⟨s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut⟩

private def s2Step298FrontSigmaArena : Arena := ⟨s2Step298EntryGvAfter.live∪{780},Finset.union_subset s2Step298EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step298HeadFFresh : List Wire := [847]

private def s2Step298HeadFvFresh : List Wire := [882]

private def s2Step298HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298HeadGFresh : List Wire := [783]

private def s2Step298HeadGvFresh : List Wire := [805]

private def s2Step298FrontPlan : HmrSourceFront := ⟨s2Step298EntryGvAfter,s2Step298FrontPair,(growRow 768 s2Step298EntryFFresh ++ (growRow 769 s2Step298EntryGFresh ++ (growRow 770 s2Step298EntryFvFresh ++ (growRow 771 s2Step298EntryGvFresh ++ [])))),s2Step298FrontSigmaArena,[780],s2Step298HeadGBefore,[806],
  s2Step298HeadFvAfter,s2Step298FrontHead,(growRow 769 s2Step298HeadGFresh ++ (growRow 768 s2Step298HeadFFresh ++ (growRow 771 s2Step298HeadGvFresh ++ (growRow 770 s2Step298HeadFvFresh ++ [])))),s2Step298F4Plan,s2Step298CounterDuring,s2Step298CounterWork,s2Step298ExitGvAfter,s2Step298FrontOut,(shrinkRow 769 s2Step298ExitGExtra ++ (shrinkRow 768 s2Step298ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step298ExitGvExtra ++ []))))⟩

private def s2Step298CompletePlan : HmrEarlyStepPlan := ⟨s2Step298FrontPlan,s2Step298EarlyControlArena,s2Step298EarlyControlPlan,s2Step298CompleteMoves⟩

private theorem s2Step298Complete_apart : List.Disjoint (s2Step298CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [780, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  have nd : ((s2Step298CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[780, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step298Complete_owned : (s2Step298CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298Complete_repack : s2Step298ExitGvAfter.checkRepack s2Step298CompleteMoves=some s2Step298EarlyControlArena := by rfl

private theorem s2Step298EarlyControl_branchOwned : ([806] : List Wire).toFinset⊆s2Step298EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_branch : compileHmrBranchRetirement s2Step298EarlyControlSigmaArena 806=some s2Step298EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step298EarlyControl_branchOwned
  · ext q
    simp [s2Step298EarlyControlOutputArena,s2Step298EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step298EarlyControl_classEqualityBorrow : s2Step298EarlyControlPositiveArena.checkBorrow (([780, 820] : List Wire).length-1) s2Step298EarlyControlLog.classWork=some s2Step298EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step298EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step298EarlyControlEqualityArena,s2Step298EarlyControlPositiveArena,s2Step298EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step298EarlyControl_classEqualityOwned : ([780, 820] : List Wire).toFinset⊆s2Step298EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_classEquality : compileHmrEqualityLog s2Step298EarlyControlPositiveArena [780, 820] 0 s2Step298EarlyControlLog.classWork=some (s2Step298EarlyControlEqualityArena,s2Step298EarlyControlLog.classWork,s2Step298EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step298EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step298EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step298EarlyControl_classOwned : ([777, 787, 780] : List Wire).toFinset⊆s2Step298EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_positiveBorrow : s2Step298EarlyControlZeroArena.checkBorrow (1) s2Step298EarlyControlLog.positiveWork=some s2Step298EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step298EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step298EarlyControlPositiveArena,s2Step298EarlyControlZeroArena,s2Step298EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step298EarlyControl_class : compileHmrSourceClassLog s2Step298EarlyControlZeroArena false 777 s2Step298EarlyControlZeroPlan.top 0 780 s2Step298EarlyControlLog.positiveWork s2Step298EarlyControlLog.classWork=some s2Step298EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step298EarlyControlClassPlan s2Step298EarlyControlZeroArena false 777 s2Step298EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s2Step298EarlyControl_classOwned
  · exact s2Step298EarlyControl_positiveBorrow
  · exact s2Step298EarlyControl_classEquality

private theorem s2Step298EarlyControl_entryRecordOwned : ([806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_entrySigmaOwned : ([780, 254] : List Wire).toFinset⊆s2Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_fitBorrow : s2Step298EarlyControlFlagArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step298EarlyControlLog.recordFresh=some s2Step298EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step298EarlyControlFlagArena (fun q => (0≤q ∧ q<908)) rfl
      decide +kernel
    · ext q
      simp [s2Step298EarlyControlFittedArena,s2Step298EarlyControlFlagArena,s2Step298EarlyControlLog,arenaWires]

private theorem s2Step298EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step298EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlFlagArena (fun q => (0≤q ∧ q<908)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_fit : compileHmrRecordGrowLog s2Step298EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step298EarlyControlLog.recordFresh=some s2Step298EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step298EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step298EarlyControl_fitBorrow

private theorem s2Step298EarlyControl_flagsBorrow : s2Step298EarlyControlEqualityArena.checkBorrow (6) s2Step298EarlyControlLog.flagWork=some s2Step298EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step298EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step298EarlyControlFlagArena,s2Step298EarlyControlEqualityArena,s2Step298EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step298EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step298EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_flags : compileHmrFlagsLog s2Step298EarlyControlClassPlan.equalityArena s2Step298EarlyControlClassPlan.equality.top 253 252 251 s2Step298EarlyControlLog.flagWork=some s2Step298EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step298EarlyControl_flagsOwned⟩
  · exact s2Step298EarlyControl_flagsBorrow

private theorem s2Step298EarlyControl_historyBorrow : s2Step298EarlyControlArena.checkBorrow ((55-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).length)) s2Step298EarlyControlLog.recordFresh=some s2Step298EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step298EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step298EarlyControlHistoryArena,s2Step298EarlyControlArena,s2Step298EarlyControlLog,arenaWires]

private theorem s2Step298EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] : List Wire).toFinset⊆s2Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_history : compileHmrRecordGrowLog s2Step298EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step298EarlyControlLog.recordFresh=some s2Step298EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step298EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step298EarlyControl_historyBorrow

private theorem s2Step298EarlyControl_sigmaOwned : ([254, 780] : List Wire).toFinset⊆s2Step298EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s2Step298EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_sigmaRelease : s2Step298EarlyControlHistoryArena.release {780} (fun _ => false)=some s2Step298EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step298EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step298EarlyControlSigmaArena,s2Step298EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step298EarlyControl_sigma : compileHmrSigmaDropLog s2Step298EarlyControlHistoryArena false 0 0 254 780 []=some s2Step298EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step298EarlyControl_sigmaOwned⟩
  · exact s2Step298EarlyControl_sigmaRelease

private theorem s2Step298EarlyControl_zeroBorrow : s2Step298EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step298EarlyControlLog.zeroWork=some s2Step298EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step298EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step298EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step298EarlyControlZeroArena,s2Step298EarlyControlArena,s2Step298EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step298EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step298EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step298EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EarlyControl_zero : compileHmrEqualityLog s2Step298EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step298EarlyControlLog.zeroWork=some (s2Step298EarlyControlZeroArena,s2Step298EarlyControlLog.zeroWork,s2Step298EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step298EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step298EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step298EarlyControl_logged : s2Step298EarlyControlPlan.Logged s2Step298EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 780 254 253 252 251 806 55 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step298EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step298EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step298EarlyControl_zero
  · exact s2Step298EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step298EarlyControl_flags
  · exact s2Step298EarlyControl_fit
  · exact s2Step298EarlyControl_history
  · exact s2Step298EarlyControl_sigma
  · exact s2Step298EarlyControl_branch

private theorem s2Step298EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step298EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 780 254 253 252 251 806 55 s2Step298EarlyControlLog=some s2Step298EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step298EarlyControlPlan s2Step298EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 780 254 253 252 251 806 55 s2Step298EarlyControl_logged

private def s2Step298EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩

private def s2Step298EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step298EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120],769⟩

private def s2Step298EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩

private def s2Step298FrontBank : WindowBank := ⟨s2Step298EntryFRow,s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow⟩

private def s2Step298Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 847, 768]

private def s2Step298Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811, 783, 769]

private def s2Step298Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 770]

private def s2Step298Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 805, 771]

private theorem s2Step298Counter_apart : Disjoint s2Step298HeadFvAfter.live s2Step298CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step298HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298Counter_borrowed : s2Step298HeadFvAfter.checkBorrow 4 s2Step298CounterWork=some s2Step298CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step298HeadFvAfter s2Step298CounterDuring s2Step298CounterWork.toFinset s2Step298Counter_bounded s2Step298Counter_apart rfl

private theorem s2Step298Counter_owned : (780::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step298HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step298HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298Counter_checked : compileHmrCounterStepLog s2Step298HeadFvAfter true 780 [772, 773, 774, 775, 776, 777] s2Step298CounterWork=some s2Step298CounterDuring := by
  have owned : ∀q∈780::[772, 773, 774, 775, 776, 777],q∈s2Step298HeadFvAfter.live := fun q hq => s2Step298Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step298Counter_borrowed

private def s2Step298EntryFAfter : Arena := s2Step298EntryFBefore

private theorem s2Step298EntryBank_incomingDistinct : ([s2Step298EntryFRow,s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298EntryF_Incoming : rowsOwned s2Step298EntryFBefore [s2Step298EntryFRow,s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298EntryFRow,s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow] 0 s2Step298EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298EntryBank_outgoingOwned : rowsOwned s2Step298EntryGvAfter [s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step298EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298EntryF_Outgoing : rowsOwned s2Step298EntryGvAfter [s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut] :=
  hmrRows_owned_drop s2Step298EntryGvAfter [s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut] 0 s2Step298EntryBank_outgoingOwned

private theorem s2Step298EntryF_distinct : (s2Step298EntryFRow.sign::s2Step298EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298EntryF_owned : (s2Step298EntryFRow.sign::s2Step298EntryFRow.payload).toFinset⊆s2Step298EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EntryF_reserved : s2Step298EntryFBefore.reserve s2Step298EntryFFresh.toFinset=some s2Step298EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step298EntryFFresh,arenaWires]
  · norm_num [s2Step298EntryFBefore,s2Step298EntryFFresh,arenaWires]
  · simp only [s2Step298EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step298EntryF_checked : planRowResizeLog s2Step298EntryFBefore s2Step298EntryFRow 122 s2Step298EntryFFresh=
    some (s2Step298EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩,growRow 768 s2Step298EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step298EntryFBefore s2Step298EntryFAfter s2Step298EntryFRow 122 s2Step298EntryFFresh
    s2Step298EntryF_distinct s2Step298EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298EntryF_reserved
  have rowEq : WindowRow.mk (s2Step298EntryFRow.payload++s2Step298EntryFFresh) s2Step298EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step298EntryFvAfter : Arena := s2Step298EntryGAfter

private def s2Step298EntryFvBefore : Arena := s2Step298EntryGAfter

private theorem s2Step298EntryFv_Incoming : rowsOwned s2Step298EntryFvBefore [s2Step298EntryFvRow,s2Step298EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298EntryFRow,s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow] 2 s2Step298EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298EntryFv_Outgoing : rowsOwned s2Step298EntryGvAfter [s2Step298EntryFvOut,s2Step298EntryGvOut] :=
  hmrRows_owned_drop s2Step298EntryGvAfter [s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut] 2 s2Step298EntryBank_outgoingOwned

private theorem s2Step298EntryFv_distinct : (s2Step298EntryFvRow.sign::s2Step298EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298EntryFv_owned : (s2Step298EntryFvRow.sign::s2Step298EntryFvRow.payload).toFinset⊆s2Step298EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EntryFv_reserved : s2Step298EntryFvBefore.reserve s2Step298EntryFvFresh.toFinset=some s2Step298EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step298EntryFvFresh,arenaWires]
  · norm_num [s2Step298EntryFvBefore,s2Step298EntryGAfter,s2Step298EntryFvFresh,arenaWires]
  · simp only [s2Step298EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step298EntryFv_checked : planRowResizeLog s2Step298EntryFvBefore s2Step298EntryFvRow 164 s2Step298EntryFvFresh=
    some (s2Step298EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩,growRow 770 s2Step298EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step298EntryFvBefore s2Step298EntryFvAfter s2Step298EntryFvRow 164 s2Step298EntryFvFresh
    s2Step298EntryFv_distinct s2Step298EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step298EntryFvRow.payload++s2Step298EntryFvFresh) s2Step298EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step298EntryGBefore : Arena := s2Step298EntryFBefore

private theorem s2Step298EntryG_Incoming : rowsOwned s2Step298EntryGBefore [s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298EntryFRow,s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow] 1 s2Step298EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298EntryG_Outgoing : rowsOwned s2Step298EntryGvAfter [s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut] :=
  hmrRows_owned_drop s2Step298EntryGvAfter [s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut] 1 s2Step298EntryBank_outgoingOwned

private theorem s2Step298EntryG_distinct : (s2Step298EntryGRow.sign::s2Step298EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298EntryG_owned : (s2Step298EntryGRow.sign::s2Step298EntryGRow.payload).toFinset⊆s2Step298EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EntryG_reserved : s2Step298EntryGBefore.reserve s2Step298EntryGFresh.toFinset=some s2Step298EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step298EntryGFresh,arenaWires]
  · norm_num [s2Step298EntryGBefore,s2Step298EntryFBefore,s2Step298EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step298EntryGAfter,s2Step298EntryGBefore,s2Step298EntryFBefore,s2Step298EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step298EntryG_checked : planRowResizeLog s2Step298EntryGBefore s2Step298EntryGRow 122 s2Step298EntryGFresh=
    some (s2Step298EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811],769⟩,growRow 769 s2Step298EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step298EntryGBefore s2Step298EntryGAfter s2Step298EntryGRow 122 s2Step298EntryGFresh
    s2Step298EntryG_distinct s2Step298EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298EntryG_reserved
  have rowEq : WindowRow.mk (s2Step298EntryGRow.payload++s2Step298EntryGFresh) s2Step298EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step298EntryGvBefore : Arena := s2Step298EntryGAfter

private theorem s2Step298EntryGv_Incoming : rowsOwned s2Step298EntryGvBefore [s2Step298EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298EntryFRow,s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow] 3 s2Step298EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298EntryGv_Outgoing : rowsOwned s2Step298EntryGvAfter [s2Step298EntryGvOut] :=
  hmrRows_owned_drop s2Step298EntryGvAfter [s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut] 3 s2Step298EntryBank_outgoingOwned

private theorem s2Step298EntryGv_distinct : (s2Step298EntryGvRow.sign::s2Step298EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298EntryGv_owned : (s2Step298EntryGvRow.sign::s2Step298EntryGvRow.payload).toFinset⊆s2Step298EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298EntryGv_reserved : s2Step298EntryGvBefore.reserve s2Step298EntryGvFresh.toFinset=some s2Step298EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step298EntryGvFresh,arenaWires]
  · norm_num [s2Step298EntryGvBefore,s2Step298EntryGAfter,s2Step298EntryGvFresh,arenaWires]
  · simp only [s2Step298EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step298EntryGv_checked : planRowResizeLog s2Step298EntryGvBefore s2Step298EntryGvRow 164 s2Step298EntryGvFresh=
    some (s2Step298EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩,growRow 771 s2Step298EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step298EntryGvBefore s2Step298EntryGvAfter s2Step298EntryGvRow 164 s2Step298EntryGvFresh
    s2Step298EntryGv_distinct s2Step298EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step298EntryGvRow.payload++s2Step298EntryGvFresh) s2Step298EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step298EntryBank_rows : planWindowRowsLog s2Step298EntryFBefore [(s2Step298EntryFRow,122),(s2Step298EntryGRow,122),(s2Step298EntryFvRow,164),(s2Step298EntryGvRow,164)] [s2Step298EntryFFresh,s2Step298EntryGFresh,s2Step298EntryFvFresh,s2Step298EntryGvFresh]=
    some (s2Step298EntryGvAfter,[s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut],(growRow 768 s2Step298EntryFFresh ++ (growRow 769 s2Step298EntryGFresh ++ (growRow 770 s2Step298EntryFvFresh ++ (growRow 771 s2Step298EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step298EntryGvAfter [] []=some (s2Step298EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step298EntryGvBefore s2Step298EntryGvAfter s2Step298EntryGvAfter
    s2Step298EntryGvRow s2Step298EntryGvOut 164 s2Step298EntryGvFresh [] [] []
    (growRow 771 s2Step298EntryGvFresh) ([]) s2Step298EntryGv_Incoming s2Step298EntryGv_checked h4 s2Step298EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step298EntryFvBefore s2Step298EntryFvAfter s2Step298EntryGvAfter
    s2Step298EntryFvRow s2Step298EntryFvOut 164 s2Step298EntryFvFresh [(s2Step298EntryGvRow,164)] [s2Step298EntryGvFresh] [s2Step298EntryGvOut]
    (growRow 770 s2Step298EntryFvFresh) ((growRow 771 s2Step298EntryGvFresh ++ [])) s2Step298EntryFv_Incoming s2Step298EntryFv_checked h3 s2Step298EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step298EntryGBefore s2Step298EntryGAfter s2Step298EntryGvAfter
    s2Step298EntryGRow s2Step298EntryGOut 122 s2Step298EntryGFresh [(s2Step298EntryFvRow,164),(s2Step298EntryGvRow,164)] [s2Step298EntryFvFresh,s2Step298EntryGvFresh] [s2Step298EntryFvOut,s2Step298EntryGvOut]
    (growRow 769 s2Step298EntryGFresh) ((growRow 770 s2Step298EntryFvFresh ++ (growRow 771 s2Step298EntryGvFresh ++ []))) s2Step298EntryG_Incoming s2Step298EntryG_checked h2 s2Step298EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step298EntryFBefore s2Step298EntryFAfter s2Step298EntryGvAfter
    s2Step298EntryFRow s2Step298EntryFOut 122 s2Step298EntryFFresh [(s2Step298EntryGRow,122),(s2Step298EntryFvRow,164),(s2Step298EntryGvRow,164)] [s2Step298EntryGFresh,s2Step298EntryFvFresh,s2Step298EntryGvFresh] [s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut]
    (growRow 768 s2Step298EntryFFresh) ((growRow 769 s2Step298EntryGFresh ++ (growRow 770 s2Step298EntryFvFresh ++ (growRow 771 s2Step298EntryGvFresh ++ [])))) s2Step298EntryF_Incoming s2Step298EntryF_checked h1 s2Step298EntryF_Outgoing
  exact h0

private theorem s2Step298EntryBank_checked : compileHmrBankResizeLog .entry s2Step298EntryFBefore ⟨s2Step298EntryFRow,s2Step298EntryGRow,s2Step298EntryFvRow,s2Step298EntryGvRow⟩ ⟨122,122,164,164⟩ [s2Step298EntryFFresh,s2Step298EntryGFresh,s2Step298EntryFvFresh,s2Step298EntryGvFresh]=
    some (s2Step298EntryGvAfter,⟨s2Step298EntryFOut,s2Step298EntryGOut,s2Step298EntryFvOut,s2Step298EntryGvOut⟩,(growRow 768 s2Step298EntryFFresh ++ (growRow 769 s2Step298EntryGFresh ++ (growRow 770 s2Step298EntryFvFresh ++ (growRow 771 s2Step298EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step298EntryBank_rows]
  rfl

private def s2Step298ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298ExitFBefore : Arena := s2Step298ExitGAfter

private def s2Step298ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 847],768⟩

private def s2Step298ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩

private def s2Step298ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811, 783],769⟩

private def s2Step298ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 805],771⟩

private theorem s2Step298ExitBank_incomingDistinct : ([s2Step298ExitGRow,s2Step298ExitFRow,s2Step298ExitFvRow,s2Step298ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298ExitF_Incoming : rowsOwned s2Step298ExitFBefore [s2Step298ExitFRow,s2Step298ExitFvRow,s2Step298ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298ExitGRow,s2Step298ExitFRow,s2Step298ExitFvRow,s2Step298ExitGvRow] 1 s2Step298ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298ExitBank_outgoingOwned : rowsOwned s2Step298ExitGvAfter [s2Step298ExitGOut,s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step298ExitGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298ExitF_Outgoing : rowsOwned s2Step298ExitGvAfter [s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut] :=
  hmrRows_owned_drop s2Step298ExitGvAfter [s2Step298ExitGOut,s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut] 1 s2Step298ExitBank_outgoingOwned

private theorem s2Step298ExitF_distinct : (s2Step298ExitFRow.sign::s2Step298ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298ExitF_owned : (s2Step298ExitFRow.sign::s2Step298ExitFRow.payload).toFinset⊆s2Step298ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298ExitF_retired : s2Step298ExitFBefore.retireSet s2Step298ExitFExtra.toFinset=s2Step298ExitFAfter := by
  unfold Arena.retireSet s2Step298ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step298ExitFBefore,s2Step298ExitGAfter,s2Step298ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step298ExitF_checked : planRowResizeLog s2Step298ExitFBefore s2Step298ExitFRow 122 []=
    some (s2Step298ExitFAfter,s2Step298ExitFOut,shrinkRow 768 s2Step298ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step298ExitFBefore s2Step298ExitFRow 122 s2Step298ExitF_distinct s2Step298ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step298ExitFRow.payload.take 122) s2Step298ExitFRow.sign=s2Step298ExitFOut := by decide +kernel
  have hi : s2Step298ExitFRow.payload.drop 122=s2Step298ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step298ExitF_retired] at result
  exact result

private def s2Step298ExitFvAfter : Arena := s2Step298ExitFAfter

private def s2Step298ExitFvBefore : Arena := s2Step298ExitFAfter

private theorem s2Step298ExitFv_Incoming : rowsOwned s2Step298ExitFvBefore [s2Step298ExitFvRow,s2Step298ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298ExitGRow,s2Step298ExitFRow,s2Step298ExitFvRow,s2Step298ExitGvRow] 2 s2Step298ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298ExitFv_Outgoing : rowsOwned s2Step298ExitGvAfter [s2Step298ExitFvOut,s2Step298ExitGvOut] :=
  hmrRows_owned_drop s2Step298ExitGvAfter [s2Step298ExitGOut,s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut] 2 s2Step298ExitBank_outgoingOwned

private theorem s2Step298ExitFv_distinct : (s2Step298ExitFvRow.sign::s2Step298ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298ExitFv_owned : (s2Step298ExitFvRow.sign::s2Step298ExitFvRow.payload).toFinset⊆s2Step298ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298ExitFv_reserved : s2Step298ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step298ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step298ExitFv_checked : planRowResizeLog s2Step298ExitFvBefore s2Step298ExitFvRow 165 []=
    some (s2Step298ExitFvAfter,s2Step298ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step298ExitFvBefore s2Step298ExitFvAfter s2Step298ExitFvRow 165 []
    s2Step298ExitFv_distinct s2Step298ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step298ExitFvRow.payload++[]) s2Step298ExitFvRow.sign=s2Step298ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step298ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step298ExitG_Incoming : rowsOwned s2Step298ExitGBefore [s2Step298ExitGRow,s2Step298ExitFRow,s2Step298ExitFvRow,s2Step298ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298ExitGRow,s2Step298ExitFRow,s2Step298ExitFvRow,s2Step298ExitGvRow] 0 s2Step298ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298ExitG_Outgoing : rowsOwned s2Step298ExitGvAfter [s2Step298ExitGOut,s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut] :=
  hmrRows_owned_drop s2Step298ExitGvAfter [s2Step298ExitGOut,s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut] 0 s2Step298ExitBank_outgoingOwned

private theorem s2Step298ExitG_distinct : (s2Step298ExitGRow.sign::s2Step298ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298ExitG_owned : (s2Step298ExitGRow.sign::s2Step298ExitGRow.payload).toFinset⊆s2Step298ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298ExitG_retired : s2Step298ExitGBefore.retireSet s2Step298ExitGExtra.toFinset=s2Step298ExitGAfter := by
  unfold Arena.retireSet s2Step298ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step298ExitGBefore,s2Step298ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step298ExitG_checked : planRowResizeLog s2Step298ExitGBefore s2Step298ExitGRow 121 []=
    some (s2Step298ExitGAfter,s2Step298ExitGOut,shrinkRow 769 s2Step298ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step298ExitGBefore s2Step298ExitGRow 121 s2Step298ExitG_distinct s2Step298ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step298ExitGRow.payload.take 121) s2Step298ExitGRow.sign=s2Step298ExitGOut := by decide +kernel
  have hi : s2Step298ExitGRow.payload.drop 121=s2Step298ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step298ExitG_retired] at result
  exact result

private def s2Step298ExitGvBefore : Arena := s2Step298ExitFAfter

private theorem s2Step298ExitGv_Incoming : rowsOwned s2Step298ExitGvBefore [s2Step298ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298ExitGRow,s2Step298ExitFRow,s2Step298ExitFvRow,s2Step298ExitGvRow] 3 s2Step298ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298ExitGv_Outgoing : rowsOwned s2Step298ExitGvAfter [s2Step298ExitGvOut] :=
  hmrRows_owned_drop s2Step298ExitGvAfter [s2Step298ExitGOut,s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut] 3 s2Step298ExitBank_outgoingOwned

private theorem s2Step298ExitGv_distinct : (s2Step298ExitGvRow.sign::s2Step298ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298ExitGv_owned : (s2Step298ExitGvRow.sign::s2Step298ExitGvRow.payload).toFinset⊆s2Step298ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298ExitGv_retired : s2Step298ExitGvBefore.retireSet s2Step298ExitGvExtra.toFinset=s2Step298ExitGvAfter := by
  unfold Arena.retireSet s2Step298ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step298ExitGvBefore,s2Step298ExitFAfter,s2Step298ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step298ExitGv_checked : planRowResizeLog s2Step298ExitGvBefore s2Step298ExitGvRow 164 []=
    some (s2Step298ExitGvAfter,s2Step298ExitGvOut,shrinkRow 771 s2Step298ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step298ExitGvBefore s2Step298ExitGvRow 164 s2Step298ExitGv_distinct s2Step298ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step298ExitGvRow.payload.take 164) s2Step298ExitGvRow.sign=s2Step298ExitGvOut := by decide +kernel
  have hi : s2Step298ExitGvRow.payload.drop 164=s2Step298ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step298ExitGv_retired] at result
  exact result

private theorem s2Step298ExitBank_rows : planWindowRowsLog s2Step298ExitGBefore [(s2Step298ExitGRow,121),(s2Step298ExitFRow,122),(s2Step298ExitFvRow,165),(s2Step298ExitGvRow,164)] [[],[],[],[]]=
    some (s2Step298ExitGvAfter,[s2Step298ExitGOut,s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut],(shrinkRow 769 s2Step298ExitGExtra ++ (shrinkRow 768 s2Step298ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step298ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step298ExitGvAfter [] []=some (s2Step298ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step298ExitGvBefore s2Step298ExitGvAfter s2Step298ExitGvAfter
    s2Step298ExitGvRow s2Step298ExitGvOut 164 [] [] [] []
    (shrinkRow 771 s2Step298ExitGvExtra) ([]) s2Step298ExitGv_Incoming s2Step298ExitGv_checked h4 s2Step298ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step298ExitFvBefore s2Step298ExitFvAfter s2Step298ExitGvAfter
    s2Step298ExitFvRow s2Step298ExitFvOut 165 [] [(s2Step298ExitGvRow,164)] [[]] [s2Step298ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step298ExitGvExtra ++ [])) s2Step298ExitFv_Incoming s2Step298ExitFv_checked h3 s2Step298ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step298ExitFBefore s2Step298ExitFAfter s2Step298ExitGvAfter
    s2Step298ExitFRow s2Step298ExitFOut 122 [] [(s2Step298ExitFvRow,165),(s2Step298ExitGvRow,164)] [[],[]] [s2Step298ExitFvOut,s2Step298ExitGvOut]
    (shrinkRow 768 s2Step298ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step298ExitGvExtra ++ []))) s2Step298ExitF_Incoming s2Step298ExitF_checked h2 s2Step298ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step298ExitGBefore s2Step298ExitGAfter s2Step298ExitGvAfter
    s2Step298ExitGRow s2Step298ExitGOut 121 [] [(s2Step298ExitFRow,122),(s2Step298ExitFvRow,165),(s2Step298ExitGvRow,164)] [[],[],[]] [s2Step298ExitFOut,s2Step298ExitFvOut,s2Step298ExitGvOut]
    (shrinkRow 769 s2Step298ExitGExtra) ((shrinkRow 768 s2Step298ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step298ExitGvExtra ++ [])))) s2Step298ExitG_Incoming s2Step298ExitG_checked h1 s2Step298ExitG_Outgoing
  exact h0

private theorem s2Step298ExitBank_checked : compileHmrBankResizeLog .exit s2Step298ExitGBefore ⟨s2Step298ExitFRow,s2Step298ExitGRow,s2Step298ExitFvRow,s2Step298ExitGvRow⟩ ⟨122,121,165,164⟩ [[],[],[],[]]=
    some (s2Step298ExitGvAfter,⟨s2Step298ExitFOut,s2Step298ExitGOut,s2Step298ExitFvOut,s2Step298ExitGvOut⟩,(shrinkRow 769 s2Step298ExitGExtra ++ (shrinkRow 768 s2Step298ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step298ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step298ExitBank_rows]
  rfl

private theorem s2Step298Add0_apart : Disjoint s2Step298Add0Arena.live s2Step298Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step298Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298Add0_card : s2Step298Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step298Add0_borrowed : s2Step298Add0Arena.checkBorrow (hmrHybridCount s2Step298Add0Arena s2Step298Add0B.length) s2Step298Add0Work=some s2Step298Add0During := by
  have len : s2Step298Add0Work.length=hmrHybridCount s2Step298Add0Arena s2Step298Add0B.length := by
    rw [hmrHybridCount,s2Step298Add0_card]
    decide +kernel
  have nd : s2Step298Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step298Add0Arena s2Step298Add0During s2Step298Add0Work.toFinset s2Step298Add0_bounded s2Step298Add0_apart rfl

private theorem s2Step298Add0_distinct : (787::806::820::(s2Step298Add0A++s2Step298Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298Add0_owned : (787::806::820::(s2Step298Add0A++s2Step298Add0B)).toFinset⊆s2Step298Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step298Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298Add0_checked : compileHmrHybridCinLog s2Step298Add0Arena 806 787 820 s2Step298Add0A s2Step298Add0B s2Step298Add0Work=some s2Step298Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step298Add0Arena s2Step298Add0During 806 787 820 s2Step298Add0A s2Step298Add0B s2Step298Add0Work
    (by decide +kernel) (by decide +kernel) s2Step298Add0_distinct
    (fun q hq => s2Step298Add0_owned (List.mem_toFinset.mpr hq)) s2Step298Add0_borrowed

private theorem s2Step298Add1_apart : Disjoint s2Step298Add1Arena.live s2Step298Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step298Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298Add1_card : s2Step298Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step298Add1_borrowed : s2Step298Add1Arena.checkBorrow (hmrHybridCount s2Step298Add1Arena s2Step298Add1B.length) s2Step298Add1Work=some s2Step298Add1During := by
  have len : s2Step298Add1Work.length=hmrHybridCount s2Step298Add1Arena s2Step298Add1B.length := by
    rw [hmrHybridCount,s2Step298Add1_card]
    decide +kernel
  have nd : s2Step298Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step298Add1Arena s2Step298Add1During s2Step298Add1Work.toFinset s2Step298Add1_bounded s2Step298Add1_apart rfl

private theorem s2Step298Add1_distinct : (787::806::820::(s2Step298Add1A++s2Step298Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298Add1_owned : (787::806::820::(s2Step298Add1A++s2Step298Add1B)).toFinset⊆s2Step298Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step298Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298Add1_checked : compileHmrHybridCinLog s2Step298Add1Arena 806 787 820 s2Step298Add1A s2Step298Add1B s2Step298Add1Work=some s2Step298Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step298Add1Arena s2Step298Add1During 806 787 820 s2Step298Add1A s2Step298Add1B s2Step298Add1Work
    (by decide +kernel) (by decide +kernel) s2Step298Add1_distinct
    (fun q hq => s2Step298Add1_owned (List.mem_toFinset.mpr hq)) s2Step298Add1_borrowed

private theorem s2Step298F4_apart : Disjoint (s2Step298Add0A++s2Step298Add0B).toFinset (s2Step298Add1A++s2Step298Add1B).toFinset := by
  have nd : ((s2Step298Add0A++s2Step298Add0B)++(s2Step298Add1A++s2Step298Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step298F4_carry : s2Step298F4FlagArena.checkBorrow 1 [820]=some s2Step298Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step298F4FlagArena,s2Step298HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step298F4FlagArena,s2Step298HeadFvAfter,s2Step298Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step298F4_distinct : (780::806::787::820::((s2Step298Add0A++s2Step298Add1A)++(s2Step298Add0B++s2Step298Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298F4_flag : s2Step298HeadFvAfter.checkBorrow 1 [787]=some s2Step298F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step298HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step298F4_owned : (780::806::((s2Step298Add0A++s2Step298Add1A)++(s2Step298Add0B++s2Step298Add1B))).toFinset⊆s2Step298HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step298HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298F4_checked : compileHmrHybridF4Log s2Step298HeadFvAfter 780 806 s2Step298Add0A s2Step298Add0B s2Step298Add1A s2Step298Add1B [787] [820] s2Step298Add0Work s2Step298Add1Work=some s2Step298F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step298HeadFvAfter s2Step298F4FlagArena s2Step298Add0Arena s2Step298Add0During s2Step298Add1During 780 806
    s2Step298Add0A s2Step298Add0B s2Step298Add1A s2Step298Add1B [787] [820] s2Step298Add0Work s2Step298Add1Work
    (fun q hq => s2Step298F4_owned (List.mem_toFinset.mpr hq)) s2Step298F4_flag s2Step298F4_carry
    s2Step298F4_distinct s2Step298F4_apart s2Step298Add0_checked s2Step298Add1_checked

private theorem s2Step298Front_branch : s2Step298FrontSigmaArena.checkBorrow 1 [806]=some s2Step298HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step298FrontSigmaArena,s2Step298EntryGvAfter,s2Step298EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step298FrontSigmaArena,s2Step298EntryGvAfter,s2Step298EntryGAfter,s2Step298HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step298Front_entry : HmrFrontEntryValid s2Step298EntryFBefore s2Step298FrontBank 122 164 ⟨122,121,165,164⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step298FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step298EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step298EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step298FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step298Front_sigma : s2Step298EntryGvAfter.checkBorrow 1 [780]=some s2Step298FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step298EntryGvAfter,s2Step298EntryGAfter,arenaWires]
  · rfl

private def s2Step298HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298HeadFBefore : Arena := s2Step298HeadGAfter

private def s2Step298HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633],768⟩

private def s2Step298HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785],770⟩

private def s2Step298HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811],769⟩

private def s2Step298HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832],771⟩

private theorem s2Step298HeadBank_incomingDistinct : ([s2Step298HeadGRow,s2Step298HeadFRow,s2Step298HeadGvRow,s2Step298HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298HeadF_Incoming : rowsOwned s2Step298HeadFBefore [s2Step298HeadFRow,s2Step298HeadGvRow,s2Step298HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298HeadGRow,s2Step298HeadFRow,s2Step298HeadGvRow,s2Step298HeadFvRow] 1 s2Step298HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298HeadBank_outgoingOwned : rowsOwned s2Step298HeadFvAfter [s2Step298HeadGOut,s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step298HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298HeadF_Outgoing : rowsOwned s2Step298HeadFvAfter [s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut] :=
  hmrRows_owned_drop s2Step298HeadFvAfter [s2Step298HeadGOut,s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut] 1 s2Step298HeadBank_outgoingOwned

private theorem s2Step298HeadF_distinct : (s2Step298HeadFRow.sign::s2Step298HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298HeadF_owned : (s2Step298HeadFRow.sign::s2Step298HeadFRow.payload).toFinset⊆s2Step298HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298HeadF_reserved : s2Step298HeadFBefore.reserve s2Step298HeadFFresh.toFinset=some s2Step298HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step298HeadFFresh,arenaWires]
  · norm_num [s2Step298HeadFBefore,s2Step298HeadGAfter,s2Step298HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step298HeadFAfter,s2Step298HeadFBefore,s2Step298HeadGAfter,s2Step298HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step298HeadF_checked : planRowResizeLog s2Step298HeadFBefore s2Step298HeadFRow 123 s2Step298HeadFFresh=
    some (s2Step298HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 847],768⟩,growRow 768 s2Step298HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step298HeadFBefore s2Step298HeadFAfter s2Step298HeadFRow 123 s2Step298HeadFFresh
    s2Step298HeadF_distinct s2Step298HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298HeadF_reserved
  have rowEq : WindowRow.mk (s2Step298HeadFRow.payload++s2Step298HeadFFresh) s2Step298HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 847],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step298HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step298HeadFvBefore : Arena := s2Step298HeadGvAfter

private theorem s2Step298HeadFv_Incoming : rowsOwned s2Step298HeadFvBefore [s2Step298HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298HeadGRow,s2Step298HeadFRow,s2Step298HeadGvRow,s2Step298HeadFvRow] 3 s2Step298HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298HeadFv_Outgoing : rowsOwned s2Step298HeadFvAfter [s2Step298HeadFvOut] :=
  hmrRows_owned_drop s2Step298HeadFvAfter [s2Step298HeadGOut,s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut] 3 s2Step298HeadBank_outgoingOwned

private theorem s2Step298HeadFv_distinct : (s2Step298HeadFvRow.sign::s2Step298HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298HeadFv_owned : (s2Step298HeadFvRow.sign::s2Step298HeadFvRow.payload).toFinset⊆s2Step298HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298HeadFv_reserved : s2Step298HeadFvBefore.reserve s2Step298HeadFvFresh.toFinset=some s2Step298HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step298HeadFvFresh,arenaWires]
  · norm_num [s2Step298HeadFvBefore,s2Step298HeadGvAfter,s2Step298HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step298HeadFvAfter,s2Step298HeadFvBefore,s2Step298HeadGvAfter,s2Step298HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step298HeadFv_checked : planRowResizeLog s2Step298HeadFvBefore s2Step298HeadFvRow 165 s2Step298HeadFvFresh=
    some (s2Step298HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩,growRow 770 s2Step298HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step298HeadFvBefore s2Step298HeadFvAfter s2Step298HeadFvRow 165 s2Step298HeadFvFresh
    s2Step298HeadFv_distinct s2Step298HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step298HeadFvRow.payload++s2Step298HeadFvFresh) s2Step298HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step298HeadG_Incoming : rowsOwned s2Step298HeadGBefore [s2Step298HeadGRow,s2Step298HeadFRow,s2Step298HeadGvRow,s2Step298HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298HeadGRow,s2Step298HeadFRow,s2Step298HeadGvRow,s2Step298HeadFvRow] 0 s2Step298HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298HeadG_Outgoing : rowsOwned s2Step298HeadFvAfter [s2Step298HeadGOut,s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut] :=
  hmrRows_owned_drop s2Step298HeadFvAfter [s2Step298HeadGOut,s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut] 0 s2Step298HeadBank_outgoingOwned

private theorem s2Step298HeadG_distinct : (s2Step298HeadGRow.sign::s2Step298HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298HeadG_owned : (s2Step298HeadGRow.sign::s2Step298HeadGRow.payload).toFinset⊆s2Step298HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298HeadG_reserved : s2Step298HeadGBefore.reserve s2Step298HeadGFresh.toFinset=some s2Step298HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step298HeadGFresh,arenaWires]
  · norm_num [s2Step298HeadGBefore,s2Step298HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step298HeadGAfter,s2Step298HeadGBefore,s2Step298HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step298HeadG_checked : planRowResizeLog s2Step298HeadGBefore s2Step298HeadGRow 123 s2Step298HeadGFresh=
    some (s2Step298HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811, 783],769⟩,growRow 769 s2Step298HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step298HeadGBefore s2Step298HeadGAfter s2Step298HeadGRow 123 s2Step298HeadGFresh
    s2Step298HeadG_distinct s2Step298HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298HeadG_reserved
  have rowEq : WindowRow.mk (s2Step298HeadGRow.payload++s2Step298HeadGFresh) s2Step298HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 811, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step298HeadGvBefore : Arena := s2Step298HeadFAfter

private theorem s2Step298HeadGv_Incoming : rowsOwned s2Step298HeadGvBefore [s2Step298HeadGvRow,s2Step298HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step298HeadGRow,s2Step298HeadFRow,s2Step298HeadGvRow,s2Step298HeadFvRow] 2 s2Step298HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step298HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step298HeadGv_Outgoing : rowsOwned s2Step298HeadFvAfter [s2Step298HeadGvOut,s2Step298HeadFvOut] :=
  hmrRows_owned_drop s2Step298HeadFvAfter [s2Step298HeadGOut,s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut] 2 s2Step298HeadBank_outgoingOwned

private theorem s2Step298HeadGv_distinct : (s2Step298HeadGvRow.sign::s2Step298HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step298HeadGv_owned : (s2Step298HeadGvRow.sign::s2Step298HeadGvRow.payload).toFinset⊆s2Step298HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step298HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<820) ∨ (821≤q ∧ q<830) ∨ (831≤q ∧ q<882) ∨ (883≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step298HeadGv_reserved : s2Step298HeadGvBefore.reserve s2Step298HeadGvFresh.toFinset=some s2Step298HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step298HeadGvFresh,arenaWires]
  · norm_num [s2Step298HeadGvBefore,s2Step298HeadFAfter,s2Step298HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step298HeadGvAfter,s2Step298HeadGvBefore,s2Step298HeadFAfter,s2Step298HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step298HeadGv_checked : planRowResizeLog s2Step298HeadGvBefore s2Step298HeadGvRow 165 s2Step298HeadGvFresh=
    some (s2Step298HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 805],771⟩,growRow 771 s2Step298HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step298HeadGvBefore s2Step298HeadGvAfter s2Step298HeadGvRow 165 s2Step298HeadGvFresh
    s2Step298HeadGv_distinct s2Step298HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step298HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step298HeadGvRow.payload++s2Step298HeadGvFresh) s2Step298HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step298HeadBank_rows : planWindowRowsLog s2Step298HeadGBefore [(s2Step298HeadGRow,123),(s2Step298HeadFRow,123),(s2Step298HeadGvRow,165),(s2Step298HeadFvRow,165)] [s2Step298HeadGFresh,s2Step298HeadFFresh,s2Step298HeadGvFresh,s2Step298HeadFvFresh]=
    some (s2Step298HeadFvAfter,[s2Step298HeadGOut,s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut],(growRow 769 s2Step298HeadGFresh ++ (growRow 768 s2Step298HeadFFresh ++ (growRow 771 s2Step298HeadGvFresh ++ (growRow 770 s2Step298HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step298HeadFvAfter [] []=some (s2Step298HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step298HeadFvBefore s2Step298HeadFvAfter s2Step298HeadFvAfter
    s2Step298HeadFvRow s2Step298HeadFvOut 165 s2Step298HeadFvFresh [] [] []
    (growRow 770 s2Step298HeadFvFresh) ([]) s2Step298HeadFv_Incoming s2Step298HeadFv_checked h4 s2Step298HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step298HeadGvBefore s2Step298HeadGvAfter s2Step298HeadFvAfter
    s2Step298HeadGvRow s2Step298HeadGvOut 165 s2Step298HeadGvFresh [(s2Step298HeadFvRow,165)] [s2Step298HeadFvFresh] [s2Step298HeadFvOut]
    (growRow 771 s2Step298HeadGvFresh) ((growRow 770 s2Step298HeadFvFresh ++ [])) s2Step298HeadGv_Incoming s2Step298HeadGv_checked h3 s2Step298HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step298HeadFBefore s2Step298HeadFAfter s2Step298HeadFvAfter
    s2Step298HeadFRow s2Step298HeadFOut 123 s2Step298HeadFFresh [(s2Step298HeadGvRow,165),(s2Step298HeadFvRow,165)] [s2Step298HeadGvFresh,s2Step298HeadFvFresh] [s2Step298HeadGvOut,s2Step298HeadFvOut]
    (growRow 768 s2Step298HeadFFresh) ((growRow 771 s2Step298HeadGvFresh ++ (growRow 770 s2Step298HeadFvFresh ++ []))) s2Step298HeadF_Incoming s2Step298HeadF_checked h2 s2Step298HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step298HeadGBefore s2Step298HeadGAfter s2Step298HeadFvAfter
    s2Step298HeadGRow s2Step298HeadGOut 123 s2Step298HeadGFresh [(s2Step298HeadFRow,123),(s2Step298HeadGvRow,165),(s2Step298HeadFvRow,165)] [s2Step298HeadFFresh,s2Step298HeadGvFresh,s2Step298HeadFvFresh] [s2Step298HeadFOut,s2Step298HeadGvOut,s2Step298HeadFvOut]
    (growRow 769 s2Step298HeadGFresh) ((growRow 768 s2Step298HeadFFresh ++ (growRow 771 s2Step298HeadGvFresh ++ (growRow 770 s2Step298HeadFvFresh ++ [])))) s2Step298HeadG_Incoming s2Step298HeadG_checked h1 s2Step298HeadG_Outgoing
  exact h0

private theorem s2Step298HeadBank_checked : compileHmrBankResizeLog .headroom s2Step298HeadGBefore ⟨s2Step298HeadFRow,s2Step298HeadGRow,s2Step298HeadFvRow,s2Step298HeadGvRow⟩ ⟨123,123,165,165⟩ [s2Step298HeadGFresh,s2Step298HeadFFresh,s2Step298HeadGvFresh,s2Step298HeadFvFresh]=
    some (s2Step298HeadFvAfter,⟨s2Step298HeadFOut,s2Step298HeadGOut,s2Step298HeadFvOut,s2Step298HeadGvOut⟩,(growRow 769 s2Step298HeadGFresh ++ (growRow 768 s2Step298HeadFFresh ++ (growRow 771 s2Step298HeadGvFresh ++ (growRow 770 s2Step298HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step298HeadBank_rows]
  rfl

private theorem s2Step298Front_checked : compileHmrSourceFrontLog s2Step298EntryFBefore s2Step298FrontBank 122 164 ⟨122,121,165,164⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step298FrontLog=some s2Step298FrontPlan := by
  have pairEq : s2Step298FrontPair=⟨s2Step298HeadFRow,s2Step298HeadGRow,s2Step298HeadFvRow,s2Step298HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step298FrontHead=⟨s2Step298ExitFRow,s2Step298ExitGRow,s2Step298ExitFvRow,s2Step298ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step298Add0A=s2Step298FrontHead.f.wires := by decide +kernel
  have gEq : s2Step298Add0B=s2Step298FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step298Add1A=s2Step298FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step298Add1B=s2Step298FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step298EntryFBefore s2Step298FrontBank 122 164 ⟨122,121,165,164⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step298FrontLog s2Step298FrontPlan
  · exact s2Step298Front_entry
  · exact s2Step298EntryBank_checked
  · exact s2Step298Front_sigma
  · rfl
  · exact s2Step298Front_branch
  · rfl
  · simpa only [s2Step298FrontPlan,pairEq] using s2Step298HeadBank_checked
  · simpa only [s2Step298FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step298F4_checked
  · exact s2Step298Counter_checked
  · rfl
  · simpa only [s2Step298FrontPlan,headEq] using s2Step298ExitBank_checked

private theorem s2Step298Complete_explicit_checked : compileHmrEarlyStepLog s2Step298EntryFBefore s2Step298FrontBank 122 164 ⟨122,121,165,164⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step298CompleteLog=some s2Step298CompletePlan := by
  let Q := s2Step298EarlyControlPlan
  have hq := s2Step298EarlyControl_plan_checked
  have fv1 : s2Step298CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step298CompleteOut.fv.payload[2]?.getD s2Step298CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step298CompleteOut.fv.payload[3]?.getD s2Step298CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step298CompleteOut.fv.payload[4]?.getD s2Step298CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step298EntryFBefore s2Step298EarlyControlArena s2Step298FrontBank 122 164 ⟨122,121,165,164⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 55 s2Step298CompleteLog s2Step298FrontPlan Q
    s2Step298Front_checked s2Step298Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step298Complete_owned s2Step298Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step298EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 777 780 s2Step298CompleteOut.fv.second (s2Step298CompleteOut.fv.payload[2]?.getD s2Step298CompleteOut.fv.sign) (s2Step298CompleteOut.fv.payload[3]?.getD s2Step298CompleteOut.fv.sign) (s2Step298CompleteOut.fv.payload[4]?.getD s2Step298CompleteOut.fv.sign) 806 55 s2Step298EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep298Arena : Arena := s2Step298EntryFBefore
def s2PrivateStep298Bank : WindowBank := s2Step298FrontBank
def s2PrivateStep298Spec : HmrSourceWalkStepLog := ⟨122,164,⟨122,121,165,164⟩,55,.early s2Step298CompleteLog⟩
def s2PrivateStep298Plan : HmrSourceStepPlan := .early s2Step298CompletePlan
theorem s2PrivateStep298_source : s2PrivateStep298Spec=s2ObservedLogs288[10] := rfl
theorem s2PrivateStep298_checked : compileHmrSourceStepLog s2PrivateStep298Arena s2PrivateStep298Bank
    s2PrivateStep298Spec.fgWidth s2PrivateStep298Spec.vWidth s2PrivateStep298Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]
    6 498 298 s2PrivateStep298Spec.need none s2PrivateStep298Spec.log=some s2PrivateStep298Plan := by
  change compileHmrSourceStepLog s2Step298EntryFBefore s2Step298FrontBank 122 164 ⟨122,121,165,164⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] 6 498 298 55 none (.early s2Step298CompleteLog)=some (.early s2Step298CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 298<498)]
  rw [s2Step298Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
