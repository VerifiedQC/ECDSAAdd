import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep288
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

private def s2Step290CompleteMoves : List (Wire × Wire) := [(805,125)]

private def s2Step290EarlyControlLog : HmrEarlyControlLog := ⟨[805, 812, 791, 796, 849],[790],[811],[780, 830, 800, 894, 896, 901],[]⟩

private def s2Step290FrontLog : HmrFrontAllocationLog := ⟨⟨[[796], [], [], [808]],[[790], [849], [812], [791]],[[], [], [], []]⟩,[847],[783],[811],[780],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[811, 780, 830, 800]⟩

private def s2Step290CompleteLog : HmrEarlyStepLog := ⟨s2Step290FrontLog,s2Step290CompleteMoves,s2Step290EarlyControlLog⟩

private def s2Step290ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step290ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step290ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124],769⟩

private def s2Step290ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩

private def s2Step290FrontOut : WindowBank := ⟨s2Step290ExitFOut,s2Step290ExitGOut,s2Step290ExitFvOut,s2Step290ExitGvOut⟩

private def s2Step290CompleteOut : WindowBank := s2Step290FrontOut.repacked s2Step290CompleteMoves

private def s2Step290EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step290EarlyControlPositiveArena,[790],s2Step290EarlyControlEqualityArena,[811],⟨⟨847,false⟩,[⟨⟨790,false⟩,811⟩]⟩⟩

private def s2Step290EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨774,false⟩,812⟩,⟨⟨775,false⟩,791⟩,⟨⟨776,false⟩,796⟩,⟨⟨777,false⟩,849⟩]⟩

private def s2Step290EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step290EarlyControlZeroArena,s2Step290EarlyControlZeroPlan,s2Step290EarlyControlClassPlan,s2Step290EarlyControlFlagArena,s2Step290EarlyControlFittedArena,s2Step290EarlyControlHistoryArena,s2Step290EarlyControlSigmaArena,s2Step290EarlyControlOutputArena,s2Step290EarlyControlLog⟩

private def s2Step290CounterWork : List Wire := [811, 780, 830, 800]

private theorem s2Step290Counter_bounded : s2Step290CounterWork.toFinset⊆arenaWires := by norm_num [s2Step290CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step290HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290CounterDuring : Arena := ⟨s2Step290HeadFvAfter.live∪s2Step290CounterWork.toFinset,Finset.union_subset s2Step290HeadFvAfter.bounded s2Step290Counter_bounded⟩

private def s2Step290EntryFFresh : List Wire := [796]

private def s2Step290EntryFvFresh : List Wire := []

private def s2Step290EntryGFresh : List Wire := []

private def s2Step290EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EntryGvFresh : List Wire := [808]

private def s2Step290ExitFExtra : List Wire := [796, 849]

private def s2Step290ExitFvExtra : List Wire := [791]

private def s2Step290ExitGExtra : List Wire := [125, 790]

private def s2Step290ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290ExitGvExtra : List Wire := [812]

private def s2Step290Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step290Add0_bounded : s2Step290Add0Work.toFinset⊆arenaWires := by
  have h : s2Step290Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step290Add0During : Arena := ⟨s2Step290Add0Arena.live∪s2Step290Add0Work.toFinset,Finset.union_subset s2Step290Add0Arena.bounded s2Step290Add0_bounded⟩

private def s2Step290Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step290Add1_bounded : s2Step290Add1Work.toFinset⊆arenaWires := by
  have h : s2Step290Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step290Add1During : Arena := ⟨s2Step290Add1Arena.live∪s2Step290Add1Work.toFinset,Finset.union_subset s2Step290Add1Arena.bounded s2Step290Add1_bounded⟩

private def s2Step290F4FlagArena : Arena := ⟨s2Step290HeadFvAfter.live∪{811},Finset.union_subset s2Step290HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step290F4Plan : HmrHybridF4Plan := ⟨s2Step290F4FlagArena,[811],s2Step290Add0Arena,[780],s2Step290Add0During,s2Step290Add0Work,s2Step290Add1During,s2Step290Add1Work⟩

private def s2Step290HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796, 849],768⟩

private def s2Step290HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 791],770⟩

private def s2Step290HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 790],769⟩

private def s2Step290HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 812],771⟩

private def s2Step290FrontHead : WindowBank := ⟨s2Step290HeadFOut,s2Step290HeadGOut,s2Step290HeadFvOut,s2Step290HeadGvOut⟩

private def s2Step290EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796],768⟩

private def s2Step290EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step290EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step290EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩

private def s2Step290FrontPair : WindowBank := ⟨s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut⟩

private def s2Step290FrontSigmaArena : Arena := ⟨s2Step290EntryGvAfter.live∪{847},Finset.union_subset s2Step290EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step290HeadFFresh : List Wire := [849]

private def s2Step290HeadFvFresh : List Wire := [791]

private def s2Step290HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290HeadGFresh : List Wire := [790]

private def s2Step290HeadGvFresh : List Wire := [812]

private def s2Step290FrontPlan : HmrSourceFront := ⟨s2Step290EntryGvAfter,s2Step290FrontPair,(growRow 768 s2Step290EntryFFresh ++ (growRow 769 s2Step290EntryGFresh ++ (growRow 770 s2Step290EntryFvFresh ++ (growRow 771 s2Step290EntryGvFresh ++ [])))),s2Step290FrontSigmaArena,[847],s2Step290HeadGBefore,[783],
  s2Step290HeadFvAfter,s2Step290FrontHead,(growRow 769 s2Step290HeadGFresh ++ (growRow 768 s2Step290HeadFFresh ++ (growRow 771 s2Step290HeadGvFresh ++ (growRow 770 s2Step290HeadFvFresh ++ [])))),s2Step290F4Plan,s2Step290CounterDuring,s2Step290CounterWork,s2Step290ExitGvAfter,s2Step290FrontOut,(shrinkRow 769 s2Step290ExitGExtra ++ (shrinkRow 768 s2Step290ExitFExtra ++ (shrinkRow 770 s2Step290ExitFvExtra ++ (shrinkRow 771 s2Step290ExitGvExtra ++ []))))⟩

private def s2Step290CompletePlan : HmrEarlyStepPlan := ⟨s2Step290FrontPlan,s2Step290EarlyControlArena,s2Step290EarlyControlPlan,s2Step290CompleteMoves⟩

