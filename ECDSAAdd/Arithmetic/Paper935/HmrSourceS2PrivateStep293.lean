import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep291
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

private def s2Step293CompleteMoves : List (Wire × Wire) := [(820,636)]

private def s2Step293EarlyControlLog : HmrEarlyControlLog := ⟨[820, 787, 811, 780, 812],[821],[783],[847, 830, 800, 894, 896, 901],[]⟩

private def s2Step293FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [821, 783], [], [787]],[[847], [812], [811], [780]],[[], [], [], []]⟩,[849],[805],[830],[800],[894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step293CompleteLog : HmrEarlyStepLog := ⟨s2Step293FrontLog,s2Step293CompleteMoves,s2Step293EarlyControlLog⟩

private def s2Step293ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635],768⟩

private def s2Step293ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step293ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩

private def s2Step293ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private def s2Step293FrontOut : WindowBank := ⟨s2Step293ExitFOut,s2Step293ExitGOut,s2Step293ExitFvOut,s2Step293ExitGvOut⟩

private def s2Step293CompleteOut : WindowBank := s2Step293FrontOut.repacked s2Step293CompleteMoves

private def s2Step293EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step293EarlyControlPositiveArena,[821],s2Step293EarlyControlEqualityArena,[783],⟨⟨849,false⟩,[⟨⟨821,false⟩,783⟩]⟩⟩

private def s2Step293EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,820⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,811⟩,⟨⟨776,false⟩,780⟩,⟨⟨777,false⟩,812⟩]⟩

private def s2Step293EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step293EarlyControlZeroArena,s2Step293EarlyControlZeroPlan,s2Step293EarlyControlClassPlan,s2Step293EarlyControlFlagArena,s2Step293EarlyControlFittedArena,s2Step293EarlyControlHistoryArena,s2Step293EarlyControlSigmaArena,s2Step293EarlyControlOutputArena,s2Step293EarlyControlLog⟩

private def s2Step293CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step293Counter_bounded : s2Step293CounterWork.toFinset⊆arenaWires := by norm_num [s2Step293CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step293HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293CounterDuring : Arena := ⟨s2Step293HeadFvAfter.live∪s2Step293CounterWork.toFinset,Finset.union_subset s2Step293HeadFvAfter.bounded s2Step293Counter_bounded⟩

private def s2Step293EntryFFresh : List Wire := []

private def s2Step293EntryFvFresh : List Wire := []

private def s2Step293EntryGFresh : List Wire := [821, 783]

private def s2Step293EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EntryGvFresh : List Wire := [787]

private def s2Step293ExitFExtra : List Wire := [636, 812]

private def s2Step293ExitFvExtra : List Wire := [780]

private def s2Step293ExitGExtra : List Wire := [821, 783, 847]

private def s2Step293ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<636) ∨ (637≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293ExitGvExtra : List Wire := [787, 811]

private def s2Step293Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293Add0Work : List Wire := [894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step293Add0_bounded : s2Step293Add0Work.toFinset⊆arenaWires := by
  have h : s2Step293Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step293Add0During : Arena := ⟨s2Step293Add0Arena.live∪s2Step293Add0Work.toFinset,Finset.union_subset s2Step293Add0Arena.bounded s2Step293Add0_bounded⟩

private def s2Step293Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293Add1Work : List Wire := [894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step293Add1_bounded : s2Step293Add1Work.toFinset⊆arenaWires := by
  have h : s2Step293Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step293Add1During : Arena := ⟨s2Step293Add1Arena.live∪s2Step293Add1Work.toFinset,Finset.union_subset s2Step293Add1Arena.bounded s2Step293Add1_bounded⟩

private def s2Step293F4FlagArena : Arena := ⟨s2Step293HeadFvAfter.live∪{830},Finset.union_subset s2Step293HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step293F4Plan : HmrHybridF4Plan := ⟨s2Step293F4FlagArena,[830],s2Step293Add0Arena,[800],s2Step293Add0During,s2Step293Add0Work,s2Step293Add1During,s2Step293Add1Work⟩

private def s2Step293HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812],768⟩

private def s2Step293HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 780],770⟩

private def s2Step293HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783, 847],769⟩

private def s2Step293HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787, 811],771⟩

private def s2Step293FrontHead : WindowBank := ⟨s2Step293HeadFOut,s2Step293HeadGOut,s2Step293HeadFvOut,s2Step293HeadGvOut⟩

private def s2Step293EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step293EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step293EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783],769⟩

private def s2Step293EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787],771⟩

private def s2Step293FrontPair : WindowBank := ⟨s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut⟩

private def s2Step293FrontSigmaArena : Arena := ⟨s2Step293EntryGvAfter.live∪{849},Finset.union_subset s2Step293EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step293HeadFFresh : List Wire := [812]

private def s2Step293HeadFvFresh : List Wire := [780]

private def s2Step293HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293HeadGFresh : List Wire := [847]

private def s2Step293HeadGvFresh : List Wire := [811]

private def s2Step293FrontPlan : HmrSourceFront := ⟨s2Step293EntryGvAfter,s2Step293FrontPair,(growRow 768 s2Step293EntryFFresh ++ (growRow 769 s2Step293EntryGFresh ++ (growRow 770 s2Step293EntryFvFresh ++ (growRow 771 s2Step293EntryGvFresh ++ [])))),s2Step293FrontSigmaArena,[849],s2Step293HeadGBefore,[805],
  s2Step293HeadFvAfter,s2Step293FrontHead,(growRow 769 s2Step293HeadGFresh ++ (growRow 768 s2Step293HeadFFresh ++ (growRow 771 s2Step293HeadGvFresh ++ (growRow 770 s2Step293HeadFvFresh ++ [])))),s2Step293F4Plan,s2Step293CounterDuring,s2Step293CounterWork,s2Step293ExitGvAfter,s2Step293FrontOut,(shrinkRow 769 s2Step293ExitGExtra ++ (shrinkRow 768 s2Step293ExitFExtra ++ (shrinkRow 770 s2Step293ExitFvExtra ++ (shrinkRow 771 s2Step293ExitGvExtra ++ []))))⟩

private def s2Step293CompletePlan : HmrEarlyStepPlan := ⟨s2Step293FrontPlan,s2Step293EarlyControlArena,s2Step293EarlyControlPlan,s2Step293CompleteMoves⟩

