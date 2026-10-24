import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep353
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

private def s2Step355CompleteMoves : List (Wire × Wire) := [(821,93),(812,605)]

private def s2Step355EarlyControlLog : HmrEarlyControlLog := ⟨[812, 821, 839, 796, 791],[790],[903],[800, 789, 827, 844, 907, 913],[]⟩

private def s2Step355FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [801]],[[791], [796], [839], [894]],[[], [], [], []]⟩,[808],[849],[790],[903],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 903, 800, 789]⟩

private def s2Step355CompleteLog : HmrEarlyStepLog := ⟨s2Step355FrontLog,s2Step355CompleteMoves,s2Step355EarlyControlLog⟩

private def s2Step355ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604],768⟩

private def s2Step355ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩

private def s2Step355ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92],769⟩

private def s2Step355ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801],771⟩

private def s2Step355FrontOut : WindowBank := ⟨s2Step355ExitFOut,s2Step355ExitGOut,s2Step355ExitFvOut,s2Step355ExitGvOut⟩

private def s2Step355CompleteOut : WindowBank := s2Step355FrontOut.repacked s2Step355CompleteMoves

private def s2Step355EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step355EarlyControlPositiveArena,[790],s2Step355EarlyControlEqualityArena,[903],⟨⟨808,false⟩,[⟨⟨790,false⟩,903⟩]⟩⟩

private def s2Step355EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,812⟩,⟨⟨774,false⟩,821⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,796⟩,⟨⟨777,false⟩,791⟩]⟩

private def s2Step355EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step355EarlyControlZeroArena,s2Step355EarlyControlZeroPlan,s2Step355EarlyControlClassPlan,s2Step355EarlyControlFlagArena,s2Step355EarlyControlFittedArena,s2Step355EarlyControlHistoryArena,s2Step355EarlyControlSigmaArena,s2Step355EarlyControlOutputArena,s2Step355EarlyControlLog⟩

private def s2Step355CounterWork : List Wire := [790, 903, 800, 789]

private theorem s2Step355Counter_bounded : s2Step355CounterWork.toFinset⊆arenaWires := by norm_num [s2Step355CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step355HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355CounterDuring : Arena := ⟨s2Step355HeadFvAfter.live∪s2Step355CounterWork.toFinset,Finset.union_subset s2Step355HeadFvAfter.bounded s2Step355Counter_bounded⟩

private def s2Step355EntryFFresh : List Wire := []

private def s2Step355EntryFvFresh : List Wire := []

private def s2Step355EntryGFresh : List Wire := []

private def s2Step355EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EntryGvFresh : List Wire := [801]

private def s2Step355ExitFExtra : List Wire := [605, 796]

private def s2Step355ExitGExtra : List Wire := [93, 791]

private def s2Step355ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<605) ∨ (606≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355ExitGvExtra : List Wire := [839]

private def s2Step355Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step355Add0_bounded : s2Step355Add0Work.toFinset⊆arenaWires := by
  have h : s2Step355Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step355Add0During : Arena := ⟨s2Step355Add0Arena.live∪s2Step355Add0Work.toFinset,Finset.union_subset s2Step355Add0Arena.bounded s2Step355Add0_bounded⟩

private def s2Step355Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step355Add1_bounded : s2Step355Add1Work.toFinset⊆arenaWires := by
  have h : s2Step355Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step355Add1During : Arena := ⟨s2Step355Add1Arena.live∪s2Step355Add1Work.toFinset,Finset.union_subset s2Step355Add1Arena.bounded s2Step355Add1_bounded⟩

private def s2Step355F4FlagArena : Arena := ⟨s2Step355HeadFvAfter.live∪{790},Finset.union_subset s2Step355HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step355F4Plan : HmrHybridF4Plan := ⟨s2Step355F4FlagArena,[790],s2Step355Add0Arena,[903],s2Step355Add0During,s2Step355Add0Work,s2Step355Add1During,s2Step355Add1Work⟩

private def s2Step355HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 796],768⟩

private def s2Step355HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩

private def s2Step355HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 791],769⟩

private def s2Step355HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 839],771⟩

private def s2Step355FrontHead : WindowBank := ⟨s2Step355HeadFOut,s2Step355HeadGOut,s2Step355HeadFvOut,s2Step355HeadGvOut⟩

private def s2Step355EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605],768⟩

private def s2Step355EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step355EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],769⟩

private def s2Step355EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801],771⟩

private def s2Step355FrontPair : WindowBank := ⟨s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut⟩

private def s2Step355FrontSigmaArena : Arena := ⟨s2Step355EntryGvAfter.live∪{808},Finset.union_subset s2Step355EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step355HeadFFresh : List Wire := [796]

private def s2Step355HeadFvFresh : List Wire := [894]

private def s2Step355HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355HeadGFresh : List Wire := [791]

private def s2Step355HeadGvFresh : List Wire := [839]

private def s2Step355FrontPlan : HmrSourceFront := ⟨s2Step355EntryGvAfter,s2Step355FrontPair,(growRow 768 s2Step355EntryFFresh ++ (growRow 769 s2Step355EntryGFresh ++ (growRow 770 s2Step355EntryFvFresh ++ (growRow 771 s2Step355EntryGvFresh ++ [])))),s2Step355FrontSigmaArena,[808],s2Step355HeadGBefore,[849],
  s2Step355HeadFvAfter,s2Step355FrontHead,(growRow 769 s2Step355HeadGFresh ++ (growRow 768 s2Step355HeadFFresh ++ (growRow 771 s2Step355HeadGvFresh ++ (growRow 770 s2Step355HeadFvFresh ++ [])))),s2Step355F4Plan,s2Step355CounterDuring,s2Step355CounterWork,s2Step355ExitGvAfter,s2Step355FrontOut,(shrinkRow 769 s2Step355ExitGExtra ++ (shrinkRow 768 s2Step355ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step355ExitGvExtra ++ []))))⟩

private def s2Step355CompletePlan : HmrEarlyStepPlan := ⟨s2Step355FrontPlan,s2Step355EarlyControlArena,s2Step355EarlyControlPlan,s2Step355CompleteMoves⟩