private theorem s2Step290Complete_apart : List.Disjoint (s2Step290CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [847, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step290CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[847, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step290Complete_owned : (s2Step290CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step290CompleteMoveArena : Arena := ⟨s2Step290ExitGvAfter.live∪{125},Finset.union_subset s2Step290ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step290Complete_repack : s2Step290ExitGvAfter.checkRepack s2Step290CompleteMoves=some s2Step290EarlyControlArena := by
  have owned : 805∈s2Step290ExitGvAfter.live := by norm_num [s2Step290ExitGvAfter,arenaWires]
  have reserve : s2Step290ExitGvAfter.reserve {125}=some s2Step290CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step290ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step290CompleteMoveArena.retireSet {805}=s2Step290EarlyControlArena := by
    unfold Arena.retireSet s2Step290EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step290CompleteMoveArena,s2Step290ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step290CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step290CompleteMoveArena.retireSet {805}).checkRepack []=some s2Step290EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step290EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step290EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_branch : compileHmrBranchRetirement s2Step290EarlyControlSigmaArena 783=some s2Step290EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step290EarlyControl_branchOwned
  · ext q
    simp [s2Step290EarlyControlOutputArena,s2Step290EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step290EarlyControl_classEqualityBorrow : s2Step290EarlyControlPositiveArena.checkBorrow (([847, 790] : List Wire).length-1) s2Step290EarlyControlLog.classWork=some s2Step290EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step290EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step290EarlyControlEqualityArena,s2Step290EarlyControlPositiveArena,s2Step290EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step290EarlyControl_classEqualityOwned : ([847, 790] : List Wire).toFinset⊆s2Step290EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_classEquality : compileHmrEqualityLog s2Step290EarlyControlPositiveArena [847, 790] 0 s2Step290EarlyControlLog.classWork=some (s2Step290EarlyControlEqualityArena,s2Step290EarlyControlLog.classWork,s2Step290EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step290EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step290EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step290EarlyControl_classOwned : ([777, 849, 847] : List Wire).toFinset⊆s2Step290EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_positiveBorrow : s2Step290EarlyControlZeroArena.checkBorrow (1) s2Step290EarlyControlLog.positiveWork=some s2Step290EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step290EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step290EarlyControlPositiveArena,s2Step290EarlyControlZeroArena,s2Step290EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step290EarlyControl_class : compileHmrSourceClassLog s2Step290EarlyControlZeroArena false 777 s2Step290EarlyControlZeroPlan.top 0 847 s2Step290EarlyControlLog.positiveWork s2Step290EarlyControlLog.classWork=some s2Step290EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step290EarlyControlClassPlan s2Step290EarlyControlZeroArena false 777 s2Step290EarlyControlZeroPlan.top 0 847
  constructor
  · decide +kernel
  · exact s2Step290EarlyControl_classOwned
  · exact s2Step290EarlyControl_positiveBorrow
  · exact s2Step290EarlyControl_classEquality

private theorem s2Step290EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_entrySigmaOwned : ([847, 254] : List Wire).toFinset⊆s2Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_fitBorrow : s2Step290EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step290EarlyControlLog.recordFresh=some s2Step290EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step290EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step290EarlyControlFittedArena,s2Step290EarlyControlFlagArena,s2Step290EarlyControlLog,arenaWires]

private theorem s2Step290EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step290EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_fit : compileHmrRecordGrowLog s2Step290EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step290EarlyControlLog.recordFresh=some s2Step290EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step290EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step290EarlyControl_fitBorrow

private theorem s2Step290EarlyControl_flagsBorrow : s2Step290EarlyControlEqualityArena.checkBorrow (6) s2Step290EarlyControlLog.flagWork=some s2Step290EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step290EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step290EarlyControlFlagArena,s2Step290EarlyControlEqualityArena,s2Step290EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step290EarlyControl_flagsOwned : ([811, 253, 252, 251] : List Wire).toFinset⊆s2Step290EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_flags : compileHmrFlagsLog s2Step290EarlyControlClassPlan.equalityArena s2Step290EarlyControlClassPlan.equality.top 253 252 251 s2Step290EarlyControlLog.flagWork=some s2Step290EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step290EarlyControl_flagsOwned⟩
  · exact s2Step290EarlyControl_flagsBorrow

private theorem s2Step290EarlyControl_historyBorrow : s2Step290EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step290EarlyControlLog.recordFresh=some s2Step290EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step290EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step290EarlyControlHistoryArena,s2Step290EarlyControlArena,s2Step290EarlyControlLog,arenaWires]

private theorem s2Step290EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_history : compileHmrRecordGrowLog s2Step290EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step290EarlyControlLog.recordFresh=some s2Step290EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step290EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step290EarlyControl_historyBorrow

private theorem s2Step290EarlyControl_sigmaOwned : ([254, 847] : List Wire).toFinset⊆s2Step290EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_sigmaReleaseOwned : ([847] : List Wire).toFinset⊆s2Step290EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_sigmaRelease : s2Step290EarlyControlHistoryArena.release {847} (fun _ => false)=some s2Step290EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step290EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step290EarlyControlSigmaArena,s2Step290EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step290EarlyControl_sigma : compileHmrSigmaDropLog s2Step290EarlyControlHistoryArena false 0 0 254 847 []=some s2Step290EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step290EarlyControl_sigmaOwned⟩
  · exact s2Step290EarlyControl_sigmaRelease

private theorem s2Step290EarlyControl_zeroBorrow : s2Step290EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step290EarlyControlLog.zeroWork=some s2Step290EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step290EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step290EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step290EarlyControlZeroArena,s2Step290EarlyControlArena,s2Step290EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step290EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step290EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step290EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EarlyControl_zero : compileHmrEqualityLog s2Step290EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step290EarlyControlLog.zeroWork=some (s2Step290EarlyControlZeroArena,s2Step290EarlyControlLog.zeroWork,s2Step290EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step290EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step290EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step290EarlyControl_logged : s2Step290EarlyControlPlan.Logged s2Step290EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 847 254 253 252 251 783 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step290EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step290EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step290EarlyControl_zero
  · exact s2Step290EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step290EarlyControl_flags
  · exact s2Step290EarlyControl_fit
  · exact s2Step290EarlyControl_history
  · exact s2Step290EarlyControl_sigma
  · exact s2Step290EarlyControl_branch

private theorem s2Step290EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step290EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 847 254 253 252 251 783 54 s2Step290EarlyControlLog=some s2Step290EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step290EarlyControlPlan s2Step290EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 847 254 253 252 251 783 54 s2Step290EarlyControl_logged

private def s2Step290EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636],768⟩

private def s2Step290EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step290EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step290EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804],771⟩

private def s2Step290FrontBank : WindowBank := ⟨s2Step290EntryFRow,s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow⟩

private def s2Step290Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796, 849, 768]

private def s2Step290Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 790, 769]

private def s2Step290Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 791, 770]

private def s2Step290Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 812, 771]

private theorem s2Step290Counter_apart : Disjoint s2Step290HeadFvAfter.live s2Step290CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step290HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290Counter_borrowed : s2Step290HeadFvAfter.checkBorrow 4 s2Step290CounterWork=some s2Step290CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step290HeadFvAfter s2Step290CounterDuring s2Step290CounterWork.toFinset s2Step290Counter_bounded s2Step290Counter_apart rfl