private theorem s2Step293Complete_apart : List.Disjoint (s2Step293CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [849, 805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step293CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[849, 805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step293Complete_owned : (s2Step293CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step293EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step293CompleteMoveArena : Arena := ⟨s2Step293ExitGvAfter.live∪{636},Finset.union_subset s2Step293ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step293Complete_repack : s2Step293ExitGvAfter.checkRepack s2Step293CompleteMoves=some s2Step293EarlyControlArena := by
  have owned : 820∈s2Step293ExitGvAfter.live := by norm_num [s2Step293ExitGvAfter,arenaWires]
  have reserve : s2Step293ExitGvAfter.reserve {636}=some s2Step293CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step293ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step293CompleteMoveArena.retireSet {820}=s2Step293EarlyControlArena := by
    unfold Arena.retireSet s2Step293EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step293CompleteMoveArena,s2Step293ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step293CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step293CompleteMoveArena.retireSet {820}).checkRepack []=some s2Step293EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step293EarlyControl_branchOwned : ([805] : List Wire).toFinset⊆s2Step293EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_branch : compileHmrBranchRetirement s2Step293EarlyControlSigmaArena 805=some s2Step293EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step293EarlyControl_branchOwned
  · ext q
    simp [s2Step293EarlyControlOutputArena,s2Step293EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step293EarlyControl_classEqualityBorrow : s2Step293EarlyControlPositiveArena.checkBorrow (([849, 821] : List Wire).length-1) s2Step293EarlyControlLog.classWork=some s2Step293EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step293EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step293EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step293EarlyControlEqualityArena,s2Step293EarlyControlPositiveArena,s2Step293EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step293EarlyControl_classEqualityOwned : ([849, 821] : List Wire).toFinset⊆s2Step293EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_classEquality : compileHmrEqualityLog s2Step293EarlyControlPositiveArena [849, 821] 0 s2Step293EarlyControlLog.classWork=some (s2Step293EarlyControlEqualityArena,s2Step293EarlyControlLog.classWork,s2Step293EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step293EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step293EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step293EarlyControl_classOwned : ([777, 812, 849] : List Wire).toFinset⊆s2Step293EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_positiveBorrow : s2Step293EarlyControlZeroArena.checkBorrow (1) s2Step293EarlyControlLog.positiveWork=some s2Step293EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step293EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step293EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step293EarlyControlPositiveArena,s2Step293EarlyControlZeroArena,s2Step293EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step293EarlyControl_class : compileHmrSourceClassLog s2Step293EarlyControlZeroArena false 777 s2Step293EarlyControlZeroPlan.top 0 849 s2Step293EarlyControlLog.positiveWork s2Step293EarlyControlLog.classWork=some s2Step293EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step293EarlyControlClassPlan s2Step293EarlyControlZeroArena false 777 s2Step293EarlyControlZeroPlan.top 0 849
  constructor
  · decide +kernel
  · exact s2Step293EarlyControl_classOwned
  · exact s2Step293EarlyControl_positiveBorrow
  · exact s2Step293EarlyControl_classEquality

private theorem s2Step293EarlyControl_entryRecordOwned : ([805, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step293EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_entrySigmaOwned : ([849, 254] : List Wire).toFinset⊆s2Step293EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_fitBorrow : s2Step293EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step293EarlyControlLog.recordFresh=some s2Step293EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step293EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step293EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step293EarlyControlFittedArena,s2Step293EarlyControlFlagArena,s2Step293EarlyControlLog,arenaWires]

private theorem s2Step293EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step293EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_fit : compileHmrRecordGrowLog s2Step293EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step293EarlyControlLog.recordFresh=some s2Step293EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step293EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step293EarlyControl_fitBorrow

private theorem s2Step293EarlyControl_flagsBorrow : s2Step293EarlyControlEqualityArena.checkBorrow (6) s2Step293EarlyControlLog.flagWork=some s2Step293EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step293EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step293EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step293EarlyControlFlagArena,s2Step293EarlyControlEqualityArena,s2Step293EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step293EarlyControl_flagsOwned : ([783, 253, 252, 251] : List Wire).toFinset⊆s2Step293EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_flags : compileHmrFlagsLog s2Step293EarlyControlClassPlan.equalityArena s2Step293EarlyControlClassPlan.equality.top 253 252 251 s2Step293EarlyControlLog.flagWork=some s2Step293EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step293EarlyControl_flagsOwned⟩
  · exact s2Step293EarlyControl_flagsBorrow

private theorem s2Step293EarlyControl_historyBorrow : s2Step293EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step293EarlyControlLog.recordFresh=some s2Step293EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step293EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step293EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step293EarlyControlHistoryArena,s2Step293EarlyControlArena,s2Step293EarlyControlLog,arenaWires]

private theorem s2Step293EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step293EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_history : compileHmrRecordGrowLog s2Step293EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step293EarlyControlLog.recordFresh=some s2Step293EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step293EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step293EarlyControl_historyBorrow

private theorem s2Step293EarlyControl_sigmaOwned : ([254, 849] : List Wire).toFinset⊆s2Step293EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_sigmaReleaseOwned : ([849] : List Wire).toFinset⊆s2Step293EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_sigmaRelease : s2Step293EarlyControlHistoryArena.release {849} (fun _ => false)=some s2Step293EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step293EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step293EarlyControlSigmaArena,s2Step293EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step293EarlyControl_sigma : compileHmrSigmaDropLog s2Step293EarlyControlHistoryArena false 0 0 254 849 []=some s2Step293EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step293EarlyControl_sigmaOwned⟩
  · exact s2Step293EarlyControl_sigmaRelease

private theorem s2Step293EarlyControl_zeroBorrow : s2Step293EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step293EarlyControlLog.zeroWork=some s2Step293EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step293EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step293EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step293EarlyControlZeroArena,s2Step293EarlyControlArena,s2Step293EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step293EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step293EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step293EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<820) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EarlyControl_zero : compileHmrEqualityLog s2Step293EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step293EarlyControlLog.zeroWork=some (s2Step293EarlyControlZeroArena,s2Step293EarlyControlLog.zeroWork,s2Step293EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step293EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step293EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step293EarlyControl_logged : s2Step293EarlyControlPlan.Logged s2Step293EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 849 254 253 252 251 805 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step293EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step293EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step293EarlyControl_zero
  · exact s2Step293EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step293EarlyControl_flags
  · exact s2Step293EarlyControl_fit
  · exact s2Step293EarlyControl_history
  · exact s2Step293EarlyControl_sigma
  · exact s2Step293EarlyControl_branch

private theorem s2Step293EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step293EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 849 254 253 252 251 805 54 s2Step293EarlyControlLog=some s2Step293EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step293EarlyControlPlan s2Step293EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 849 254 253 252 251 805 54 s2Step293EarlyControl_logged

private def s2Step293EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step293EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step293EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122],769⟩

private def s2Step293EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791],771⟩

private def s2Step293FrontBank : WindowBank := ⟨s2Step293EntryFRow,s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow⟩

private def s2Step293Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812, 768]

private def s2Step293Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783, 847, 769]

private def s2Step293Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 780, 770]

private def s2Step293Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787, 811, 771]

private theorem s2Step293Counter_apart : Disjoint s2Step293HeadFvAfter.live s2Step293CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step293HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293Counter_borrowed : s2Step293HeadFvAfter.checkBorrow 4 s2Step293CounterWork=some s2Step293CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step293HeadFvAfter s2Step293CounterDuring s2Step293CounterWork.toFinset s2Step293Counter_bounded s2Step293Counter_apart rfl