private theorem s2Step355Complete_apart : List.Disjoint (s2Step355CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [808, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step355CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[808, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step355Complete_owned : (s2Step355CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step355CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,605),(606,789),(792,796),(797,800),(801,821),(822,827),(828,839),(840,844),(845,903),(904,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step355CompleteRelocationMove0Borrowed : Arena := ⟨s2Step355ExitGvAfter.live∪{93},Finset.union_subset s2Step355ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step355CompleteRelocationMove1Borrowed : Arena := ⟨s2Step355CompleteRelocationMove0After.live∪{605},Finset.union_subset s2Step355CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step355CompleteRelocation_move0_owned : 821∈s2Step355ExitGvAfter.live := by norm_num [s2Step355ExitGvAfter,arenaWires]

private theorem s2Step355CompleteRelocation_move0_reserve : s2Step355ExitGvAfter.reserve {93}=some s2Step355CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step355ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step355CompleteRelocation_move0_retire : s2Step355CompleteRelocationMove0Borrowed.retireSet {821}=s2Step355CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step355CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step355CompleteRelocationMove0Borrowed,s2Step355ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step355CompleteRelocation_move1_owned : 812∈s2Step355CompleteRelocationMove0After.live := by norm_num [s2Step355CompleteRelocationMove0After,arenaWires]

private theorem s2Step355CompleteRelocation_move1_reserve : s2Step355CompleteRelocationMove0After.reserve {605}=some s2Step355CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step355CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step355CompleteRelocation_move1_retire : s2Step355CompleteRelocationMove1Borrowed.retireSet {812}=s2Step355EarlyControlArena := by
  unfold Arena.retireSet s2Step355EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step355CompleteRelocationMove1Borrowed,s2Step355CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step355CompleteRelocation_checked : s2Step355ExitGvAfter.checkRepack [(821,93),(812,605)]=some s2Step355EarlyControlArena := by
  have tail2 : s2Step355EarlyControlArena.checkRepack []=some s2Step355EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step355CompleteRelocationMove0After s2Step355CompleteRelocationMove1Borrowed s2Step355EarlyControlArena s2Step355EarlyControlArena 812 605 []
    s2Step355CompleteRelocation_move1_owned s2Step355CompleteRelocation_move1_reserve s2Step355CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step355ExitGvAfter s2Step355CompleteRelocationMove0Borrowed s2Step355CompleteRelocationMove0After s2Step355EarlyControlArena 821 93 [(812,605)]
    s2Step355CompleteRelocation_move0_owned s2Step355CompleteRelocation_move0_reserve s2Step355CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step355Complete_repack : s2Step355ExitGvAfter.checkRepack s2Step355CompleteMoves=some s2Step355EarlyControlArena := by
  simpa only [s2Step355CompleteMoves] using s2Step355CompleteRelocation_checked

private theorem s2Step355EarlyControl_branchOwned : ([849] : List Wire).toFinset⊆s2Step355EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlSigmaArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_branch : compileHmrBranchRetirement s2Step355EarlyControlSigmaArena 849=some s2Step355EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step355EarlyControl_branchOwned
  · ext q
    simp [s2Step355EarlyControlOutputArena,s2Step355EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step355EarlyControl_classEqualityBorrow : s2Step355EarlyControlPositiveArena.checkBorrow (([808, 790] : List Wire).length-1) s2Step355EarlyControlLog.classWork=some s2Step355EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step355EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step355EarlyControlEqualityArena,s2Step355EarlyControlPositiveArena,s2Step355EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step355EarlyControl_classEqualityOwned : ([808, 790] : List Wire).toFinset⊆s2Step355EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_classEquality : compileHmrEqualityLog s2Step355EarlyControlPositiveArena [808, 790] 0 s2Step355EarlyControlLog.classWork=some (s2Step355EarlyControlEqualityArena,s2Step355EarlyControlLog.classWork,s2Step355EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step355EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step355EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step355EarlyControl_classOwned : ([777, 791, 808] : List Wire).toFinset⊆s2Step355EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_positiveBorrow : s2Step355EarlyControlZeroArena.checkBorrow (1) s2Step355EarlyControlLog.positiveWork=some s2Step355EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step355EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step355EarlyControlPositiveArena,s2Step355EarlyControlZeroArena,s2Step355EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step355EarlyControl_class : compileHmrSourceClassLog s2Step355EarlyControlZeroArena false 777 s2Step355EarlyControlZeroPlan.top 0 808 s2Step355EarlyControlLog.positiveWork s2Step355EarlyControlLog.classWork=some s2Step355EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step355EarlyControlClassPlan s2Step355EarlyControlZeroArena false 777 s2Step355EarlyControlZeroPlan.top 0 808
  constructor
  · decide +kernel
  · exact s2Step355EarlyControl_classOwned
  · exact s2Step355EarlyControl_positiveBorrow
  · exact s2Step355EarlyControl_classEquality

private theorem s2Step355EarlyControl_entryRecordOwned : ([849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_entrySigmaOwned : ([808, 254] : List Wire).toFinset⊆s2Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_fitBorrow : s2Step355EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step355EarlyControlLog.recordFresh=some s2Step355EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step355EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step355EarlyControlFittedArena,s2Step355EarlyControlFlagArena,s2Step355EarlyControlLog,arenaWires]

private theorem s2Step355EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step355EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_fit : compileHmrRecordGrowLog s2Step355EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step355EarlyControlLog.recordFresh=some s2Step355EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step355EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step355EarlyControl_fitBorrow

private theorem s2Step355EarlyControl_flagsBorrow : s2Step355EarlyControlEqualityArena.checkBorrow (6) s2Step355EarlyControlLog.flagWork=some s2Step355EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step355EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step355EarlyControlFlagArena,s2Step355EarlyControlEqualityArena,s2Step355EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step355EarlyControl_flagsOwned : ([903, 253, 252, 251] : List Wire).toFinset⊆s2Step355EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_flags : compileHmrFlagsLog s2Step355EarlyControlClassPlan.equalityArena s2Step355EarlyControlClassPlan.equality.top 253 252 251 s2Step355EarlyControlLog.flagWork=some s2Step355EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step355EarlyControl_flagsOwned⟩
  · exact s2Step355EarlyControl_flagsBorrow

private theorem s2Step355EarlyControl_historyBorrow : s2Step355EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step355EarlyControlLog.recordFresh=some s2Step355EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step355EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step355EarlyControlHistoryArena,s2Step355EarlyControlArena,s2Step355EarlyControlLog,arenaWires]

private theorem s2Step355EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_history : compileHmrRecordGrowLog s2Step355EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step355EarlyControlLog.recordFresh=some s2Step355EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step355EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step355EarlyControl_historyBorrow

private theorem s2Step355EarlyControl_sigmaOwned : ([254, 808] : List Wire).toFinset⊆s2Step355EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_sigmaReleaseOwned : ([808] : List Wire).toFinset⊆s2Step355EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_sigmaRelease : s2Step355EarlyControlHistoryArena.release {808} (fun _ => false)=some s2Step355EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step355EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step355EarlyControlSigmaArena,s2Step355EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step355EarlyControl_sigma : compileHmrSigmaDropLog s2Step355EarlyControlHistoryArena false 0 0 254 808 []=some s2Step355EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step355EarlyControl_sigmaOwned⟩
  · exact s2Step355EarlyControl_sigmaRelease

private theorem s2Step355EarlyControl_zeroBorrow : s2Step355EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step355EarlyControlLog.zeroWork=some s2Step355EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step355EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step355EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step355EarlyControlZeroArena,s2Step355EarlyControlArena,s2Step355EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step355EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step355EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step355EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EarlyControl_zero : compileHmrEqualityLog s2Step355EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step355EarlyControlLog.zeroWork=some (s2Step355EarlyControlZeroArena,s2Step355EarlyControlLog.zeroWork,s2Step355EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step355EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step355EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step355EarlyControl_logged : s2Step355EarlyControlPlan.Logged s2Step355EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 849 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step355EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step355EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step355EarlyControl_zero
  · exact s2Step355EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step355EarlyControl_flags
  · exact s2Step355EarlyControl_fit
  · exact s2Step355EarlyControl_history
  · exact s2Step355EarlyControl_sigma
  · exact s2Step355EarlyControl_branch

private theorem s2Step355EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step355EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 849 60 s2Step355EarlyControlLog=some s2Step355EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step355EarlyControlPlan s2Step355EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 254 253 252 251 849 60 s2Step355EarlyControl_logged

private def s2Step355EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605],768⟩

private def s2Step355EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step355EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],769⟩

private def s2Step355EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891],771⟩

private def s2Step355FrontBank : WindowBank := ⟨s2Step355EntryFRow,s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow⟩

private def s2Step355Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 796, 768]

private def s2Step355Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 791, 769]

private def s2Step355Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 770]

private def s2Step355Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 839, 771]