private theorem s2Step290Counter_owned : (847::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step290HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step290HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290Counter_checked : compileHmrCounterStepLog s2Step290HeadFvAfter true 847 [772, 773, 774, 775, 776, 777] s2Step290CounterWork=some s2Step290CounterDuring := by
  have owned : ∀q∈847::[772, 773, 774, 775, 776, 777],q∈s2Step290HeadFvAfter.live := fun q hq => s2Step290Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step290Counter_borrowed

private def s2Step290EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step290EntryBank_incomingDistinct : ([s2Step290EntryFRow,s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290EntryF_Incoming : rowsOwned s2Step290EntryFBefore [s2Step290EntryFRow,s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290EntryFRow,s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow] 0 s2Step290EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290EntryBank_outgoingOwned : rowsOwned s2Step290EntryGvAfter [s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step290EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290EntryF_Outgoing : rowsOwned s2Step290EntryGvAfter [s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut] :=
  hmrRows_owned_drop s2Step290EntryGvAfter [s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut] 0 s2Step290EntryBank_outgoingOwned

private theorem s2Step290EntryF_distinct : (s2Step290EntryFRow.sign::s2Step290EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290EntryF_owned : (s2Step290EntryFRow.sign::s2Step290EntryFRow.payload).toFinset⊆s2Step290EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EntryF_reserved : s2Step290EntryFBefore.reserve s2Step290EntryFFresh.toFinset=some s2Step290EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step290EntryFFresh,arenaWires]
  · norm_num [s2Step290EntryFBefore,s2Step290EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step290EntryFAfter,s2Step290EntryFBefore,s2Step290EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step290EntryF_checked : planRowResizeLog s2Step290EntryFBefore s2Step290EntryFRow 126 s2Step290EntryFFresh=
    some (s2Step290EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796],768⟩,growRow 768 s2Step290EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step290EntryFBefore s2Step290EntryFAfter s2Step290EntryFRow 126 s2Step290EntryFFresh
    s2Step290EntryF_distinct s2Step290EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step290EntryF_reserved
  have rowEq : WindowRow.mk (s2Step290EntryFRow.payload++s2Step290EntryFFresh) s2Step290EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step290EntryFvAfter : Arena := s2Step290EntryFAfter

private def s2Step290EntryFvBefore : Arena := s2Step290EntryFAfter

private theorem s2Step290EntryFv_Incoming : rowsOwned s2Step290EntryFvBefore [s2Step290EntryFvRow,s2Step290EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290EntryFRow,s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow] 2 s2Step290EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290EntryFv_Outgoing : rowsOwned s2Step290EntryGvAfter [s2Step290EntryFvOut,s2Step290EntryGvOut] :=
  hmrRows_owned_drop s2Step290EntryGvAfter [s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut] 2 s2Step290EntryBank_outgoingOwned

private theorem s2Step290EntryFv_distinct : (s2Step290EntryFvRow.sign::s2Step290EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290EntryFv_owned : (s2Step290EntryFvRow.sign::s2Step290EntryFvRow.payload).toFinset⊆s2Step290EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EntryFv_reserved : s2Step290EntryFvBefore.reserve s2Step290EntryFvFresh.toFinset=some s2Step290EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step290EntryFvFresh,arenaWires]
  · norm_num [s2Step290EntryFvBefore,s2Step290EntryFAfter,s2Step290EntryFvFresh,arenaWires]
  · simp only [s2Step290EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step290EntryFv_checked : planRowResizeLog s2Step290EntryFvBefore s2Step290EntryFvRow 160 s2Step290EntryFvFresh=
    some (s2Step290EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩,growRow 770 s2Step290EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step290EntryFvBefore s2Step290EntryFvAfter s2Step290EntryFvRow 160 s2Step290EntryFvFresh
    s2Step290EntryFv_distinct s2Step290EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step290EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step290EntryFvRow.payload++s2Step290EntryFvFresh) s2Step290EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step290EntryGAfter : Arena := s2Step290EntryFAfter

private def s2Step290EntryGBefore : Arena := s2Step290EntryFAfter

private theorem s2Step290EntryG_Incoming : rowsOwned s2Step290EntryGBefore [s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290EntryFRow,s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow] 1 s2Step290EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290EntryG_Outgoing : rowsOwned s2Step290EntryGvAfter [s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut] :=
  hmrRows_owned_drop s2Step290EntryGvAfter [s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut] 1 s2Step290EntryBank_outgoingOwned

private theorem s2Step290EntryG_distinct : (s2Step290EntryGRow.sign::s2Step290EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290EntryG_owned : (s2Step290EntryGRow.sign::s2Step290EntryGRow.payload).toFinset⊆s2Step290EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EntryG_reserved : s2Step290EntryGBefore.reserve s2Step290EntryGFresh.toFinset=some s2Step290EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step290EntryGFresh,arenaWires]
  · norm_num [s2Step290EntryGBefore,s2Step290EntryFAfter,s2Step290EntryGFresh,arenaWires]
  · simp only [s2Step290EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step290EntryG_checked : planRowResizeLog s2Step290EntryGBefore s2Step290EntryGRow 126 s2Step290EntryGFresh=
    some (s2Step290EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩,growRow 769 s2Step290EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step290EntryGBefore s2Step290EntryGAfter s2Step290EntryGRow 126 s2Step290EntryGFresh
    s2Step290EntryG_distinct s2Step290EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step290EntryG_reserved
  have rowEq : WindowRow.mk (s2Step290EntryGRow.payload++s2Step290EntryGFresh) s2Step290EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step290EntryGvBefore : Arena := s2Step290EntryFAfter

private theorem s2Step290EntryGv_Incoming : rowsOwned s2Step290EntryGvBefore [s2Step290EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290EntryFRow,s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow] 3 s2Step290EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290EntryGv_Outgoing : rowsOwned s2Step290EntryGvAfter [s2Step290EntryGvOut] :=
  hmrRows_owned_drop s2Step290EntryGvAfter [s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut] 3 s2Step290EntryBank_outgoingOwned

private theorem s2Step290EntryGv_distinct : (s2Step290EntryGvRow.sign::s2Step290EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290EntryGv_owned : (s2Step290EntryGvRow.sign::s2Step290EntryGvRow.payload).toFinset⊆s2Step290EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290EntryGv_reserved : s2Step290EntryGvBefore.reserve s2Step290EntryGvFresh.toFinset=some s2Step290EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step290EntryGvFresh,arenaWires]
  · norm_num [s2Step290EntryGvBefore,s2Step290EntryFAfter,s2Step290EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step290EntryGvAfter,s2Step290EntryGvBefore,s2Step290EntryFAfter,s2Step290EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step290EntryGv_checked : planRowResizeLog s2Step290EntryGvBefore s2Step290EntryGvRow 160 s2Step290EntryGvFresh=
    some (s2Step290EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩,growRow 771 s2Step290EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step290EntryGvBefore s2Step290EntryGvAfter s2Step290EntryGvRow 160 s2Step290EntryGvFresh
    s2Step290EntryGv_distinct s2Step290EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step290EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step290EntryGvRow.payload++s2Step290EntryGvFresh) s2Step290EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step290EntryBank_rows : planWindowRowsLog s2Step290EntryFBefore [(s2Step290EntryFRow,126),(s2Step290EntryGRow,126),(s2Step290EntryFvRow,160),(s2Step290EntryGvRow,160)] [s2Step290EntryFFresh,s2Step290EntryGFresh,s2Step290EntryFvFresh,s2Step290EntryGvFresh]=
    some (s2Step290EntryGvAfter,[s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut],(growRow 768 s2Step290EntryFFresh ++ (growRow 769 s2Step290EntryGFresh ++ (growRow 770 s2Step290EntryFvFresh ++ (growRow 771 s2Step290EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step290EntryGvAfter [] []=some (s2Step290EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step290EntryGvBefore s2Step290EntryGvAfter s2Step290EntryGvAfter
    s2Step290EntryGvRow s2Step290EntryGvOut 160 s2Step290EntryGvFresh [] [] []
    (growRow 771 s2Step290EntryGvFresh) ([]) s2Step290EntryGv_Incoming s2Step290EntryGv_checked h4 s2Step290EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step290EntryFvBefore s2Step290EntryFvAfter s2Step290EntryGvAfter
    s2Step290EntryFvRow s2Step290EntryFvOut 160 s2Step290EntryFvFresh [(s2Step290EntryGvRow,160)] [s2Step290EntryGvFresh] [s2Step290EntryGvOut]
    (growRow 770 s2Step290EntryFvFresh) ((growRow 771 s2Step290EntryGvFresh ++ [])) s2Step290EntryFv_Incoming s2Step290EntryFv_checked h3 s2Step290EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step290EntryGBefore s2Step290EntryGAfter s2Step290EntryGvAfter
    s2Step290EntryGRow s2Step290EntryGOut 126 s2Step290EntryGFresh [(s2Step290EntryFvRow,160),(s2Step290EntryGvRow,160)] [s2Step290EntryFvFresh,s2Step290EntryGvFresh] [s2Step290EntryFvOut,s2Step290EntryGvOut]
    (growRow 769 s2Step290EntryGFresh) ((growRow 770 s2Step290EntryFvFresh ++ (growRow 771 s2Step290EntryGvFresh ++ []))) s2Step290EntryG_Incoming s2Step290EntryG_checked h2 s2Step290EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step290EntryFBefore s2Step290EntryFAfter s2Step290EntryGvAfter
    s2Step290EntryFRow s2Step290EntryFOut 126 s2Step290EntryFFresh [(s2Step290EntryGRow,126),(s2Step290EntryFvRow,160),(s2Step290EntryGvRow,160)] [s2Step290EntryGFresh,s2Step290EntryFvFresh,s2Step290EntryGvFresh] [s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut]
    (growRow 768 s2Step290EntryFFresh) ((growRow 769 s2Step290EntryGFresh ++ (growRow 770 s2Step290EntryFvFresh ++ (growRow 771 s2Step290EntryGvFresh ++ [])))) s2Step290EntryF_Incoming s2Step290EntryF_checked h1 s2Step290EntryF_Outgoing
  exact h0

private theorem s2Step290EntryBank_checked : compileHmrBankResizeLog .entry s2Step290EntryFBefore ⟨s2Step290EntryFRow,s2Step290EntryGRow,s2Step290EntryFvRow,s2Step290EntryGvRow⟩ ⟨126,126,160,160⟩ [s2Step290EntryFFresh,s2Step290EntryGFresh,s2Step290EntryFvFresh,s2Step290EntryGvFresh]=
    some (s2Step290EntryGvAfter,⟨s2Step290EntryFOut,s2Step290EntryGOut,s2Step290EntryFvOut,s2Step290EntryGvOut⟩,(growRow 768 s2Step290EntryFFresh ++ (growRow 769 s2Step290EntryGFresh ++ (growRow 770 s2Step290EntryFvFresh ++ (growRow 771 s2Step290EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step290EntryBank_rows]
  rfl

private def s2Step290ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290ExitFBefore : Arena := s2Step290ExitGAfter

private def s2Step290ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796, 849],768⟩

private def s2Step290ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 791],770⟩

private def s2Step290ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 790],769⟩

private def s2Step290ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 812],771⟩

private theorem s2Step290ExitBank_incomingDistinct : ([s2Step290ExitGRow,s2Step290ExitFRow,s2Step290ExitFvRow,s2Step290ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290ExitF_Incoming : rowsOwned s2Step290ExitFBefore [s2Step290ExitFRow,s2Step290ExitFvRow,s2Step290ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290ExitGRow,s2Step290ExitFRow,s2Step290ExitFvRow,s2Step290ExitGvRow] 1 s2Step290ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290ExitFBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290ExitBank_outgoingOwned : rowsOwned s2Step290ExitGvAfter [s2Step290ExitGOut,s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step290ExitGvAfter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290ExitF_Outgoing : rowsOwned s2Step290ExitGvAfter [s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut] :=
  hmrRows_owned_drop s2Step290ExitGvAfter [s2Step290ExitGOut,s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut] 1 s2Step290ExitBank_outgoingOwned

private theorem s2Step290ExitF_distinct : (s2Step290ExitFRow.sign::s2Step290ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290ExitF_owned : (s2Step290ExitFRow.sign::s2Step290ExitFRow.payload).toFinset⊆s2Step290ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290ExitFBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290ExitF_retired : s2Step290ExitFBefore.retireSet s2Step290ExitFExtra.toFinset=s2Step290ExitFAfter := by
  unfold Arena.retireSet s2Step290ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step290ExitFBefore,s2Step290ExitGAfter,s2Step290ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step290ExitF_checked : planRowResizeLog s2Step290ExitFBefore s2Step290ExitFRow 125 []=
    some (s2Step290ExitFAfter,s2Step290ExitFOut,shrinkRow 768 s2Step290ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step290ExitFBefore s2Step290ExitFRow 125 s2Step290ExitF_distinct s2Step290ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step290ExitFRow.payload.take 125) s2Step290ExitFRow.sign=s2Step290ExitFOut := by decide +kernel
  have hi : s2Step290ExitFRow.payload.drop 125=s2Step290ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step290ExitF_retired] at result
  exact result

private def s2Step290ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290ExitFvBefore : Arena := s2Step290ExitFAfter

private theorem s2Step290ExitFv_Incoming : rowsOwned s2Step290ExitFvBefore [s2Step290ExitFvRow,s2Step290ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290ExitGRow,s2Step290ExitFRow,s2Step290ExitFvRow,s2Step290ExitGvRow] 2 s2Step290ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290ExitFvBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290ExitFv_Outgoing : rowsOwned s2Step290ExitGvAfter [s2Step290ExitFvOut,s2Step290ExitGvOut] :=
  hmrRows_owned_drop s2Step290ExitGvAfter [s2Step290ExitGOut,s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut] 2 s2Step290ExitBank_outgoingOwned

private theorem s2Step290ExitFv_distinct : (s2Step290ExitFvRow.sign::s2Step290ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290ExitFv_owned : (s2Step290ExitFvRow.sign::s2Step290ExitFvRow.payload).toFinset⊆s2Step290ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290ExitFvBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290ExitFv_retired : s2Step290ExitFvBefore.retireSet s2Step290ExitFvExtra.toFinset=s2Step290ExitFvAfter := by
  unfold Arena.retireSet s2Step290ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step290ExitFvBefore,s2Step290ExitFAfter,s2Step290ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step290ExitFv_checked : planRowResizeLog s2Step290ExitFvBefore s2Step290ExitFvRow 160 []=
    some (s2Step290ExitFvAfter,s2Step290ExitFvOut,shrinkRow 770 s2Step290ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step290ExitFvBefore s2Step290ExitFvRow 160 s2Step290ExitFv_distinct s2Step290ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step290ExitFvRow.payload.take 160) s2Step290ExitFvRow.sign=s2Step290ExitFvOut := by decide +kernel
  have hi : s2Step290ExitFvRow.payload.drop 160=s2Step290ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step290ExitFv_retired] at result
  exact result

private def s2Step290ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step290ExitG_Incoming : rowsOwned s2Step290ExitGBefore [s2Step290ExitGRow,s2Step290ExitFRow,s2Step290ExitFvRow,s2Step290ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290ExitGRow,s2Step290ExitFRow,s2Step290ExitFvRow,s2Step290ExitGvRow] 0 s2Step290ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290ExitG_Outgoing : rowsOwned s2Step290ExitGvAfter [s2Step290ExitGOut,s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut] :=
  hmrRows_owned_drop s2Step290ExitGvAfter [s2Step290ExitGOut,s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut] 0 s2Step290ExitBank_outgoingOwned

private theorem s2Step290ExitG_distinct : (s2Step290ExitGRow.sign::s2Step290ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290ExitG_owned : (s2Step290ExitGRow.sign::s2Step290ExitGRow.payload).toFinset⊆s2Step290ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290ExitG_retired : s2Step290ExitGBefore.retireSet s2Step290ExitGExtra.toFinset=s2Step290ExitGAfter := by
  unfold Arena.retireSet s2Step290ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step290ExitGBefore,s2Step290ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step290ExitG_checked : planRowResizeLog s2Step290ExitGBefore s2Step290ExitGRow 125 []=
    some (s2Step290ExitGAfter,s2Step290ExitGOut,shrinkRow 769 s2Step290ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step290ExitGBefore s2Step290ExitGRow 125 s2Step290ExitG_distinct s2Step290ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step290ExitGRow.payload.take 125) s2Step290ExitGRow.sign=s2Step290ExitGOut := by decide +kernel
  have hi : s2Step290ExitGRow.payload.drop 125=s2Step290ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step290ExitG_retired] at result
  exact result

private def s2Step290ExitGvBefore : Arena := s2Step290ExitFvAfter

private theorem s2Step290ExitGv_Incoming : rowsOwned s2Step290ExitGvBefore [s2Step290ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290ExitGRow,s2Step290ExitFRow,s2Step290ExitFvRow,s2Step290ExitGvRow] 3 s2Step290ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290ExitGvBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290ExitGv_Outgoing : rowsOwned s2Step290ExitGvAfter [s2Step290ExitGvOut] :=
  hmrRows_owned_drop s2Step290ExitGvAfter [s2Step290ExitGOut,s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut] 3 s2Step290ExitBank_outgoingOwned

private theorem s2Step290ExitGv_distinct : (s2Step290ExitGvRow.sign::s2Step290ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290ExitGv_owned : (s2Step290ExitGvRow.sign::s2Step290ExitGvRow.payload).toFinset⊆s2Step290ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290ExitGvBefore (fun q => (0≤q ∧ q<125) ∨ (126≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290ExitGv_retired : s2Step290ExitGvBefore.retireSet s2Step290ExitGvExtra.toFinset=s2Step290ExitGvAfter := by
  unfold Arena.retireSet s2Step290ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step290ExitGvBefore,s2Step290ExitFvAfter,s2Step290ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step290ExitGv_checked : planRowResizeLog s2Step290ExitGvBefore s2Step290ExitGvRow 160 []=
    some (s2Step290ExitGvAfter,s2Step290ExitGvOut,shrinkRow 771 s2Step290ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step290ExitGvBefore s2Step290ExitGvRow 160 s2Step290ExitGv_distinct s2Step290ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step290ExitGvRow.payload.take 160) s2Step290ExitGvRow.sign=s2Step290ExitGvOut := by decide +kernel
  have hi : s2Step290ExitGvRow.payload.drop 160=s2Step290ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step290ExitGv_retired] at result
  exact result

private theorem s2Step290ExitBank_rows : planWindowRowsLog s2Step290ExitGBefore [(s2Step290ExitGRow,125),(s2Step290ExitFRow,125),(s2Step290ExitFvRow,160),(s2Step290ExitGvRow,160)] [[],[],[],[]]=
    some (s2Step290ExitGvAfter,[s2Step290ExitGOut,s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut],(shrinkRow 769 s2Step290ExitGExtra ++ (shrinkRow 768 s2Step290ExitFExtra ++ (shrinkRow 770 s2Step290ExitFvExtra ++ (shrinkRow 771 s2Step290ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step290ExitGvAfter [] []=some (s2Step290ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step290ExitGvBefore s2Step290ExitGvAfter s2Step290ExitGvAfter
    s2Step290ExitGvRow s2Step290ExitGvOut 160 [] [] [] []
    (shrinkRow 771 s2Step290ExitGvExtra) ([]) s2Step290ExitGv_Incoming s2Step290ExitGv_checked h4 s2Step290ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step290ExitFvBefore s2Step290ExitFvAfter s2Step290ExitGvAfter
    s2Step290ExitFvRow s2Step290ExitFvOut 160 [] [(s2Step290ExitGvRow,160)] [[]] [s2Step290ExitGvOut]
    (shrinkRow 770 s2Step290ExitFvExtra) ((shrinkRow 771 s2Step290ExitGvExtra ++ [])) s2Step290ExitFv_Incoming s2Step290ExitFv_checked h3 s2Step290ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step290ExitFBefore s2Step290ExitFAfter s2Step290ExitGvAfter
    s2Step290ExitFRow s2Step290ExitFOut 125 [] [(s2Step290ExitFvRow,160),(s2Step290ExitGvRow,160)] [[],[]] [s2Step290ExitFvOut,s2Step290ExitGvOut]
    (shrinkRow 768 s2Step290ExitFExtra) ((shrinkRow 770 s2Step290ExitFvExtra ++ (shrinkRow 771 s2Step290ExitGvExtra ++ []))) s2Step290ExitF_Incoming s2Step290ExitF_checked h2 s2Step290ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step290ExitGBefore s2Step290ExitGAfter s2Step290ExitGvAfter
    s2Step290ExitGRow s2Step290ExitGOut 125 [] [(s2Step290ExitFRow,125),(s2Step290ExitFvRow,160),(s2Step290ExitGvRow,160)] [[],[],[]] [s2Step290ExitFOut,s2Step290ExitFvOut,s2Step290ExitGvOut]
    (shrinkRow 769 s2Step290ExitGExtra) ((shrinkRow 768 s2Step290ExitFExtra ++ (shrinkRow 770 s2Step290ExitFvExtra ++ (shrinkRow 771 s2Step290ExitGvExtra ++ [])))) s2Step290ExitG_Incoming s2Step290ExitG_checked h1 s2Step290ExitG_Outgoing
  exact h0

private theorem s2Step290ExitBank_checked : compileHmrBankResizeLog .exit s2Step290ExitGBefore ⟨s2Step290ExitFRow,s2Step290ExitGRow,s2Step290ExitFvRow,s2Step290ExitGvRow⟩ ⟨125,125,160,160⟩ [[],[],[],[]]=
    some (s2Step290ExitGvAfter,⟨s2Step290ExitFOut,s2Step290ExitGOut,s2Step290ExitFvOut,s2Step290ExitGvOut⟩,(shrinkRow 769 s2Step290ExitGExtra ++ (shrinkRow 768 s2Step290ExitFExtra ++ (shrinkRow 770 s2Step290ExitFvExtra ++ (shrinkRow 771 s2Step290ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step290ExitBank_rows]
  rfl

private theorem s2Step290Add0_apart : Disjoint s2Step290Add0Arena.live s2Step290Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step290Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290Add0_card : s2Step290Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step290Add0_borrowed : s2Step290Add0Arena.checkBorrow (hmrHybridCount s2Step290Add0Arena s2Step290Add0B.length) s2Step290Add0Work=some s2Step290Add0During := by
  have len : s2Step290Add0Work.length=hmrHybridCount s2Step290Add0Arena s2Step290Add0B.length := by
    rw [hmrHybridCount,s2Step290Add0_card]
    decide +kernel
  have nd : s2Step290Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step290Add0Arena s2Step290Add0During s2Step290Add0Work.toFinset s2Step290Add0_bounded s2Step290Add0_apart rfl

private theorem s2Step290Add0_distinct : (811::783::780::(s2Step290Add0A++s2Step290Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290Add0_owned : (811::783::780::(s2Step290Add0A++s2Step290Add0B)).toFinset⊆s2Step290Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step290Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290Add0_checked : compileHmrHybridCinLog s2Step290Add0Arena 783 811 780 s2Step290Add0A s2Step290Add0B s2Step290Add0Work=some s2Step290Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step290Add0Arena s2Step290Add0During 783 811 780 s2Step290Add0A s2Step290Add0B s2Step290Add0Work
    (by decide +kernel) (by decide +kernel) s2Step290Add0_distinct
    (fun q hq => s2Step290Add0_owned (List.mem_toFinset.mpr hq)) s2Step290Add0_borrowed

private theorem s2Step290Add1_apart : Disjoint s2Step290Add1Arena.live s2Step290Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step290Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290Add1_card : s2Step290Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step290Add1_borrowed : s2Step290Add1Arena.checkBorrow (hmrHybridCount s2Step290Add1Arena s2Step290Add1B.length) s2Step290Add1Work=some s2Step290Add1During := by
  have len : s2Step290Add1Work.length=hmrHybridCount s2Step290Add1Arena s2Step290Add1B.length := by
    rw [hmrHybridCount,s2Step290Add1_card]
    decide +kernel
  have nd : s2Step290Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step290Add1Arena s2Step290Add1During s2Step290Add1Work.toFinset s2Step290Add1_bounded s2Step290Add1_apart rfl

private theorem s2Step290Add1_distinct : (811::783::780::(s2Step290Add1A++s2Step290Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290Add1_owned : (811::783::780::(s2Step290Add1A++s2Step290Add1B)).toFinset⊆s2Step290Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step290Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290Add1_checked : compileHmrHybridCinLog s2Step290Add1Arena 783 811 780 s2Step290Add1A s2Step290Add1B s2Step290Add1Work=some s2Step290Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step290Add1Arena s2Step290Add1During 783 811 780 s2Step290Add1A s2Step290Add1B s2Step290Add1Work
    (by decide +kernel) (by decide +kernel) s2Step290Add1_distinct
    (fun q hq => s2Step290Add1_owned (List.mem_toFinset.mpr hq)) s2Step290Add1_borrowed

private theorem s2Step290F4_apart : Disjoint (s2Step290Add0A++s2Step290Add0B).toFinset (s2Step290Add1A++s2Step290Add1B).toFinset := by
  have nd : ((s2Step290Add0A++s2Step290Add0B)++(s2Step290Add1A++s2Step290Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step290F4_carry : s2Step290F4FlagArena.checkBorrow 1 [780]=some s2Step290Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step290F4FlagArena,s2Step290HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step290F4FlagArena,s2Step290HeadFvAfter,s2Step290Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step290F4_distinct : (847::783::811::780::((s2Step290Add0A++s2Step290Add1A)++(s2Step290Add0B++s2Step290Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290F4_flag : s2Step290HeadFvAfter.checkBorrow 1 [811]=some s2Step290F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step290HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step290F4_owned : (847::783::((s2Step290Add0A++s2Step290Add1A)++(s2Step290Add0B++s2Step290Add1B))).toFinset⊆s2Step290HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step290HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290F4_checked : compileHmrHybridF4Log s2Step290HeadFvAfter 847 783 s2Step290Add0A s2Step290Add0B s2Step290Add1A s2Step290Add1B [811] [780] s2Step290Add0Work s2Step290Add1Work=some s2Step290F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step290HeadFvAfter s2Step290F4FlagArena s2Step290Add0Arena s2Step290Add0During s2Step290Add1During 847 783
    s2Step290Add0A s2Step290Add0B s2Step290Add1A s2Step290Add1B [811] [780] s2Step290Add0Work s2Step290Add1Work
    (fun q hq => s2Step290F4_owned (List.mem_toFinset.mpr hq)) s2Step290F4_flag s2Step290F4_carry
    s2Step290F4_distinct s2Step290F4_apart s2Step290Add0_checked s2Step290Add1_checked

private theorem s2Step290Front_branch : s2Step290FrontSigmaArena.checkBorrow 1 [783]=some s2Step290HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step290FrontSigmaArena,s2Step290EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step290FrontSigmaArena,s2Step290EntryGvAfter,s2Step290HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step290Front_entry : HmrFrontEntryValid s2Step290EntryFBefore s2Step290FrontBank 126 160 ⟨125,125,160,160⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step290FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step290EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step290EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step290FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step290Front_sigma : s2Step290EntryGvAfter.checkBorrow 1 [847]=some s2Step290FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step290EntryGvAfter,arenaWires]
  · rfl

private def s2Step290HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290HeadFBefore : Arena := s2Step290HeadGAfter

private def s2Step290HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796],768⟩

private def s2Step290HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815],770⟩

private def s2Step290HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125],769⟩

private def s2Step290HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808],771⟩

private theorem s2Step290HeadBank_incomingDistinct : ([s2Step290HeadGRow,s2Step290HeadFRow,s2Step290HeadGvRow,s2Step290HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290HeadF_Incoming : rowsOwned s2Step290HeadFBefore [s2Step290HeadFRow,s2Step290HeadGvRow,s2Step290HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290HeadGRow,s2Step290HeadFRow,s2Step290HeadGvRow,s2Step290HeadFvRow] 1 s2Step290HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290HeadBank_outgoingOwned : rowsOwned s2Step290HeadFvAfter [s2Step290HeadGOut,s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step290HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290HeadF_Outgoing : rowsOwned s2Step290HeadFvAfter [s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut] :=
  hmrRows_owned_drop s2Step290HeadFvAfter [s2Step290HeadGOut,s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut] 1 s2Step290HeadBank_outgoingOwned

private theorem s2Step290HeadF_distinct : (s2Step290HeadFRow.sign::s2Step290HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290HeadF_owned : (s2Step290HeadFRow.sign::s2Step290HeadFRow.payload).toFinset⊆s2Step290HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290HeadF_reserved : s2Step290HeadFBefore.reserve s2Step290HeadFFresh.toFinset=some s2Step290HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step290HeadFFresh,arenaWires]
  · norm_num [s2Step290HeadFBefore,s2Step290HeadGAfter,s2Step290HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step290HeadFAfter,s2Step290HeadFBefore,s2Step290HeadGAfter,s2Step290HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step290HeadF_checked : planRowResizeLog s2Step290HeadFBefore s2Step290HeadFRow 127 s2Step290HeadFFresh=
    some (s2Step290HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796, 849],768⟩,growRow 768 s2Step290HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step290HeadFBefore s2Step290HeadFAfter s2Step290HeadFRow 127 s2Step290HeadFFresh
    s2Step290HeadF_distinct s2Step290HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step290HeadF_reserved
  have rowEq : WindowRow.mk (s2Step290HeadFRow.payload++s2Step290HeadFFresh) s2Step290HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 796, 849],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step290HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step290HeadFvBefore : Arena := s2Step290HeadGvAfter

private theorem s2Step290HeadFv_Incoming : rowsOwned s2Step290HeadFvBefore [s2Step290HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290HeadGRow,s2Step290HeadFRow,s2Step290HeadGvRow,s2Step290HeadFvRow] 3 s2Step290HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290HeadFv_Outgoing : rowsOwned s2Step290HeadFvAfter [s2Step290HeadFvOut] :=
  hmrRows_owned_drop s2Step290HeadFvAfter [s2Step290HeadGOut,s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut] 3 s2Step290HeadBank_outgoingOwned

private theorem s2Step290HeadFv_distinct : (s2Step290HeadFvRow.sign::s2Step290HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290HeadFv_owned : (s2Step290HeadFvRow.sign::s2Step290HeadFvRow.payload).toFinset⊆s2Step290HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290HeadFv_reserved : s2Step290HeadFvBefore.reserve s2Step290HeadFvFresh.toFinset=some s2Step290HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step290HeadFvFresh,arenaWires]
  · norm_num [s2Step290HeadFvBefore,s2Step290HeadGvAfter,s2Step290HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step290HeadFvAfter,s2Step290HeadFvBefore,s2Step290HeadGvAfter,s2Step290HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step290HeadFv_checked : planRowResizeLog s2Step290HeadFvBefore s2Step290HeadFvRow 161 s2Step290HeadFvFresh=
    some (s2Step290HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 791],770⟩,growRow 770 s2Step290HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step290HeadFvBefore s2Step290HeadFvAfter s2Step290HeadFvRow 161 s2Step290HeadFvFresh
    s2Step290HeadFv_distinct s2Step290HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step290HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step290HeadFvRow.payload++s2Step290HeadFvFresh) s2Step290HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step290HeadG_Incoming : rowsOwned s2Step290HeadGBefore [s2Step290HeadGRow,s2Step290HeadFRow,s2Step290HeadGvRow,s2Step290HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290HeadGRow,s2Step290HeadFRow,s2Step290HeadGvRow,s2Step290HeadFvRow] 0 s2Step290HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290HeadG_Outgoing : rowsOwned s2Step290HeadFvAfter [s2Step290HeadGOut,s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut] :=
  hmrRows_owned_drop s2Step290HeadFvAfter [s2Step290HeadGOut,s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut] 0 s2Step290HeadBank_outgoingOwned

private theorem s2Step290HeadG_distinct : (s2Step290HeadGRow.sign::s2Step290HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290HeadG_owned : (s2Step290HeadGRow.sign::s2Step290HeadGRow.payload).toFinset⊆s2Step290HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290HeadG_reserved : s2Step290HeadGBefore.reserve s2Step290HeadGFresh.toFinset=some s2Step290HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step290HeadGFresh,arenaWires]
  · norm_num [s2Step290HeadGBefore,s2Step290HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step290HeadGAfter,s2Step290HeadGBefore,s2Step290HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step290HeadG_checked : planRowResizeLog s2Step290HeadGBefore s2Step290HeadGRow 127 s2Step290HeadGFresh=
    some (s2Step290HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 790],769⟩,growRow 769 s2Step290HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step290HeadGBefore s2Step290HeadGAfter s2Step290HeadGRow 127 s2Step290HeadGFresh
    s2Step290HeadG_distinct s2Step290HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step290HeadG_reserved
  have rowEq : WindowRow.mk (s2Step290HeadGRow.payload++s2Step290HeadGFresh) s2Step290HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step290HeadGvBefore : Arena := s2Step290HeadFAfter

private theorem s2Step290HeadGv_Incoming : rowsOwned s2Step290HeadGvBefore [s2Step290HeadGvRow,s2Step290HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step290HeadGRow,s2Step290HeadFRow,s2Step290HeadGvRow,s2Step290HeadFvRow] 2 s2Step290HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step290HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step290HeadGv_Outgoing : rowsOwned s2Step290HeadFvAfter [s2Step290HeadGvOut,s2Step290HeadFvOut] :=
  hmrRows_owned_drop s2Step290HeadFvAfter [s2Step290HeadGOut,s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut] 2 s2Step290HeadBank_outgoingOwned

private theorem s2Step290HeadGv_distinct : (s2Step290HeadGvRow.sign::s2Step290HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step290HeadGv_owned : (s2Step290HeadGvRow.sign::s2Step290HeadGvRow.payload).toFinset⊆s2Step290HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step290HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (813≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step290HeadGv_reserved : s2Step290HeadGvBefore.reserve s2Step290HeadGvFresh.toFinset=some s2Step290HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step290HeadGvFresh,arenaWires]
  · norm_num [s2Step290HeadGvBefore,s2Step290HeadFAfter,s2Step290HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step290HeadGvAfter,s2Step290HeadGvBefore,s2Step290HeadFAfter,s2Step290HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step290HeadGv_checked : planRowResizeLog s2Step290HeadGvBefore s2Step290HeadGvRow 161 s2Step290HeadGvFresh=
    some (s2Step290HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 812],771⟩,growRow 771 s2Step290HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step290HeadGvBefore s2Step290HeadGvAfter s2Step290HeadGvRow 161 s2Step290HeadGvFresh
    s2Step290HeadGv_distinct s2Step290HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step290HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step290HeadGvRow.payload++s2Step290HeadGvFresh) s2Step290HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 812],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step290HeadBank_rows : planWindowRowsLog s2Step290HeadGBefore [(s2Step290HeadGRow,127),(s2Step290HeadFRow,127),(s2Step290HeadGvRow,161),(s2Step290HeadFvRow,161)] [s2Step290HeadGFresh,s2Step290HeadFFresh,s2Step290HeadGvFresh,s2Step290HeadFvFresh]=
    some (s2Step290HeadFvAfter,[s2Step290HeadGOut,s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut],(growRow 769 s2Step290HeadGFresh ++ (growRow 768 s2Step290HeadFFresh ++ (growRow 771 s2Step290HeadGvFresh ++ (growRow 770 s2Step290HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step290HeadFvAfter [] []=some (s2Step290HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step290HeadFvBefore s2Step290HeadFvAfter s2Step290HeadFvAfter
    s2Step290HeadFvRow s2Step290HeadFvOut 161 s2Step290HeadFvFresh [] [] []
    (growRow 770 s2Step290HeadFvFresh) ([]) s2Step290HeadFv_Incoming s2Step290HeadFv_checked h4 s2Step290HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step290HeadGvBefore s2Step290HeadGvAfter s2Step290HeadFvAfter
    s2Step290HeadGvRow s2Step290HeadGvOut 161 s2Step290HeadGvFresh [(s2Step290HeadFvRow,161)] [s2Step290HeadFvFresh] [s2Step290HeadFvOut]
    (growRow 771 s2Step290HeadGvFresh) ((growRow 770 s2Step290HeadFvFresh ++ [])) s2Step290HeadGv_Incoming s2Step290HeadGv_checked h3 s2Step290HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step290HeadFBefore s2Step290HeadFAfter s2Step290HeadFvAfter
    s2Step290HeadFRow s2Step290HeadFOut 127 s2Step290HeadFFresh [(s2Step290HeadGvRow,161),(s2Step290HeadFvRow,161)] [s2Step290HeadGvFresh,s2Step290HeadFvFresh] [s2Step290HeadGvOut,s2Step290HeadFvOut]
    (growRow 768 s2Step290HeadFFresh) ((growRow 771 s2Step290HeadGvFresh ++ (growRow 770 s2Step290HeadFvFresh ++ []))) s2Step290HeadF_Incoming s2Step290HeadF_checked h2 s2Step290HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step290HeadGBefore s2Step290HeadGAfter s2Step290HeadFvAfter
    s2Step290HeadGRow s2Step290HeadGOut 127 s2Step290HeadGFresh [(s2Step290HeadFRow,127),(s2Step290HeadGvRow,161),(s2Step290HeadFvRow,161)] [s2Step290HeadFFresh,s2Step290HeadGvFresh,s2Step290HeadFvFresh] [s2Step290HeadFOut,s2Step290HeadGvOut,s2Step290HeadFvOut]
    (growRow 769 s2Step290HeadGFresh) ((growRow 768 s2Step290HeadFFresh ++ (growRow 771 s2Step290HeadGvFresh ++ (growRow 770 s2Step290HeadFvFresh ++ [])))) s2Step290HeadG_Incoming s2Step290HeadG_checked h1 s2Step290HeadG_Outgoing
  exact h0

private theorem s2Step290HeadBank_checked : compileHmrBankResizeLog .headroom s2Step290HeadGBefore ⟨s2Step290HeadFRow,s2Step290HeadGRow,s2Step290HeadFvRow,s2Step290HeadGvRow⟩ ⟨127,127,161,161⟩ [s2Step290HeadGFresh,s2Step290HeadFFresh,s2Step290HeadGvFresh,s2Step290HeadFvFresh]=
    some (s2Step290HeadFvAfter,⟨s2Step290HeadFOut,s2Step290HeadGOut,s2Step290HeadFvOut,s2Step290HeadGvOut⟩,(growRow 769 s2Step290HeadGFresh ++ (growRow 768 s2Step290HeadFFresh ++ (growRow 771 s2Step290HeadGvFresh ++ (growRow 770 s2Step290HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step290HeadBank_rows]
  rfl

private theorem s2Step290Front_checked : compileHmrSourceFrontLog s2Step290EntryFBefore s2Step290FrontBank 126 160 ⟨125,125,160,160⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step290FrontLog=some s2Step290FrontPlan := by
  have pairEq : s2Step290FrontPair=⟨s2Step290HeadFRow,s2Step290HeadGRow,s2Step290HeadFvRow,s2Step290HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step290FrontHead=⟨s2Step290ExitFRow,s2Step290ExitGRow,s2Step290ExitFvRow,s2Step290ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step290Add0A=s2Step290FrontHead.f.wires := by decide +kernel
  have gEq : s2Step290Add0B=s2Step290FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step290Add1A=s2Step290FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step290Add1B=s2Step290FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step290EntryFBefore s2Step290FrontBank 126 160 ⟨125,125,160,160⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step290FrontLog s2Step290FrontPlan
  · exact s2Step290Front_entry
  · exact s2Step290EntryBank_checked
  · exact s2Step290Front_sigma
  · rfl
  · exact s2Step290Front_branch
  · rfl
  · simpa only [s2Step290FrontPlan,pairEq] using s2Step290HeadBank_checked
  · simpa only [s2Step290FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step290F4_checked
  · exact s2Step290Counter_checked
  · rfl
  · simpa only [s2Step290FrontPlan,headEq] using s2Step290ExitBank_checked

private theorem s2Step290Complete_explicit_checked : compileHmrEarlyStepLog s2Step290EntryFBefore s2Step290FrontBank 126 160 ⟨125,125,160,160⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step290CompleteLog=some s2Step290CompletePlan := by
  let Q := s2Step290EarlyControlPlan
  have hq := s2Step290EarlyControl_plan_checked
  have fv1 : s2Step290CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step290CompleteOut.fv.payload[2]?.getD s2Step290CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step290CompleteOut.fv.payload[3]?.getD s2Step290CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step290CompleteOut.fv.payload[4]?.getD s2Step290CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step290EntryFBefore s2Step290EarlyControlArena s2Step290FrontBank 126 160 ⟨125,125,160,160⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step290CompleteLog s2Step290FrontPlan Q
    s2Step290Front_checked s2Step290Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step290Complete_owned s2Step290Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step290EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 847 s2Step290CompleteOut.fv.second (s2Step290CompleteOut.fv.payload[2]?.getD s2Step290CompleteOut.fv.sign) (s2Step290CompleteOut.fv.payload[3]?.getD s2Step290CompleteOut.fv.sign) (s2Step290CompleteOut.fv.payload[4]?.getD s2Step290CompleteOut.fv.sign) 783 54 s2Step290EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep290Arena : Arena := s2Step290EntryFBefore
def s2PrivateStep290Bank : WindowBank := s2Step290FrontBank
def s2PrivateStep290Spec : HmrSourceWalkStepLog := ⟨126,160,⟨125,125,160,160⟩,54,.early s2Step290CompleteLog⟩
def s2PrivateStep290Plan : HmrSourceStepPlan := .early s2Step290CompletePlan
theorem s2PrivateStep290_source : s2PrivateStep290Spec=s2ObservedLogs288[2] := rfl
theorem s2PrivateStep290_checked : compileHmrSourceStepLog s2PrivateStep290Arena s2PrivateStep290Bank
    s2PrivateStep290Spec.fgWidth s2PrivateStep290Spec.vWidth s2PrivateStep290Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 290 s2PrivateStep290Spec.need none s2PrivateStep290Spec.log=some s2PrivateStep290Plan := by
  change compileHmrSourceStepLog s2Step290EntryFBefore s2Step290FrontBank 126 160 ⟨125,125,160,160⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 290 54 none (.early s2Step290CompleteLog)=some (.early s2Step290CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 290<498)]
  rw [s2Step290Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