private theorem s2Step293Counter_owned : (849::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step293HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step293HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293Counter_checked : compileHmrCounterStepLog s2Step293HeadFvAfter true 849 [772, 773, 774, 775, 776, 777] s2Step293CounterWork=some s2Step293CounterDuring := by
  have owned : ∀q∈849::[772, 773, 774, 775, 776, 777],q∈s2Step293HeadFvAfter.live := fun q hq => s2Step293Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step293Counter_borrowed

private def s2Step293EntryFAfter : Arena := s2Step293EntryFBefore

private theorem s2Step293EntryBank_incomingDistinct : ([s2Step293EntryFRow,s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293EntryF_Incoming : rowsOwned s2Step293EntryFBefore [s2Step293EntryFRow,s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293EntryFRow,s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow] 0 s2Step293EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293EntryBank_outgoingOwned : rowsOwned s2Step293EntryGvAfter [s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step293EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293EntryF_Outgoing : rowsOwned s2Step293EntryGvAfter [s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut] :=
  hmrRows_owned_drop s2Step293EntryGvAfter [s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut] 0 s2Step293EntryBank_outgoingOwned

private theorem s2Step293EntryF_distinct : (s2Step293EntryFRow.sign::s2Step293EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293EntryF_owned : (s2Step293EntryFRow.sign::s2Step293EntryFRow.payload).toFinset⊆s2Step293EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EntryF_reserved : s2Step293EntryFBefore.reserve s2Step293EntryFFresh.toFinset=some s2Step293EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step293EntryFFresh,arenaWires]
  · norm_num [s2Step293EntryFBefore,s2Step293EntryFFresh,arenaWires]
  · simp only [s2Step293EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step293EntryF_checked : planRowResizeLog s2Step293EntryFBefore s2Step293EntryFRow 125 s2Step293EntryFFresh=
    some (s2Step293EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩,growRow 768 s2Step293EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step293EntryFBefore s2Step293EntryFAfter s2Step293EntryFRow 125 s2Step293EntryFFresh
    s2Step293EntryF_distinct s2Step293EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step293EntryF_reserved
  have rowEq : WindowRow.mk (s2Step293EntryFRow.payload++s2Step293EntryFFresh) s2Step293EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step293EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293EntryFvAfter : Arena := s2Step293EntryGAfter

private def s2Step293EntryFvBefore : Arena := s2Step293EntryGAfter

private theorem s2Step293EntryFv_Incoming : rowsOwned s2Step293EntryFvBefore [s2Step293EntryFvRow,s2Step293EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293EntryFRow,s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow] 2 s2Step293EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293EntryFv_Outgoing : rowsOwned s2Step293EntryGvAfter [s2Step293EntryFvOut,s2Step293EntryGvOut] :=
  hmrRows_owned_drop s2Step293EntryGvAfter [s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut] 2 s2Step293EntryBank_outgoingOwned

private theorem s2Step293EntryFv_distinct : (s2Step293EntryFvRow.sign::s2Step293EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293EntryFv_owned : (s2Step293EntryFvRow.sign::s2Step293EntryFvRow.payload).toFinset⊆s2Step293EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EntryFv_reserved : s2Step293EntryFvBefore.reserve s2Step293EntryFvFresh.toFinset=some s2Step293EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step293EntryFvFresh,arenaWires]
  · norm_num [s2Step293EntryFvBefore,s2Step293EntryGAfter,s2Step293EntryFvFresh,arenaWires]
  · simp only [s2Step293EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step293EntryFv_checked : planRowResizeLog s2Step293EntryFvBefore s2Step293EntryFvRow 162 s2Step293EntryFvFresh=
    some (s2Step293EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩,growRow 770 s2Step293EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step293EntryFvBefore s2Step293EntryFvAfter s2Step293EntryFvRow 162 s2Step293EntryFvFresh
    s2Step293EntryFv_distinct s2Step293EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step293EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step293EntryFvRow.payload++s2Step293EntryFvFresh) s2Step293EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step293EntryGBefore : Arena := s2Step293EntryFBefore

private theorem s2Step293EntryG_Incoming : rowsOwned s2Step293EntryGBefore [s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293EntryFRow,s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow] 1 s2Step293EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293EntryG_Outgoing : rowsOwned s2Step293EntryGvAfter [s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut] :=
  hmrRows_owned_drop s2Step293EntryGvAfter [s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut] 1 s2Step293EntryBank_outgoingOwned

private theorem s2Step293EntryG_distinct : (s2Step293EntryGRow.sign::s2Step293EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293EntryG_owned : (s2Step293EntryGRow.sign::s2Step293EntryGRow.payload).toFinset⊆s2Step293EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EntryG_reserved : s2Step293EntryGBefore.reserve s2Step293EntryGFresh.toFinset=some s2Step293EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step293EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step293EntryGBefore,s2Step293EntryFBefore,s2Step293EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step293EntryGAfter,s2Step293EntryGBefore,s2Step293EntryFBefore,s2Step293EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step293EntryG_checked : planRowResizeLog s2Step293EntryGBefore s2Step293EntryGRow 125 s2Step293EntryGFresh=
    some (s2Step293EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783],769⟩,growRow 769 s2Step293EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step293EntryGBefore s2Step293EntryGAfter s2Step293EntryGRow 125 s2Step293EntryGFresh
    s2Step293EntryG_distinct s2Step293EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step293EntryG_reserved
  have rowEq : WindowRow.mk (s2Step293EntryGRow.payload++s2Step293EntryGFresh) s2Step293EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step293EntryGvBefore : Arena := s2Step293EntryGAfter

private theorem s2Step293EntryGv_Incoming : rowsOwned s2Step293EntryGvBefore [s2Step293EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293EntryFRow,s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow] 3 s2Step293EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293EntryGv_Outgoing : rowsOwned s2Step293EntryGvAfter [s2Step293EntryGvOut] :=
  hmrRows_owned_drop s2Step293EntryGvAfter [s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut] 3 s2Step293EntryBank_outgoingOwned

private theorem s2Step293EntryGv_distinct : (s2Step293EntryGvRow.sign::s2Step293EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293EntryGv_owned : (s2Step293EntryGvRow.sign::s2Step293EntryGvRow.payload).toFinset⊆s2Step293EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293EntryGv_reserved : s2Step293EntryGvBefore.reserve s2Step293EntryGvFresh.toFinset=some s2Step293EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step293EntryGvFresh,arenaWires]
  · norm_num [s2Step293EntryGvBefore,s2Step293EntryGAfter,s2Step293EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step293EntryGvAfter,s2Step293EntryGvBefore,s2Step293EntryGAfter,s2Step293EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step293EntryGv_checked : planRowResizeLog s2Step293EntryGvBefore s2Step293EntryGvRow 162 s2Step293EntryGvFresh=
    some (s2Step293EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787],771⟩,growRow 771 s2Step293EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step293EntryGvBefore s2Step293EntryGvAfter s2Step293EntryGvRow 162 s2Step293EntryGvFresh
    s2Step293EntryGv_distinct s2Step293EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step293EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step293EntryGvRow.payload++s2Step293EntryGvFresh) s2Step293EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step293EntryBank_rows : planWindowRowsLog s2Step293EntryFBefore [(s2Step293EntryFRow,125),(s2Step293EntryGRow,125),(s2Step293EntryFvRow,162),(s2Step293EntryGvRow,162)] [s2Step293EntryFFresh,s2Step293EntryGFresh,s2Step293EntryFvFresh,s2Step293EntryGvFresh]=
    some (s2Step293EntryGvAfter,[s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut],(growRow 768 s2Step293EntryFFresh ++ (growRow 769 s2Step293EntryGFresh ++ (growRow 770 s2Step293EntryFvFresh ++ (growRow 771 s2Step293EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step293EntryGvAfter [] []=some (s2Step293EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step293EntryGvBefore s2Step293EntryGvAfter s2Step293EntryGvAfter
    s2Step293EntryGvRow s2Step293EntryGvOut 162 s2Step293EntryGvFresh [] [] []
    (growRow 771 s2Step293EntryGvFresh) ([]) s2Step293EntryGv_Incoming s2Step293EntryGv_checked h4 s2Step293EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step293EntryFvBefore s2Step293EntryFvAfter s2Step293EntryGvAfter
    s2Step293EntryFvRow s2Step293EntryFvOut 162 s2Step293EntryFvFresh [(s2Step293EntryGvRow,162)] [s2Step293EntryGvFresh] [s2Step293EntryGvOut]
    (growRow 770 s2Step293EntryFvFresh) ((growRow 771 s2Step293EntryGvFresh ++ [])) s2Step293EntryFv_Incoming s2Step293EntryFv_checked h3 s2Step293EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step293EntryGBefore s2Step293EntryGAfter s2Step293EntryGvAfter
    s2Step293EntryGRow s2Step293EntryGOut 125 s2Step293EntryGFresh [(s2Step293EntryFvRow,162),(s2Step293EntryGvRow,162)] [s2Step293EntryFvFresh,s2Step293EntryGvFresh] [s2Step293EntryFvOut,s2Step293EntryGvOut]
    (growRow 769 s2Step293EntryGFresh) ((growRow 770 s2Step293EntryFvFresh ++ (growRow 771 s2Step293EntryGvFresh ++ []))) s2Step293EntryG_Incoming s2Step293EntryG_checked h2 s2Step293EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step293EntryFBefore s2Step293EntryFAfter s2Step293EntryGvAfter
    s2Step293EntryFRow s2Step293EntryFOut 125 s2Step293EntryFFresh [(s2Step293EntryGRow,125),(s2Step293EntryFvRow,162),(s2Step293EntryGvRow,162)] [s2Step293EntryGFresh,s2Step293EntryFvFresh,s2Step293EntryGvFresh] [s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut]
    (growRow 768 s2Step293EntryFFresh) ((growRow 769 s2Step293EntryGFresh ++ (growRow 770 s2Step293EntryFvFresh ++ (growRow 771 s2Step293EntryGvFresh ++ [])))) s2Step293EntryF_Incoming s2Step293EntryF_checked h1 s2Step293EntryF_Outgoing
  exact h0

private theorem s2Step293EntryBank_checked : compileHmrBankResizeLog .entry s2Step293EntryFBefore ⟨s2Step293EntryFRow,s2Step293EntryGRow,s2Step293EntryFvRow,s2Step293EntryGvRow⟩ ⟨125,125,162,162⟩ [s2Step293EntryFFresh,s2Step293EntryGFresh,s2Step293EntryFvFresh,s2Step293EntryGvFresh]=
    some (s2Step293EntryGvAfter,⟨s2Step293EntryFOut,s2Step293EntryGOut,s2Step293EntryFvOut,s2Step293EntryGvOut⟩,(growRow 768 s2Step293EntryFFresh ++ (growRow 769 s2Step293EntryGFresh ++ (growRow 770 s2Step293EntryFvFresh ++ (growRow 771 s2Step293EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step293EntryBank_rows]
  rfl

private def s2Step293ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<636) ∨ (637≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293ExitFBefore : Arena := s2Step293ExitGAfter

private def s2Step293ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812],768⟩

private def s2Step293ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 780],770⟩

private def s2Step293ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783, 847],769⟩

private def s2Step293ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787, 811],771⟩

private theorem s2Step293ExitBank_incomingDistinct : ([s2Step293ExitGRow,s2Step293ExitFRow,s2Step293ExitFvRow,s2Step293ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293ExitF_Incoming : rowsOwned s2Step293ExitFBefore [s2Step293ExitFRow,s2Step293ExitFvRow,s2Step293ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293ExitGRow,s2Step293ExitFRow,s2Step293ExitFvRow,s2Step293ExitGvRow] 1 s2Step293ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293ExitBank_outgoingOwned : rowsOwned s2Step293ExitGvAfter [s2Step293ExitGOut,s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step293ExitGvAfter (fun q => (0≤q ∧ q<636) ∨ (637≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293ExitF_Outgoing : rowsOwned s2Step293ExitGvAfter [s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut] :=
  hmrRows_owned_drop s2Step293ExitGvAfter [s2Step293ExitGOut,s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut] 1 s2Step293ExitBank_outgoingOwned

private theorem s2Step293ExitF_distinct : (s2Step293ExitFRow.sign::s2Step293ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293ExitF_owned : (s2Step293ExitFRow.sign::s2Step293ExitFRow.payload).toFinset⊆s2Step293ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293ExitF_retired : s2Step293ExitFBefore.retireSet s2Step293ExitFExtra.toFinset=s2Step293ExitFAfter := by
  unfold Arena.retireSet s2Step293ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step293ExitFBefore,s2Step293ExitGAfter,s2Step293ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step293ExitF_checked : planRowResizeLog s2Step293ExitFBefore s2Step293ExitFRow 124 []=
    some (s2Step293ExitFAfter,s2Step293ExitFOut,shrinkRow 768 s2Step293ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step293ExitFBefore s2Step293ExitFRow 124 s2Step293ExitF_distinct s2Step293ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step293ExitFRow.payload.take 124) s2Step293ExitFRow.sign=s2Step293ExitFOut := by decide +kernel
  have hi : s2Step293ExitFRow.payload.drop 124=s2Step293ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step293ExitF_retired] at result
  exact result

private def s2Step293ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<636) ∨ (637≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293ExitFvBefore : Arena := s2Step293ExitFAfter

private theorem s2Step293ExitFv_Incoming : rowsOwned s2Step293ExitFvBefore [s2Step293ExitFvRow,s2Step293ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293ExitGRow,s2Step293ExitFRow,s2Step293ExitFvRow,s2Step293ExitGvRow] 2 s2Step293ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293ExitFvBefore (fun q => (0≤q ∧ q<636) ∨ (637≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293ExitFv_Outgoing : rowsOwned s2Step293ExitGvAfter [s2Step293ExitFvOut,s2Step293ExitGvOut] :=
  hmrRows_owned_drop s2Step293ExitGvAfter [s2Step293ExitGOut,s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut] 2 s2Step293ExitBank_outgoingOwned

private theorem s2Step293ExitFv_distinct : (s2Step293ExitFvRow.sign::s2Step293ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293ExitFv_owned : (s2Step293ExitFvRow.sign::s2Step293ExitFvRow.payload).toFinset⊆s2Step293ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293ExitFvBefore (fun q => (0≤q ∧ q<636) ∨ (637≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293ExitFv_retired : s2Step293ExitFvBefore.retireSet s2Step293ExitFvExtra.toFinset=s2Step293ExitFvAfter := by
  unfold Arena.retireSet s2Step293ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step293ExitFvBefore,s2Step293ExitFAfter,s2Step293ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step293ExitFv_checked : planRowResizeLog s2Step293ExitFvBefore s2Step293ExitFvRow 162 []=
    some (s2Step293ExitFvAfter,s2Step293ExitFvOut,shrinkRow 770 s2Step293ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step293ExitFvBefore s2Step293ExitFvRow 162 s2Step293ExitFv_distinct s2Step293ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step293ExitFvRow.payload.take 162) s2Step293ExitFvRow.sign=s2Step293ExitFvOut := by decide +kernel
  have hi : s2Step293ExitFvRow.payload.drop 162=s2Step293ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step293ExitFv_retired] at result
  exact result

private def s2Step293ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step293ExitG_Incoming : rowsOwned s2Step293ExitGBefore [s2Step293ExitGRow,s2Step293ExitFRow,s2Step293ExitFvRow,s2Step293ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293ExitGRow,s2Step293ExitFRow,s2Step293ExitFvRow,s2Step293ExitGvRow] 0 s2Step293ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293ExitG_Outgoing : rowsOwned s2Step293ExitGvAfter [s2Step293ExitGOut,s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut] :=
  hmrRows_owned_drop s2Step293ExitGvAfter [s2Step293ExitGOut,s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut] 0 s2Step293ExitBank_outgoingOwned

private theorem s2Step293ExitG_distinct : (s2Step293ExitGRow.sign::s2Step293ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293ExitG_owned : (s2Step293ExitGRow.sign::s2Step293ExitGRow.payload).toFinset⊆s2Step293ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293ExitG_retired : s2Step293ExitGBefore.retireSet s2Step293ExitGExtra.toFinset=s2Step293ExitGAfter := by
  unfold Arena.retireSet s2Step293ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step293ExitGBefore,s2Step293ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step293ExitG_checked : planRowResizeLog s2Step293ExitGBefore s2Step293ExitGRow 123 []=
    some (s2Step293ExitGAfter,s2Step293ExitGOut,shrinkRow 769 s2Step293ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step293ExitGBefore s2Step293ExitGRow 123 s2Step293ExitG_distinct s2Step293ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step293ExitGRow.payload.take 123) s2Step293ExitGRow.sign=s2Step293ExitGOut := by decide +kernel
  have hi : s2Step293ExitGRow.payload.drop 123=s2Step293ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step293ExitG_retired] at result
  exact result

private def s2Step293ExitGvBefore : Arena := s2Step293ExitFvAfter

private theorem s2Step293ExitGv_Incoming : rowsOwned s2Step293ExitGvBefore [s2Step293ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293ExitGRow,s2Step293ExitFRow,s2Step293ExitFvRow,s2Step293ExitGvRow] 3 s2Step293ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293ExitGvBefore (fun q => (0≤q ∧ q<636) ∨ (637≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293ExitGv_Outgoing : rowsOwned s2Step293ExitGvAfter [s2Step293ExitGvOut] :=
  hmrRows_owned_drop s2Step293ExitGvAfter [s2Step293ExitGOut,s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut] 3 s2Step293ExitBank_outgoingOwned

private theorem s2Step293ExitGv_distinct : (s2Step293ExitGvRow.sign::s2Step293ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293ExitGv_owned : (s2Step293ExitGvRow.sign::s2Step293ExitGvRow.payload).toFinset⊆s2Step293ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293ExitGvBefore (fun q => (0≤q ∧ q<636) ∨ (637≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293ExitGv_retired : s2Step293ExitGvBefore.retireSet s2Step293ExitGvExtra.toFinset=s2Step293ExitGvAfter := by
  unfold Arena.retireSet s2Step293ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step293ExitGvBefore,s2Step293ExitFvAfter,s2Step293ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step293ExitGv_checked : planRowResizeLog s2Step293ExitGvBefore s2Step293ExitGvRow 161 []=
    some (s2Step293ExitGvAfter,s2Step293ExitGvOut,shrinkRow 771 s2Step293ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step293ExitGvBefore s2Step293ExitGvRow 161 s2Step293ExitGv_distinct s2Step293ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step293ExitGvRow.payload.take 161) s2Step293ExitGvRow.sign=s2Step293ExitGvOut := by decide +kernel
  have hi : s2Step293ExitGvRow.payload.drop 161=s2Step293ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step293ExitGv_retired] at result
  exact result

private theorem s2Step293ExitBank_rows : planWindowRowsLog s2Step293ExitGBefore [(s2Step293ExitGRow,123),(s2Step293ExitFRow,124),(s2Step293ExitFvRow,162),(s2Step293ExitGvRow,161)] [[],[],[],[]]=
    some (s2Step293ExitGvAfter,[s2Step293ExitGOut,s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut],(shrinkRow 769 s2Step293ExitGExtra ++ (shrinkRow 768 s2Step293ExitFExtra ++ (shrinkRow 770 s2Step293ExitFvExtra ++ (shrinkRow 771 s2Step293ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step293ExitGvAfter [] []=some (s2Step293ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step293ExitGvBefore s2Step293ExitGvAfter s2Step293ExitGvAfter
    s2Step293ExitGvRow s2Step293ExitGvOut 161 [] [] [] []
    (shrinkRow 771 s2Step293ExitGvExtra) ([]) s2Step293ExitGv_Incoming s2Step293ExitGv_checked h4 s2Step293ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step293ExitFvBefore s2Step293ExitFvAfter s2Step293ExitGvAfter
    s2Step293ExitFvRow s2Step293ExitFvOut 162 [] [(s2Step293ExitGvRow,161)] [[]] [s2Step293ExitGvOut]
    (shrinkRow 770 s2Step293ExitFvExtra) ((shrinkRow 771 s2Step293ExitGvExtra ++ [])) s2Step293ExitFv_Incoming s2Step293ExitFv_checked h3 s2Step293ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step293ExitFBefore s2Step293ExitFAfter s2Step293ExitGvAfter
    s2Step293ExitFRow s2Step293ExitFOut 124 [] [(s2Step293ExitFvRow,162),(s2Step293ExitGvRow,161)] [[],[]] [s2Step293ExitFvOut,s2Step293ExitGvOut]
    (shrinkRow 768 s2Step293ExitFExtra) ((shrinkRow 770 s2Step293ExitFvExtra ++ (shrinkRow 771 s2Step293ExitGvExtra ++ []))) s2Step293ExitF_Incoming s2Step293ExitF_checked h2 s2Step293ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step293ExitGBefore s2Step293ExitGAfter s2Step293ExitGvAfter
    s2Step293ExitGRow s2Step293ExitGOut 123 [] [(s2Step293ExitFRow,124),(s2Step293ExitFvRow,162),(s2Step293ExitGvRow,161)] [[],[],[]] [s2Step293ExitFOut,s2Step293ExitFvOut,s2Step293ExitGvOut]
    (shrinkRow 769 s2Step293ExitGExtra) ((shrinkRow 768 s2Step293ExitFExtra ++ (shrinkRow 770 s2Step293ExitFvExtra ++ (shrinkRow 771 s2Step293ExitGvExtra ++ [])))) s2Step293ExitG_Incoming s2Step293ExitG_checked h1 s2Step293ExitG_Outgoing
  exact h0

private theorem s2Step293ExitBank_checked : compileHmrBankResizeLog .exit s2Step293ExitGBefore ⟨s2Step293ExitFRow,s2Step293ExitGRow,s2Step293ExitFvRow,s2Step293ExitGvRow⟩ ⟨124,123,162,161⟩ [[],[],[],[]]=
    some (s2Step293ExitGvAfter,⟨s2Step293ExitFOut,s2Step293ExitGOut,s2Step293ExitFvOut,s2Step293ExitGvOut⟩,(shrinkRow 769 s2Step293ExitGExtra ++ (shrinkRow 768 s2Step293ExitFExtra ++ (shrinkRow 770 s2Step293ExitFvExtra ++ (shrinkRow 771 s2Step293ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step293ExitBank_rows]
  rfl

private theorem s2Step293Add0_apart : Disjoint s2Step293Add0Arena.live s2Step293Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step293Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293Add0_card : s2Step293Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step293Add0_borrowed : s2Step293Add0Arena.checkBorrow (hmrHybridCount s2Step293Add0Arena s2Step293Add0B.length) s2Step293Add0Work=some s2Step293Add0During := by
  have len : s2Step293Add0Work.length=hmrHybridCount s2Step293Add0Arena s2Step293Add0B.length := by
    rw [hmrHybridCount,s2Step293Add0_card]
    decide +kernel
  have nd : s2Step293Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step293Add0Arena s2Step293Add0During s2Step293Add0Work.toFinset s2Step293Add0_bounded s2Step293Add0_apart rfl

private theorem s2Step293Add0_distinct : (830::805::800::(s2Step293Add0A++s2Step293Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293Add0_owned : (830::805::800::(s2Step293Add0A++s2Step293Add0B)).toFinset⊆s2Step293Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step293Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293Add0_checked : compileHmrHybridCinLog s2Step293Add0Arena 805 830 800 s2Step293Add0A s2Step293Add0B s2Step293Add0Work=some s2Step293Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step293Add0Arena s2Step293Add0During 805 830 800 s2Step293Add0A s2Step293Add0B s2Step293Add0Work
    (by decide +kernel) (by decide +kernel) s2Step293Add0_distinct
    (fun q hq => s2Step293Add0_owned (List.mem_toFinset.mpr hq)) s2Step293Add0_borrowed

private theorem s2Step293Add1_apart : Disjoint s2Step293Add1Arena.live s2Step293Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step293Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293Add1_card : s2Step293Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step293Add1_borrowed : s2Step293Add1Arena.checkBorrow (hmrHybridCount s2Step293Add1Arena s2Step293Add1B.length) s2Step293Add1Work=some s2Step293Add1During := by
  have len : s2Step293Add1Work.length=hmrHybridCount s2Step293Add1Arena s2Step293Add1B.length := by
    rw [hmrHybridCount,s2Step293Add1_card]
    decide +kernel
  have nd : s2Step293Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step293Add1Arena s2Step293Add1During s2Step293Add1Work.toFinset s2Step293Add1_bounded s2Step293Add1_apart rfl

private theorem s2Step293Add1_distinct : (830::805::800::(s2Step293Add1A++s2Step293Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293Add1_owned : (830::805::800::(s2Step293Add1A++s2Step293Add1B)).toFinset⊆s2Step293Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step293Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293Add1_checked : compileHmrHybridCinLog s2Step293Add1Arena 805 830 800 s2Step293Add1A s2Step293Add1B s2Step293Add1Work=some s2Step293Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step293Add1Arena s2Step293Add1During 805 830 800 s2Step293Add1A s2Step293Add1B s2Step293Add1Work
    (by decide +kernel) (by decide +kernel) s2Step293Add1_distinct
    (fun q hq => s2Step293Add1_owned (List.mem_toFinset.mpr hq)) s2Step293Add1_borrowed

private theorem s2Step293F4_apart : Disjoint (s2Step293Add0A++s2Step293Add0B).toFinset (s2Step293Add1A++s2Step293Add1B).toFinset := by
  have nd : ((s2Step293Add0A++s2Step293Add0B)++(s2Step293Add1A++s2Step293Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step293F4_carry : s2Step293F4FlagArena.checkBorrow 1 [800]=some s2Step293Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step293F4FlagArena,s2Step293HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step293F4FlagArena,s2Step293HeadFvAfter,s2Step293Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step293F4_distinct : (849::805::830::800::((s2Step293Add0A++s2Step293Add1A)++(s2Step293Add0B++s2Step293Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293F4_flag : s2Step293HeadFvAfter.checkBorrow 1 [830]=some s2Step293F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step293HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step293F4_owned : (849::805::((s2Step293Add0A++s2Step293Add1A)++(s2Step293Add0B++s2Step293Add1B))).toFinset⊆s2Step293HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step293HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293F4_checked : compileHmrHybridF4Log s2Step293HeadFvAfter 849 805 s2Step293Add0A s2Step293Add0B s2Step293Add1A s2Step293Add1B [830] [800] s2Step293Add0Work s2Step293Add1Work=some s2Step293F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step293HeadFvAfter s2Step293F4FlagArena s2Step293Add0Arena s2Step293Add0During s2Step293Add1During 849 805
    s2Step293Add0A s2Step293Add0B s2Step293Add1A s2Step293Add1B [830] [800] s2Step293Add0Work s2Step293Add1Work
    (fun q hq => s2Step293F4_owned (List.mem_toFinset.mpr hq)) s2Step293F4_flag s2Step293F4_carry
    s2Step293F4_distinct s2Step293F4_apart s2Step293Add0_checked s2Step293Add1_checked

private theorem s2Step293Front_branch : s2Step293FrontSigmaArena.checkBorrow 1 [805]=some s2Step293HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step293FrontSigmaArena,s2Step293EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step293FrontSigmaArena,s2Step293EntryGvAfter,s2Step293HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step293Front_entry : HmrFrontEntryValid s2Step293EntryFBefore s2Step293FrontBank 125 162 ⟨124,123,162,161⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step293FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step293EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step293EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step293FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step293Front_sigma : s2Step293EntryGvAfter.checkBorrow 1 [849]=some s2Step293FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step293EntryGvAfter,arenaWires]
  · rfl

private def s2Step293HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293HeadFBefore : Arena := s2Step293HeadGAfter

private def s2Step293HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step293HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790],770⟩

private def s2Step293HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783],769⟩

private def s2Step293HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787],771⟩

private theorem s2Step293HeadBank_incomingDistinct : ([s2Step293HeadGRow,s2Step293HeadFRow,s2Step293HeadGvRow,s2Step293HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293HeadF_Incoming : rowsOwned s2Step293HeadFBefore [s2Step293HeadFRow,s2Step293HeadGvRow,s2Step293HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293HeadGRow,s2Step293HeadFRow,s2Step293HeadGvRow,s2Step293HeadFvRow] 1 s2Step293HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293HeadBank_outgoingOwned : rowsOwned s2Step293HeadFvAfter [s2Step293HeadGOut,s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step293HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293HeadF_Outgoing : rowsOwned s2Step293HeadFvAfter [s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut] :=
  hmrRows_owned_drop s2Step293HeadFvAfter [s2Step293HeadGOut,s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut] 1 s2Step293HeadBank_outgoingOwned

private theorem s2Step293HeadF_distinct : (s2Step293HeadFRow.sign::s2Step293HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293HeadF_owned : (s2Step293HeadFRow.sign::s2Step293HeadFRow.payload).toFinset⊆s2Step293HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293HeadF_reserved : s2Step293HeadFBefore.reserve s2Step293HeadFFresh.toFinset=some s2Step293HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step293HeadFFresh,arenaWires]
  · norm_num [s2Step293HeadFBefore,s2Step293HeadGAfter,s2Step293HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step293HeadFAfter,s2Step293HeadFBefore,s2Step293HeadGAfter,s2Step293HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step293HeadF_checked : planRowResizeLog s2Step293HeadFBefore s2Step293HeadFRow 126 s2Step293HeadFFresh=
    some (s2Step293HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812],768⟩,growRow 768 s2Step293HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step293HeadFBefore s2Step293HeadFAfter s2Step293HeadFRow 126 s2Step293HeadFFresh
    s2Step293HeadF_distinct s2Step293HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step293HeadF_reserved
  have rowEq : WindowRow.mk (s2Step293HeadFRow.payload++s2Step293HeadFFresh) s2Step293HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 812],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step293HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step293HeadFvBefore : Arena := s2Step293HeadGvAfter

private theorem s2Step293HeadFv_Incoming : rowsOwned s2Step293HeadFvBefore [s2Step293HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293HeadGRow,s2Step293HeadFRow,s2Step293HeadGvRow,s2Step293HeadFvRow] 3 s2Step293HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293HeadFv_Outgoing : rowsOwned s2Step293HeadFvAfter [s2Step293HeadFvOut] :=
  hmrRows_owned_drop s2Step293HeadFvAfter [s2Step293HeadGOut,s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut] 3 s2Step293HeadBank_outgoingOwned

private theorem s2Step293HeadFv_distinct : (s2Step293HeadFvRow.sign::s2Step293HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293HeadFv_owned : (s2Step293HeadFvRow.sign::s2Step293HeadFvRow.payload).toFinset⊆s2Step293HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293HeadFv_reserved : s2Step293HeadFvBefore.reserve s2Step293HeadFvFresh.toFinset=some s2Step293HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step293HeadFvFresh,arenaWires]
  · norm_num [s2Step293HeadFvBefore,s2Step293HeadGvAfter,s2Step293HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step293HeadFvAfter,s2Step293HeadFvBefore,s2Step293HeadGvAfter,s2Step293HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step293HeadFv_checked : planRowResizeLog s2Step293HeadFvBefore s2Step293HeadFvRow 163 s2Step293HeadFvFresh=
    some (s2Step293HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 780],770⟩,growRow 770 s2Step293HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step293HeadFvBefore s2Step293HeadFvAfter s2Step293HeadFvRow 163 s2Step293HeadFvFresh
    s2Step293HeadFv_distinct s2Step293HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step293HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step293HeadFvRow.payload++s2Step293HeadFvFresh) s2Step293HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step293HeadG_Incoming : rowsOwned s2Step293HeadGBefore [s2Step293HeadGRow,s2Step293HeadFRow,s2Step293HeadGvRow,s2Step293HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293HeadGRow,s2Step293HeadFRow,s2Step293HeadGvRow,s2Step293HeadFvRow] 0 s2Step293HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293HeadG_Outgoing : rowsOwned s2Step293HeadFvAfter [s2Step293HeadGOut,s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut] :=
  hmrRows_owned_drop s2Step293HeadFvAfter [s2Step293HeadGOut,s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut] 0 s2Step293HeadBank_outgoingOwned

private theorem s2Step293HeadG_distinct : (s2Step293HeadGRow.sign::s2Step293HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293HeadG_owned : (s2Step293HeadGRow.sign::s2Step293HeadGRow.payload).toFinset⊆s2Step293HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293HeadG_reserved : s2Step293HeadGBefore.reserve s2Step293HeadGFresh.toFinset=some s2Step293HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step293HeadGFresh,arenaWires]
  · norm_num [s2Step293HeadGBefore,s2Step293HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step293HeadGAfter,s2Step293HeadGBefore,s2Step293HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step293HeadG_checked : planRowResizeLog s2Step293HeadGBefore s2Step293HeadGRow 126 s2Step293HeadGFresh=
    some (s2Step293HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783, 847],769⟩,growRow 769 s2Step293HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step293HeadGBefore s2Step293HeadGAfter s2Step293HeadGRow 126 s2Step293HeadGFresh
    s2Step293HeadG_distinct s2Step293HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step293HeadG_reserved
  have rowEq : WindowRow.mk (s2Step293HeadGRow.payload++s2Step293HeadGFresh) s2Step293HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 821, 783, 847],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step293HeadGvBefore : Arena := s2Step293HeadFAfter

private theorem s2Step293HeadGv_Incoming : rowsOwned s2Step293HeadGvBefore [s2Step293HeadGvRow,s2Step293HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step293HeadGRow,s2Step293HeadFRow,s2Step293HeadGvRow,s2Step293HeadFvRow] 2 s2Step293HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step293HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step293HeadGv_Outgoing : rowsOwned s2Step293HeadFvAfter [s2Step293HeadGvOut,s2Step293HeadFvOut] :=
  hmrRows_owned_drop s2Step293HeadFvAfter [s2Step293HeadGOut,s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut] 2 s2Step293HeadBank_outgoingOwned

private theorem s2Step293HeadGv_distinct : (s2Step293HeadGvRow.sign::s2Step293HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step293HeadGv_owned : (s2Step293HeadGvRow.sign::s2Step293HeadGvRow.payload).toFinset⊆s2Step293HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step293HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step293HeadGv_reserved : s2Step293HeadGvBefore.reserve s2Step293HeadGvFresh.toFinset=some s2Step293HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step293HeadGvFresh,arenaWires]
  · norm_num [s2Step293HeadGvBefore,s2Step293HeadFAfter,s2Step293HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step293HeadGvAfter,s2Step293HeadGvBefore,s2Step293HeadFAfter,s2Step293HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step293HeadGv_checked : planRowResizeLog s2Step293HeadGvBefore s2Step293HeadGvRow 163 s2Step293HeadGvFresh=
    some (s2Step293HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787, 811],771⟩,growRow 771 s2Step293HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step293HeadGvBefore s2Step293HeadGvAfter s2Step293HeadGvRow 163 s2Step293HeadGvFresh
    s2Step293HeadGv_distinct s2Step293HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step293HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step293HeadGvRow.payload++s2Step293HeadGvFresh) s2Step293HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 787, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step293HeadBank_rows : planWindowRowsLog s2Step293HeadGBefore [(s2Step293HeadGRow,126),(s2Step293HeadFRow,126),(s2Step293HeadGvRow,163),(s2Step293HeadFvRow,163)] [s2Step293HeadGFresh,s2Step293HeadFFresh,s2Step293HeadGvFresh,s2Step293HeadFvFresh]=
    some (s2Step293HeadFvAfter,[s2Step293HeadGOut,s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut],(growRow 769 s2Step293HeadGFresh ++ (growRow 768 s2Step293HeadFFresh ++ (growRow 771 s2Step293HeadGvFresh ++ (growRow 770 s2Step293HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step293HeadFvAfter [] []=some (s2Step293HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step293HeadFvBefore s2Step293HeadFvAfter s2Step293HeadFvAfter
    s2Step293HeadFvRow s2Step293HeadFvOut 163 s2Step293HeadFvFresh [] [] []
    (growRow 770 s2Step293HeadFvFresh) ([]) s2Step293HeadFv_Incoming s2Step293HeadFv_checked h4 s2Step293HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step293HeadGvBefore s2Step293HeadGvAfter s2Step293HeadFvAfter
    s2Step293HeadGvRow s2Step293HeadGvOut 163 s2Step293HeadGvFresh [(s2Step293HeadFvRow,163)] [s2Step293HeadFvFresh] [s2Step293HeadFvOut]
    (growRow 771 s2Step293HeadGvFresh) ((growRow 770 s2Step293HeadFvFresh ++ [])) s2Step293HeadGv_Incoming s2Step293HeadGv_checked h3 s2Step293HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step293HeadFBefore s2Step293HeadFAfter s2Step293HeadFvAfter
    s2Step293HeadFRow s2Step293HeadFOut 126 s2Step293HeadFFresh [(s2Step293HeadGvRow,163),(s2Step293HeadFvRow,163)] [s2Step293HeadGvFresh,s2Step293HeadFvFresh] [s2Step293HeadGvOut,s2Step293HeadFvOut]
    (growRow 768 s2Step293HeadFFresh) ((growRow 771 s2Step293HeadGvFresh ++ (growRow 770 s2Step293HeadFvFresh ++ []))) s2Step293HeadF_Incoming s2Step293HeadF_checked h2 s2Step293HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step293HeadGBefore s2Step293HeadGAfter s2Step293HeadFvAfter
    s2Step293HeadGRow s2Step293HeadGOut 126 s2Step293HeadGFresh [(s2Step293HeadFRow,126),(s2Step293HeadGvRow,163),(s2Step293HeadFvRow,163)] [s2Step293HeadFFresh,s2Step293HeadGvFresh,s2Step293HeadFvFresh] [s2Step293HeadFOut,s2Step293HeadGvOut,s2Step293HeadFvOut]
    (growRow 769 s2Step293HeadGFresh) ((growRow 768 s2Step293HeadFFresh ++ (growRow 771 s2Step293HeadGvFresh ++ (growRow 770 s2Step293HeadFvFresh ++ [])))) s2Step293HeadG_Incoming s2Step293HeadG_checked h1 s2Step293HeadG_Outgoing
  exact h0

private theorem s2Step293HeadBank_checked : compileHmrBankResizeLog .headroom s2Step293HeadGBefore ⟨s2Step293HeadFRow,s2Step293HeadGRow,s2Step293HeadFvRow,s2Step293HeadGvRow⟩ ⟨126,126,163,163⟩ [s2Step293HeadGFresh,s2Step293HeadFFresh,s2Step293HeadGvFresh,s2Step293HeadFvFresh]=
    some (s2Step293HeadFvAfter,⟨s2Step293HeadFOut,s2Step293HeadGOut,s2Step293HeadFvOut,s2Step293HeadGvOut⟩,(growRow 769 s2Step293HeadGFresh ++ (growRow 768 s2Step293HeadFFresh ++ (growRow 771 s2Step293HeadGvFresh ++ (growRow 770 s2Step293HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step293HeadBank_rows]
  rfl

private theorem s2Step293Front_checked : compileHmrSourceFrontLog s2Step293EntryFBefore s2Step293FrontBank 125 162 ⟨124,123,162,161⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step293FrontLog=some s2Step293FrontPlan := by
  have pairEq : s2Step293FrontPair=⟨s2Step293HeadFRow,s2Step293HeadGRow,s2Step293HeadFvRow,s2Step293HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step293FrontHead=⟨s2Step293ExitFRow,s2Step293ExitGRow,s2Step293ExitFvRow,s2Step293ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step293Add0A=s2Step293FrontHead.f.wires := by decide +kernel
  have gEq : s2Step293Add0B=s2Step293FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step293Add1A=s2Step293FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step293Add1B=s2Step293FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step293EntryFBefore s2Step293FrontBank 125 162 ⟨124,123,162,161⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step293FrontLog s2Step293FrontPlan
  · exact s2Step293Front_entry
  · exact s2Step293EntryBank_checked
  · exact s2Step293Front_sigma
  · rfl
  · exact s2Step293Front_branch
  · rfl
  · simpa only [s2Step293FrontPlan,pairEq] using s2Step293HeadBank_checked
  · simpa only [s2Step293FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step293F4_checked
  · exact s2Step293Counter_checked
  · rfl
  · simpa only [s2Step293FrontPlan,headEq] using s2Step293ExitBank_checked

private theorem s2Step293Complete_explicit_checked : compileHmrEarlyStepLog s2Step293EntryFBefore s2Step293FrontBank 125 162 ⟨124,123,162,161⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step293CompleteLog=some s2Step293CompletePlan := by
  let Q := s2Step293EarlyControlPlan
  have hq := s2Step293EarlyControl_plan_checked
  have fv1 : s2Step293CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step293CompleteOut.fv.payload[2]?.getD s2Step293CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step293CompleteOut.fv.payload[3]?.getD s2Step293CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step293CompleteOut.fv.payload[4]?.getD s2Step293CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step293EntryFBefore s2Step293EarlyControlArena s2Step293FrontBank 125 162 ⟨124,123,162,161⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step293CompleteLog s2Step293FrontPlan Q
    s2Step293Front_checked s2Step293Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step293Complete_owned s2Step293Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step293EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 849 s2Step293CompleteOut.fv.second (s2Step293CompleteOut.fv.payload[2]?.getD s2Step293CompleteOut.fv.sign) (s2Step293CompleteOut.fv.payload[3]?.getD s2Step293CompleteOut.fv.sign) (s2Step293CompleteOut.fv.payload[4]?.getD s2Step293CompleteOut.fv.sign) 805 54 s2Step293EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep293Arena : Arena := s2Step293EntryFBefore
def s2PrivateStep293Bank : WindowBank := s2Step293FrontBank
def s2PrivateStep293Spec : HmrSourceWalkStepLog := ⟨125,162,⟨124,123,162,161⟩,54,.early s2Step293CompleteLog⟩
def s2PrivateStep293Plan : HmrSourceStepPlan := .early s2Step293CompletePlan
theorem s2PrivateStep293_source : s2PrivateStep293Spec=s2ObservedLogs288[5] := rfl
theorem s2PrivateStep293_checked : compileHmrSourceStepLog s2PrivateStep293Arena s2PrivateStep293Bank
    s2PrivateStep293Spec.fgWidth s2PrivateStep293Spec.vWidth s2PrivateStep293Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 293 s2PrivateStep293Spec.need none s2PrivateStep293Spec.log=some s2PrivateStep293Plan := by
  change compileHmrSourceStepLog s2Step293EntryFBefore s2Step293FrontBank 125 162 ⟨124,123,162,161⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 293 54 none (.early s2Step293CompleteLog)=some (.early s2Step293CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 293<498)]
  rw [s2Step293Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