private theorem s2Step355Counter_apart : Disjoint s2Step355HeadFvAfter.live s2Step355CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step355HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355Counter_borrowed : s2Step355HeadFvAfter.checkBorrow 4 s2Step355CounterWork=some s2Step355CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step355HeadFvAfter s2Step355CounterDuring s2Step355CounterWork.toFinset s2Step355Counter_bounded s2Step355Counter_apart rfl

private theorem s2Step355Counter_owned : (808::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step355HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step355HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355Counter_checked : compileHmrCounterStepLog s2Step355HeadFvAfter true 808 [772, 773, 774, 775, 776, 777] s2Step355CounterWork=some s2Step355CounterDuring := by
  have owned : ∀q∈808::[772, 773, 774, 775, 776, 777],q∈s2Step355HeadFvAfter.live := fun q hq => s2Step355Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step355Counter_borrowed

private def s2Step355EntryFAfter : Arena := s2Step355EntryFBefore

private theorem s2Step355EntryBank_incomingDistinct : ([s2Step355EntryFRow,s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355EntryF_Incoming : rowsOwned s2Step355EntryFBefore [s2Step355EntryFRow,s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355EntryFRow,s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow] 0 s2Step355EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355EntryBank_outgoingOwned : rowsOwned s2Step355EntryGvAfter [s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step355EntryGvAfter (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355EntryF_Outgoing : rowsOwned s2Step355EntryGvAfter [s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut] :=
  hmrRows_owned_drop s2Step355EntryGvAfter [s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut] 0 s2Step355EntryBank_outgoingOwned

private theorem s2Step355EntryF_distinct : (s2Step355EntryFRow.sign::s2Step355EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355EntryF_owned : (s2Step355EntryFRow.sign::s2Step355EntryFRow.payload).toFinset⊆s2Step355EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EntryF_reserved : s2Step355EntryFBefore.reserve s2Step355EntryFFresh.toFinset=some s2Step355EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step355EntryFFresh,arenaWires]
  · norm_num [s2Step355EntryFBefore,s2Step355EntryFFresh,arenaWires]
  · simp only [s2Step355EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step355EntryF_checked : planRowResizeLog s2Step355EntryFBefore s2Step355EntryFRow 94 s2Step355EntryFFresh=
    some (s2Step355EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605],768⟩,growRow 768 s2Step355EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step355EntryFBefore s2Step355EntryFAfter s2Step355EntryFRow 94 s2Step355EntryFFresh
    s2Step355EntryF_distinct s2Step355EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355EntryF_reserved
  have rowEq : WindowRow.mk (s2Step355EntryFRow.payload++s2Step355EntryFFresh) s2Step355EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step355EntryFvAfter : Arena := s2Step355EntryFBefore

private def s2Step355EntryFvBefore : Arena := s2Step355EntryFBefore

private theorem s2Step355EntryFv_Incoming : rowsOwned s2Step355EntryFvBefore [s2Step355EntryFvRow,s2Step355EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355EntryFRow,s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow] 2 s2Step355EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355EntryFv_Outgoing : rowsOwned s2Step355EntryGvAfter [s2Step355EntryFvOut,s2Step355EntryGvOut] :=
  hmrRows_owned_drop s2Step355EntryGvAfter [s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut] 2 s2Step355EntryBank_outgoingOwned

private theorem s2Step355EntryFv_distinct : (s2Step355EntryFvRow.sign::s2Step355EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355EntryFv_owned : (s2Step355EntryFvRow.sign::s2Step355EntryFvRow.payload).toFinset⊆s2Step355EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EntryFv_reserved : s2Step355EntryFvBefore.reserve s2Step355EntryFvFresh.toFinset=some s2Step355EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step355EntryFvFresh,arenaWires]
  · norm_num [s2Step355EntryFvBefore,s2Step355EntryFBefore,s2Step355EntryFvFresh,arenaWires]
  · simp only [s2Step355EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step355EntryFv_checked : planRowResizeLog s2Step355EntryFvBefore s2Step355EntryFvRow 193 s2Step355EntryFvFresh=
    some (s2Step355EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩,growRow 770 s2Step355EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step355EntryFvBefore s2Step355EntryFvAfter s2Step355EntryFvRow 193 s2Step355EntryFvFresh
    s2Step355EntryFv_distinct s2Step355EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step355EntryFvRow.payload++s2Step355EntryFvFresh) s2Step355EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step355EntryGAfter : Arena := s2Step355EntryFBefore

private def s2Step355EntryGBefore : Arena := s2Step355EntryFBefore

private theorem s2Step355EntryG_Incoming : rowsOwned s2Step355EntryGBefore [s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355EntryFRow,s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow] 1 s2Step355EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355EntryG_Outgoing : rowsOwned s2Step355EntryGvAfter [s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut] :=
  hmrRows_owned_drop s2Step355EntryGvAfter [s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut] 1 s2Step355EntryBank_outgoingOwned

private theorem s2Step355EntryG_distinct : (s2Step355EntryGRow.sign::s2Step355EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355EntryG_owned : (s2Step355EntryGRow.sign::s2Step355EntryGRow.payload).toFinset⊆s2Step355EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EntryG_reserved : s2Step355EntryGBefore.reserve s2Step355EntryGFresh.toFinset=some s2Step355EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step355EntryGFresh,arenaWires]
  · norm_num [s2Step355EntryGBefore,s2Step355EntryFBefore,s2Step355EntryGFresh,arenaWires]
  · simp only [s2Step355EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step355EntryG_checked : planRowResizeLog s2Step355EntryGBefore s2Step355EntryGRow 94 s2Step355EntryGFresh=
    some (s2Step355EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],769⟩,growRow 769 s2Step355EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step355EntryGBefore s2Step355EntryGAfter s2Step355EntryGRow 94 s2Step355EntryGFresh
    s2Step355EntryG_distinct s2Step355EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355EntryG_reserved
  have rowEq : WindowRow.mk (s2Step355EntryGRow.payload++s2Step355EntryGFresh) s2Step355EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step355EntryGvBefore : Arena := s2Step355EntryFBefore

private theorem s2Step355EntryGv_Incoming : rowsOwned s2Step355EntryGvBefore [s2Step355EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355EntryFRow,s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow] 3 s2Step355EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355EntryGv_Outgoing : rowsOwned s2Step355EntryGvAfter [s2Step355EntryGvOut] :=
  hmrRows_owned_drop s2Step355EntryGvAfter [s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut] 3 s2Step355EntryBank_outgoingOwned

private theorem s2Step355EntryGv_distinct : (s2Step355EntryGvRow.sign::s2Step355EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355EntryGv_owned : (s2Step355EntryGvRow.sign::s2Step355EntryGvRow.payload).toFinset⊆s2Step355EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355EntryGv_reserved : s2Step355EntryGvBefore.reserve s2Step355EntryGvFresh.toFinset=some s2Step355EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step355EntryGvFresh,arenaWires]
  · norm_num [s2Step355EntryGvBefore,s2Step355EntryFBefore,s2Step355EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step355EntryGvAfter,s2Step355EntryGvBefore,s2Step355EntryFBefore,s2Step355EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step355EntryGv_checked : planRowResizeLog s2Step355EntryGvBefore s2Step355EntryGvRow 193 s2Step355EntryGvFresh=
    some (s2Step355EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801],771⟩,growRow 771 s2Step355EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step355EntryGvBefore s2Step355EntryGvAfter s2Step355EntryGvRow 193 s2Step355EntryGvFresh
    s2Step355EntryGv_distinct s2Step355EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step355EntryGvRow.payload++s2Step355EntryGvFresh) s2Step355EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step355EntryBank_rows : planWindowRowsLog s2Step355EntryFBefore [(s2Step355EntryFRow,94),(s2Step355EntryGRow,94),(s2Step355EntryFvRow,193),(s2Step355EntryGvRow,193)] [s2Step355EntryFFresh,s2Step355EntryGFresh,s2Step355EntryFvFresh,s2Step355EntryGvFresh]=
    some (s2Step355EntryGvAfter,[s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut],(growRow 768 s2Step355EntryFFresh ++ (growRow 769 s2Step355EntryGFresh ++ (growRow 770 s2Step355EntryFvFresh ++ (growRow 771 s2Step355EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step355EntryGvAfter [] []=some (s2Step355EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step355EntryGvBefore s2Step355EntryGvAfter s2Step355EntryGvAfter
    s2Step355EntryGvRow s2Step355EntryGvOut 193 s2Step355EntryGvFresh [] [] []
    (growRow 771 s2Step355EntryGvFresh) ([]) s2Step355EntryGv_Incoming s2Step355EntryGv_checked h4 s2Step355EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step355EntryFvBefore s2Step355EntryFvAfter s2Step355EntryGvAfter
    s2Step355EntryFvRow s2Step355EntryFvOut 193 s2Step355EntryFvFresh [(s2Step355EntryGvRow,193)] [s2Step355EntryGvFresh] [s2Step355EntryGvOut]
    (growRow 770 s2Step355EntryFvFresh) ((growRow 771 s2Step355EntryGvFresh ++ [])) s2Step355EntryFv_Incoming s2Step355EntryFv_checked h3 s2Step355EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step355EntryGBefore s2Step355EntryGAfter s2Step355EntryGvAfter
    s2Step355EntryGRow s2Step355EntryGOut 94 s2Step355EntryGFresh [(s2Step355EntryFvRow,193),(s2Step355EntryGvRow,193)] [s2Step355EntryFvFresh,s2Step355EntryGvFresh] [s2Step355EntryFvOut,s2Step355EntryGvOut]
    (growRow 769 s2Step355EntryGFresh) ((growRow 770 s2Step355EntryFvFresh ++ (growRow 771 s2Step355EntryGvFresh ++ []))) s2Step355EntryG_Incoming s2Step355EntryG_checked h2 s2Step355EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step355EntryFBefore s2Step355EntryFAfter s2Step355EntryGvAfter
    s2Step355EntryFRow s2Step355EntryFOut 94 s2Step355EntryFFresh [(s2Step355EntryGRow,94),(s2Step355EntryFvRow,193),(s2Step355EntryGvRow,193)] [s2Step355EntryGFresh,s2Step355EntryFvFresh,s2Step355EntryGvFresh] [s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut]
    (growRow 768 s2Step355EntryFFresh) ((growRow 769 s2Step355EntryGFresh ++ (growRow 770 s2Step355EntryFvFresh ++ (growRow 771 s2Step355EntryGvFresh ++ [])))) s2Step355EntryF_Incoming s2Step355EntryF_checked h1 s2Step355EntryF_Outgoing
  exact h0

private theorem s2Step355EntryBank_checked : compileHmrBankResizeLog .entry s2Step355EntryFBefore ⟨s2Step355EntryFRow,s2Step355EntryGRow,s2Step355EntryFvRow,s2Step355EntryGvRow⟩ ⟨94,94,193,193⟩ [s2Step355EntryFFresh,s2Step355EntryGFresh,s2Step355EntryFvFresh,s2Step355EntryGvFresh]=
    some (s2Step355EntryGvAfter,⟨s2Step355EntryFOut,s2Step355EntryGOut,s2Step355EntryFvOut,s2Step355EntryGvOut⟩,(growRow 768 s2Step355EntryFFresh ++ (growRow 769 s2Step355EntryGFresh ++ (growRow 770 s2Step355EntryFvFresh ++ (growRow 771 s2Step355EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step355EntryBank_rows]
  rfl

private def s2Step355ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<605) ∨ (606≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355ExitFBefore : Arena := s2Step355ExitGAfter

private def s2Step355ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 796],768⟩

private def s2Step355ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩

private def s2Step355ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 791],769⟩

private def s2Step355ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 839],771⟩

private theorem s2Step355ExitBank_incomingDistinct : ([s2Step355ExitGRow,s2Step355ExitFRow,s2Step355ExitFvRow,s2Step355ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355ExitF_Incoming : rowsOwned s2Step355ExitFBefore [s2Step355ExitFRow,s2Step355ExitFvRow,s2Step355ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355ExitGRow,s2Step355ExitFRow,s2Step355ExitFvRow,s2Step355ExitGvRow] 1 s2Step355ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355ExitFBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355ExitBank_outgoingOwned : rowsOwned s2Step355ExitGvAfter [s2Step355ExitGOut,s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step355ExitGvAfter (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<605) ∨ (606≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355ExitF_Outgoing : rowsOwned s2Step355ExitGvAfter [s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut] :=
  hmrRows_owned_drop s2Step355ExitGvAfter [s2Step355ExitGOut,s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut] 1 s2Step355ExitBank_outgoingOwned

private theorem s2Step355ExitF_distinct : (s2Step355ExitFRow.sign::s2Step355ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355ExitF_owned : (s2Step355ExitFRow.sign::s2Step355ExitFRow.payload).toFinset⊆s2Step355ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355ExitFBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<789) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355ExitF_retired : s2Step355ExitFBefore.retireSet s2Step355ExitFExtra.toFinset=s2Step355ExitFAfter := by
  unfold Arena.retireSet s2Step355ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step355ExitFBefore,s2Step355ExitGAfter,s2Step355ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step355ExitF_checked : planRowResizeLog s2Step355ExitFBefore s2Step355ExitFRow 93 []=
    some (s2Step355ExitFAfter,s2Step355ExitFOut,shrinkRow 768 s2Step355ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step355ExitFBefore s2Step355ExitFRow 93 s2Step355ExitF_distinct s2Step355ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step355ExitFRow.payload.take 93) s2Step355ExitFRow.sign=s2Step355ExitFOut := by decide +kernel
  have hi : s2Step355ExitFRow.payload.drop 93=s2Step355ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step355ExitF_retired] at result
  exact result

private def s2Step355ExitFvAfter : Arena := s2Step355ExitFAfter

private def s2Step355ExitFvBefore : Arena := s2Step355ExitFAfter

private theorem s2Step355ExitFv_Incoming : rowsOwned s2Step355ExitFvBefore [s2Step355ExitFvRow,s2Step355ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355ExitGRow,s2Step355ExitFRow,s2Step355ExitFvRow,s2Step355ExitGvRow] 2 s2Step355ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355ExitFvBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<605) ∨ (606≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355ExitFv_Outgoing : rowsOwned s2Step355ExitGvAfter [s2Step355ExitFvOut,s2Step355ExitGvOut] :=
  hmrRows_owned_drop s2Step355ExitGvAfter [s2Step355ExitGOut,s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut] 2 s2Step355ExitBank_outgoingOwned

private theorem s2Step355ExitFv_distinct : (s2Step355ExitFvRow.sign::s2Step355ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355ExitFv_owned : (s2Step355ExitFvRow.sign::s2Step355ExitFvRow.payload).toFinset⊆s2Step355ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355ExitFvBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<605) ∨ (606≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355ExitFv_reserved : s2Step355ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step355ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step355ExitFv_checked : planRowResizeLog s2Step355ExitFvBefore s2Step355ExitFvRow 194 []=
    some (s2Step355ExitFvAfter,s2Step355ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step355ExitFvBefore s2Step355ExitFvAfter s2Step355ExitFvRow 194 []
    s2Step355ExitFv_distinct s2Step355ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step355ExitFvRow.payload++[]) s2Step355ExitFvRow.sign=s2Step355ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step355ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step355ExitG_Incoming : rowsOwned s2Step355ExitGBefore [s2Step355ExitGRow,s2Step355ExitFRow,s2Step355ExitFvRow,s2Step355ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355ExitGRow,s2Step355ExitFRow,s2Step355ExitFvRow,s2Step355ExitGvRow] 0 s2Step355ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355ExitG_Outgoing : rowsOwned s2Step355ExitGvAfter [s2Step355ExitGOut,s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut] :=
  hmrRows_owned_drop s2Step355ExitGvAfter [s2Step355ExitGOut,s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut] 0 s2Step355ExitBank_outgoingOwned

private theorem s2Step355ExitG_distinct : (s2Step355ExitGRow.sign::s2Step355ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355ExitG_owned : (s2Step355ExitGRow.sign::s2Step355ExitGRow.payload).toFinset⊆s2Step355ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355ExitG_retired : s2Step355ExitGBefore.retireSet s2Step355ExitGExtra.toFinset=s2Step355ExitGAfter := by
  unfold Arena.retireSet s2Step355ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step355ExitGBefore,s2Step355ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step355ExitG_checked : planRowResizeLog s2Step355ExitGBefore s2Step355ExitGRow 93 []=
    some (s2Step355ExitGAfter,s2Step355ExitGOut,shrinkRow 769 s2Step355ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step355ExitGBefore s2Step355ExitGRow 93 s2Step355ExitG_distinct s2Step355ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step355ExitGRow.payload.take 93) s2Step355ExitGRow.sign=s2Step355ExitGOut := by decide +kernel
  have hi : s2Step355ExitGRow.payload.drop 93=s2Step355ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step355ExitG_retired] at result
  exact result

private def s2Step355ExitGvBefore : Arena := s2Step355ExitFAfter

private theorem s2Step355ExitGv_Incoming : rowsOwned s2Step355ExitGvBefore [s2Step355ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355ExitGRow,s2Step355ExitFRow,s2Step355ExitFvRow,s2Step355ExitGvRow] 3 s2Step355ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355ExitGvBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<605) ∨ (606≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355ExitGv_Outgoing : rowsOwned s2Step355ExitGvAfter [s2Step355ExitGvOut] :=
  hmrRows_owned_drop s2Step355ExitGvAfter [s2Step355ExitGOut,s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut] 3 s2Step355ExitBank_outgoingOwned

private theorem s2Step355ExitGv_distinct : (s2Step355ExitGvRow.sign::s2Step355ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355ExitGv_owned : (s2Step355ExitGvRow.sign::s2Step355ExitGvRow.payload).toFinset⊆s2Step355ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355ExitGvBefore (fun q => (0≤q ∧ q<93) ∨ (94≤q ∧ q<605) ∨ (606≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355ExitGv_retired : s2Step355ExitGvBefore.retireSet s2Step355ExitGvExtra.toFinset=s2Step355ExitGvAfter := by
  unfold Arena.retireSet s2Step355ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step355ExitGvBefore,s2Step355ExitFAfter,s2Step355ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step355ExitGv_checked : planRowResizeLog s2Step355ExitGvBefore s2Step355ExitGvRow 193 []=
    some (s2Step355ExitGvAfter,s2Step355ExitGvOut,shrinkRow 771 s2Step355ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step355ExitGvBefore s2Step355ExitGvRow 193 s2Step355ExitGv_distinct s2Step355ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step355ExitGvRow.payload.take 193) s2Step355ExitGvRow.sign=s2Step355ExitGvOut := by decide +kernel
  have hi : s2Step355ExitGvRow.payload.drop 193=s2Step355ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step355ExitGv_retired] at result
  exact result

private theorem s2Step355ExitBank_rows : planWindowRowsLog s2Step355ExitGBefore [(s2Step355ExitGRow,93),(s2Step355ExitFRow,93),(s2Step355ExitFvRow,194),(s2Step355ExitGvRow,193)] [[],[],[],[]]=
    some (s2Step355ExitGvAfter,[s2Step355ExitGOut,s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut],(shrinkRow 769 s2Step355ExitGExtra ++ (shrinkRow 768 s2Step355ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step355ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step355ExitGvAfter [] []=some (s2Step355ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step355ExitGvBefore s2Step355ExitGvAfter s2Step355ExitGvAfter
    s2Step355ExitGvRow s2Step355ExitGvOut 193 [] [] [] []
    (shrinkRow 771 s2Step355ExitGvExtra) ([]) s2Step355ExitGv_Incoming s2Step355ExitGv_checked h4 s2Step355ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step355ExitFvBefore s2Step355ExitFvAfter s2Step355ExitGvAfter
    s2Step355ExitFvRow s2Step355ExitFvOut 194 [] [(s2Step355ExitGvRow,193)] [[]] [s2Step355ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step355ExitGvExtra ++ [])) s2Step355ExitFv_Incoming s2Step355ExitFv_checked h3 s2Step355ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step355ExitFBefore s2Step355ExitFAfter s2Step355ExitGvAfter
    s2Step355ExitFRow s2Step355ExitFOut 93 [] [(s2Step355ExitFvRow,194),(s2Step355ExitGvRow,193)] [[],[]] [s2Step355ExitFvOut,s2Step355ExitGvOut]
    (shrinkRow 768 s2Step355ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step355ExitGvExtra ++ []))) s2Step355ExitF_Incoming s2Step355ExitF_checked h2 s2Step355ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step355ExitGBefore s2Step355ExitGAfter s2Step355ExitGvAfter
    s2Step355ExitGRow s2Step355ExitGOut 93 [] [(s2Step355ExitFRow,93),(s2Step355ExitFvRow,194),(s2Step355ExitGvRow,193)] [[],[],[]] [s2Step355ExitFOut,s2Step355ExitFvOut,s2Step355ExitGvOut]
    (shrinkRow 769 s2Step355ExitGExtra) ((shrinkRow 768 s2Step355ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step355ExitGvExtra ++ [])))) s2Step355ExitG_Incoming s2Step355ExitG_checked h1 s2Step355ExitG_Outgoing
  exact h0

private theorem s2Step355ExitBank_checked : compileHmrBankResizeLog .exit s2Step355ExitGBefore ⟨s2Step355ExitFRow,s2Step355ExitGRow,s2Step355ExitFvRow,s2Step355ExitGvRow⟩ ⟨93,93,194,193⟩ [[],[],[],[]]=
    some (s2Step355ExitGvAfter,⟨s2Step355ExitFOut,s2Step355ExitGOut,s2Step355ExitFvOut,s2Step355ExitGvOut⟩,(shrinkRow 769 s2Step355ExitGExtra ++ (shrinkRow 768 s2Step355ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step355ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step355ExitBank_rows]
  rfl

private theorem s2Step355Add0_apart : Disjoint s2Step355Add0Arena.live s2Step355Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step355Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355Add0_card : s2Step355Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step355Add0_borrowed : s2Step355Add0Arena.checkBorrow (hmrHybridCount s2Step355Add0Arena s2Step355Add0B.length) s2Step355Add0Work=some s2Step355Add0During := by
  have len : s2Step355Add0Work.length=hmrHybridCount s2Step355Add0Arena s2Step355Add0B.length := by
    rw [hmrHybridCount,s2Step355Add0_card]
    decide +kernel
  have nd : s2Step355Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step355Add0Arena s2Step355Add0During s2Step355Add0Work.toFinset s2Step355Add0_bounded s2Step355Add0_apart rfl

private theorem s2Step355Add0_distinct : (790::849::903::(s2Step355Add0A++s2Step355Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355Add0_owned : (790::849::903::(s2Step355Add0A++s2Step355Add0B)).toFinset⊆s2Step355Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step355Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355Add0_checked : compileHmrHybridCinLog s2Step355Add0Arena 849 790 903 s2Step355Add0A s2Step355Add0B s2Step355Add0Work=some s2Step355Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step355Add0Arena s2Step355Add0During 849 790 903 s2Step355Add0A s2Step355Add0B s2Step355Add0Work
    (by decide +kernel) (by decide +kernel) s2Step355Add0_distinct
    (fun q hq => s2Step355Add0_owned (List.mem_toFinset.mpr hq)) s2Step355Add0_borrowed

private theorem s2Step355Add1_apart : Disjoint s2Step355Add1Arena.live s2Step355Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step355Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355Add1_card : s2Step355Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step355Add1_borrowed : s2Step355Add1Arena.checkBorrow (hmrHybridCount s2Step355Add1Arena s2Step355Add1B.length) s2Step355Add1Work=some s2Step355Add1During := by
  have len : s2Step355Add1Work.length=hmrHybridCount s2Step355Add1Arena s2Step355Add1B.length := by
    rw [hmrHybridCount,s2Step355Add1_card]
    decide +kernel
  have nd : s2Step355Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step355Add1Arena s2Step355Add1During s2Step355Add1Work.toFinset s2Step355Add1_bounded s2Step355Add1_apart rfl

private theorem s2Step355Add1_distinct : (790::849::903::(s2Step355Add1A++s2Step355Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355Add1_owned : (790::849::903::(s2Step355Add1A++s2Step355Add1B)).toFinset⊆s2Step355Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step355Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355Add1_checked : compileHmrHybridCinLog s2Step355Add1Arena 849 790 903 s2Step355Add1A s2Step355Add1B s2Step355Add1Work=some s2Step355Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step355Add1Arena s2Step355Add1During 849 790 903 s2Step355Add1A s2Step355Add1B s2Step355Add1Work
    (by decide +kernel) (by decide +kernel) s2Step355Add1_distinct
    (fun q hq => s2Step355Add1_owned (List.mem_toFinset.mpr hq)) s2Step355Add1_borrowed

private theorem s2Step355F4_apart : Disjoint (s2Step355Add0A++s2Step355Add0B).toFinset (s2Step355Add1A++s2Step355Add1B).toFinset := by
  have nd : ((s2Step355Add0A++s2Step355Add0B)++(s2Step355Add1A++s2Step355Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step355F4_carry : s2Step355F4FlagArena.checkBorrow 1 [903]=some s2Step355Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step355F4FlagArena,s2Step355HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step355F4FlagArena,s2Step355HeadFvAfter,s2Step355Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step355F4_distinct : (808::849::790::903::((s2Step355Add0A++s2Step355Add1A)++(s2Step355Add0B++s2Step355Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355F4_flag : s2Step355HeadFvAfter.checkBorrow 1 [790]=some s2Step355F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step355HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step355F4_owned : (808::849::((s2Step355Add0A++s2Step355Add1A)++(s2Step355Add0B++s2Step355Add1B))).toFinset⊆s2Step355HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step355HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355F4_checked : compileHmrHybridF4Log s2Step355HeadFvAfter 808 849 s2Step355Add0A s2Step355Add0B s2Step355Add1A s2Step355Add1B [790] [903] s2Step355Add0Work s2Step355Add1Work=some s2Step355F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step355HeadFvAfter s2Step355F4FlagArena s2Step355Add0Arena s2Step355Add0During s2Step355Add1During 808 849
    s2Step355Add0A s2Step355Add0B s2Step355Add1A s2Step355Add1B [790] [903] s2Step355Add0Work s2Step355Add1Work
    (fun q hq => s2Step355F4_owned (List.mem_toFinset.mpr hq)) s2Step355F4_flag s2Step355F4_carry
    s2Step355F4_distinct s2Step355F4_apart s2Step355Add0_checked s2Step355Add1_checked

private theorem s2Step355Front_branch : s2Step355FrontSigmaArena.checkBorrow 1 [849]=some s2Step355HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step355FrontSigmaArena,s2Step355EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step355FrontSigmaArena,s2Step355EntryGvAfter,s2Step355HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step355Front_entry : HmrFrontEntryValid s2Step355EntryFBefore s2Step355FrontBank 94 193 ⟨93,93,194,193⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step355FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step355EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step355EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step355FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step355Front_sigma : s2Step355EntryGvAfter.checkBorrow 1 [808]=some s2Step355FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step355EntryGvAfter,arenaWires]
  · rfl

private def s2Step355HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355HeadFBefore : Arena := s2Step355HeadGAfter

private def s2Step355HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605],768⟩

private def s2Step355HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788],770⟩

private def s2Step355HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93],769⟩

private def s2Step355HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801],771⟩

private theorem s2Step355HeadBank_incomingDistinct : ([s2Step355HeadGRow,s2Step355HeadFRow,s2Step355HeadGvRow,s2Step355HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355HeadF_Incoming : rowsOwned s2Step355HeadFBefore [s2Step355HeadFRow,s2Step355HeadGvRow,s2Step355HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355HeadGRow,s2Step355HeadFRow,s2Step355HeadGvRow,s2Step355HeadFvRow] 1 s2Step355HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355HeadBank_outgoingOwned : rowsOwned s2Step355HeadFvAfter [s2Step355HeadGOut,s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step355HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355HeadF_Outgoing : rowsOwned s2Step355HeadFvAfter [s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut] :=
  hmrRows_owned_drop s2Step355HeadFvAfter [s2Step355HeadGOut,s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut] 1 s2Step355HeadBank_outgoingOwned

private theorem s2Step355HeadF_distinct : (s2Step355HeadFRow.sign::s2Step355HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355HeadF_owned : (s2Step355HeadFRow.sign::s2Step355HeadFRow.payload).toFinset⊆s2Step355HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355HeadF_reserved : s2Step355HeadFBefore.reserve s2Step355HeadFFresh.toFinset=some s2Step355HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step355HeadFFresh,arenaWires]
  · norm_num [s2Step355HeadFBefore,s2Step355HeadGAfter,s2Step355HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step355HeadFAfter,s2Step355HeadFBefore,s2Step355HeadGAfter,s2Step355HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step355HeadF_checked : planRowResizeLog s2Step355HeadFBefore s2Step355HeadFRow 95 s2Step355HeadFFresh=
    some (s2Step355HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 796],768⟩,growRow 768 s2Step355HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step355HeadFBefore s2Step355HeadFAfter s2Step355HeadFRow 95 s2Step355HeadFFresh
    s2Step355HeadF_distinct s2Step355HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355HeadF_reserved
  have rowEq : WindowRow.mk (s2Step355HeadFRow.payload++s2Step355HeadFFresh) s2Step355HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 796],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step355HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step355HeadFvBefore : Arena := s2Step355HeadGvAfter

private theorem s2Step355HeadFv_Incoming : rowsOwned s2Step355HeadFvBefore [s2Step355HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355HeadGRow,s2Step355HeadFRow,s2Step355HeadGvRow,s2Step355HeadFvRow] 3 s2Step355HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355HeadFv_Outgoing : rowsOwned s2Step355HeadFvAfter [s2Step355HeadFvOut] :=
  hmrRows_owned_drop s2Step355HeadFvAfter [s2Step355HeadGOut,s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut] 3 s2Step355HeadBank_outgoingOwned

private theorem s2Step355HeadFv_distinct : (s2Step355HeadFvRow.sign::s2Step355HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355HeadFv_owned : (s2Step355HeadFvRow.sign::s2Step355HeadFvRow.payload).toFinset⊆s2Step355HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355HeadFv_reserved : s2Step355HeadFvBefore.reserve s2Step355HeadFvFresh.toFinset=some s2Step355HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step355HeadFvFresh,arenaWires]
  · norm_num [s2Step355HeadFvBefore,s2Step355HeadGvAfter,s2Step355HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step355HeadFvAfter,s2Step355HeadFvBefore,s2Step355HeadGvAfter,s2Step355HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step355HeadFv_checked : planRowResizeLog s2Step355HeadFvBefore s2Step355HeadFvRow 194 s2Step355HeadFvFresh=
    some (s2Step355HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩,growRow 770 s2Step355HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step355HeadFvBefore s2Step355HeadFvAfter s2Step355HeadFvRow 194 s2Step355HeadFvFresh
    s2Step355HeadFv_distinct s2Step355HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step355HeadFvRow.payload++s2Step355HeadFvFresh) s2Step355HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step355HeadG_Incoming : rowsOwned s2Step355HeadGBefore [s2Step355HeadGRow,s2Step355HeadFRow,s2Step355HeadGvRow,s2Step355HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355HeadGRow,s2Step355HeadFRow,s2Step355HeadGvRow,s2Step355HeadFvRow] 0 s2Step355HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355HeadG_Outgoing : rowsOwned s2Step355HeadFvAfter [s2Step355HeadGOut,s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut] :=
  hmrRows_owned_drop s2Step355HeadFvAfter [s2Step355HeadGOut,s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut] 0 s2Step355HeadBank_outgoingOwned

private theorem s2Step355HeadG_distinct : (s2Step355HeadGRow.sign::s2Step355HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355HeadG_owned : (s2Step355HeadGRow.sign::s2Step355HeadGRow.payload).toFinset⊆s2Step355HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355HeadG_reserved : s2Step355HeadGBefore.reserve s2Step355HeadGFresh.toFinset=some s2Step355HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step355HeadGFresh,arenaWires]
  · norm_num [s2Step355HeadGBefore,s2Step355HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step355HeadGAfter,s2Step355HeadGBefore,s2Step355HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step355HeadG_checked : planRowResizeLog s2Step355HeadGBefore s2Step355HeadGRow 95 s2Step355HeadGFresh=
    some (s2Step355HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 791],769⟩,growRow 769 s2Step355HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step355HeadGBefore s2Step355HeadGAfter s2Step355HeadGRow 95 s2Step355HeadGFresh
    s2Step355HeadG_distinct s2Step355HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355HeadG_reserved
  have rowEq : WindowRow.mk (s2Step355HeadGRow.payload++s2Step355HeadGFresh) s2Step355HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step355HeadGvBefore : Arena := s2Step355HeadFAfter

private theorem s2Step355HeadGv_Incoming : rowsOwned s2Step355HeadGvBefore [s2Step355HeadGvRow,s2Step355HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step355HeadGRow,s2Step355HeadFRow,s2Step355HeadGvRow,s2Step355HeadFvRow] 2 s2Step355HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step355HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step355HeadGv_Outgoing : rowsOwned s2Step355HeadFvAfter [s2Step355HeadGvOut,s2Step355HeadFvOut] :=
  hmrRows_owned_drop s2Step355HeadFvAfter [s2Step355HeadGOut,s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut] 2 s2Step355HeadBank_outgoingOwned

private theorem s2Step355HeadGv_distinct : (s2Step355HeadGvRow.sign::s2Step355HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step355HeadGv_owned : (s2Step355HeadGvRow.sign::s2Step355HeadGvRow.payload).toFinset⊆s2Step355HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step355HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step355HeadGv_reserved : s2Step355HeadGvBefore.reserve s2Step355HeadGvFresh.toFinset=some s2Step355HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step355HeadGvFresh,arenaWires]
  · norm_num [s2Step355HeadGvBefore,s2Step355HeadFAfter,s2Step355HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step355HeadGvAfter,s2Step355HeadGvBefore,s2Step355HeadFAfter,s2Step355HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step355HeadGv_checked : planRowResizeLog s2Step355HeadGvBefore s2Step355HeadGvRow 194 s2Step355HeadGvFresh=
    some (s2Step355HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 839],771⟩,growRow 771 s2Step355HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step355HeadGvBefore s2Step355HeadGvAfter s2Step355HeadGvRow 194 s2Step355HeadGvFresh
    s2Step355HeadGv_distinct s2Step355HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step355HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step355HeadGvRow.payload++s2Step355HeadGvFresh) s2Step355HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step355HeadBank_rows : planWindowRowsLog s2Step355HeadGBefore [(s2Step355HeadGRow,95),(s2Step355HeadFRow,95),(s2Step355HeadGvRow,194),(s2Step355HeadFvRow,194)] [s2Step355HeadGFresh,s2Step355HeadFFresh,s2Step355HeadGvFresh,s2Step355HeadFvFresh]=
    some (s2Step355HeadFvAfter,[s2Step355HeadGOut,s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut],(growRow 769 s2Step355HeadGFresh ++ (growRow 768 s2Step355HeadFFresh ++ (growRow 771 s2Step355HeadGvFresh ++ (growRow 770 s2Step355HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step355HeadFvAfter [] []=some (s2Step355HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step355HeadFvBefore s2Step355HeadFvAfter s2Step355HeadFvAfter
    s2Step355HeadFvRow s2Step355HeadFvOut 194 s2Step355HeadFvFresh [] [] []
    (growRow 770 s2Step355HeadFvFresh) ([]) s2Step355HeadFv_Incoming s2Step355HeadFv_checked h4 s2Step355HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step355HeadGvBefore s2Step355HeadGvAfter s2Step355HeadFvAfter
    s2Step355HeadGvRow s2Step355HeadGvOut 194 s2Step355HeadGvFresh [(s2Step355HeadFvRow,194)] [s2Step355HeadFvFresh] [s2Step355HeadFvOut]
    (growRow 771 s2Step355HeadGvFresh) ((growRow 770 s2Step355HeadFvFresh ++ [])) s2Step355HeadGv_Incoming s2Step355HeadGv_checked h3 s2Step355HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step355HeadFBefore s2Step355HeadFAfter s2Step355HeadFvAfter
    s2Step355HeadFRow s2Step355HeadFOut 95 s2Step355HeadFFresh [(s2Step355HeadGvRow,194),(s2Step355HeadFvRow,194)] [s2Step355HeadGvFresh,s2Step355HeadFvFresh] [s2Step355HeadGvOut,s2Step355HeadFvOut]
    (growRow 768 s2Step355HeadFFresh) ((growRow 771 s2Step355HeadGvFresh ++ (growRow 770 s2Step355HeadFvFresh ++ []))) s2Step355HeadF_Incoming s2Step355HeadF_checked h2 s2Step355HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step355HeadGBefore s2Step355HeadGAfter s2Step355HeadFvAfter
    s2Step355HeadGRow s2Step355HeadGOut 95 s2Step355HeadGFresh [(s2Step355HeadFRow,95),(s2Step355HeadGvRow,194),(s2Step355HeadFvRow,194)] [s2Step355HeadFFresh,s2Step355HeadGvFresh,s2Step355HeadFvFresh] [s2Step355HeadFOut,s2Step355HeadGvOut,s2Step355HeadFvOut]
    (growRow 769 s2Step355HeadGFresh) ((growRow 768 s2Step355HeadFFresh ++ (growRow 771 s2Step355HeadGvFresh ++ (growRow 770 s2Step355HeadFvFresh ++ [])))) s2Step355HeadG_Incoming s2Step355HeadG_checked h1 s2Step355HeadG_Outgoing
  exact h0

private theorem s2Step355HeadBank_checked : compileHmrBankResizeLog .headroom s2Step355HeadGBefore ⟨s2Step355HeadFRow,s2Step355HeadGRow,s2Step355HeadFvRow,s2Step355HeadGvRow⟩ ⟨95,95,194,194⟩ [s2Step355HeadGFresh,s2Step355HeadFFresh,s2Step355HeadGvFresh,s2Step355HeadFvFresh]=
    some (s2Step355HeadFvAfter,⟨s2Step355HeadFOut,s2Step355HeadGOut,s2Step355HeadFvOut,s2Step355HeadGvOut⟩,(growRow 769 s2Step355HeadGFresh ++ (growRow 768 s2Step355HeadFFresh ++ (growRow 771 s2Step355HeadGvFresh ++ (growRow 770 s2Step355HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step355HeadBank_rows]
  rfl

private theorem s2Step355Front_checked : compileHmrSourceFrontLog s2Step355EntryFBefore s2Step355FrontBank 94 193 ⟨93,93,194,193⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step355FrontLog=some s2Step355FrontPlan := by
  have pairEq : s2Step355FrontPair=⟨s2Step355HeadFRow,s2Step355HeadGRow,s2Step355HeadFvRow,s2Step355HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step355FrontHead=⟨s2Step355ExitFRow,s2Step355ExitGRow,s2Step355ExitFvRow,s2Step355ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step355Add0A=s2Step355FrontHead.f.wires := by decide +kernel
  have gEq : s2Step355Add0B=s2Step355FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step355Add1A=s2Step355FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step355Add1B=s2Step355FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step355EntryFBefore s2Step355FrontBank 94 193 ⟨93,93,194,193⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step355FrontLog s2Step355FrontPlan
  · exact s2Step355Front_entry
  · exact s2Step355EntryBank_checked
  · exact s2Step355Front_sigma
  · rfl
  · exact s2Step355Front_branch
  · rfl
  · simpa only [s2Step355FrontPlan,pairEq] using s2Step355HeadBank_checked
  · simpa only [s2Step355FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step355F4_checked
  · exact s2Step355Counter_checked
  · rfl
  · simpa only [s2Step355FrontPlan,headEq] using s2Step355ExitBank_checked

private theorem s2Step355Complete_explicit_checked : compileHmrEarlyStepLog s2Step355EntryFBefore s2Step355FrontBank 94 193 ⟨93,93,194,193⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step355CompleteLog=some s2Step355CompletePlan := by
  let Q := s2Step355EarlyControlPlan
  have hq := s2Step355EarlyControl_plan_checked
  have fv1 : s2Step355CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step355CompleteOut.fv.payload[2]?.getD s2Step355CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step355CompleteOut.fv.payload[3]?.getD s2Step355CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step355CompleteOut.fv.payload[4]?.getD s2Step355CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step355EntryFBefore s2Step355EarlyControlArena s2Step355FrontBank 94 193 ⟨93,93,194,193⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step355CompleteLog s2Step355FrontPlan Q
    s2Step355Front_checked s2Step355Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step355Complete_owned s2Step355Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step355EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 808 s2Step355CompleteOut.fv.second (s2Step355CompleteOut.fv.payload[2]?.getD s2Step355CompleteOut.fv.sign) (s2Step355CompleteOut.fv.payload[3]?.getD s2Step355CompleteOut.fv.sign) (s2Step355CompleteOut.fv.payload[4]?.getD s2Step355CompleteOut.fv.sign) 849 60 s2Step355EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep355Arena : Arena := s2Step355EntryFBefore
def s2PrivateStep355Bank : WindowBank := s2Step355FrontBank
def s2PrivateStep355Spec : HmrSourceWalkStepLog := ⟨94,193,⟨93,93,194,193⟩,60,.early s2Step355CompleteLog⟩
def s2PrivateStep355Plan : HmrSourceStepPlan := .early s2Step355CompletePlan
theorem s2PrivateStep355_source : s2PrivateStep355Spec=s2ObservedLogs352[3] := rfl
theorem s2PrivateStep355_checked : compileHmrSourceStepLog s2PrivateStep355Arena s2PrivateStep355Bank
    s2PrivateStep355Spec.fgWidth s2PrivateStep355Spec.vWidth s2PrivateStep355Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 355 s2PrivateStep355Spec.need none s2PrivateStep355Spec.log=some s2PrivateStep355Plan := by
  change compileHmrSourceStepLog s2Step355EntryFBefore s2Step355FrontBank 94 193 ⟨93,93,194,193⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 355 60 none (.early s2Step355CompleteLog)=some (.early s2Step355CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 355<498)]
  rw [s2Step355Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
