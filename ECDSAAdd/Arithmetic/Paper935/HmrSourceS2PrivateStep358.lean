import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep356
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

private def s2Step358CompleteMoves : List (Wire × Wire) := [(882,91)]

private def s2Step358EarlyControlLog : HmrEarlyControlLog := ⟨[882, 903, 821, 790, 832],[812],[839],[800, 789, 827, 844, 907, 913],[]⟩

private def s2Step358FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[832], [790], [903], [821]],[[], [], [], []]⟩,[796],[785],[812],[839],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[812, 839, 800, 789]⟩

private def s2Step358CompleteLog : HmrEarlyStepLog := ⟨s2Step358FrontLog,s2Step358CompleteMoves,s2Step358EarlyControlLog⟩

private def s2Step358ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step358ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step358ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],769⟩

private def s2Step358ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private def s2Step358FrontOut : WindowBank := ⟨s2Step358ExitFOut,s2Step358ExitGOut,s2Step358ExitFvOut,s2Step358ExitGvOut⟩

private def s2Step358CompleteOut : WindowBank := s2Step358FrontOut.repacked s2Step358CompleteMoves

private def s2Step358EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step358EarlyControlPositiveArena,[812],s2Step358EarlyControlEqualityArena,[839],⟨⟨796,false⟩,[⟨⟨812,false⟩,839⟩]⟩⟩

private def s2Step358EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,882⟩,⟨⟨774,false⟩,903⟩,⟨⟨775,false⟩,821⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,832⟩]⟩

private def s2Step358EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step358EarlyControlZeroArena,s2Step358EarlyControlZeroPlan,s2Step358EarlyControlClassPlan,s2Step358EarlyControlFlagArena,s2Step358EarlyControlFittedArena,s2Step358EarlyControlHistoryArena,s2Step358EarlyControlSigmaArena,s2Step358EarlyControlOutputArena,s2Step358EarlyControlLog⟩

private def s2Step358CounterWork : List Wire := [812, 839, 800, 789]

private theorem s2Step358Counter_bounded : s2Step358CounterWork.toFinset⊆arenaWires := by norm_num [s2Step358CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step358HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358CounterDuring : Arena := ⟨s2Step358HeadFvAfter.live∪s2Step358CounterWork.toFinset,Finset.union_subset s2Step358HeadFvAfter.bounded s2Step358Counter_bounded⟩

private def s2Step358EntryFFresh : List Wire := []

private def s2Step358EntryFvFresh : List Wire := []

private def s2Step358EntryGFresh : List Wire := []

private def s2Step358EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358EntryGvAfter : Arena := s2Step358EntryFBefore

private def s2Step358EntryGvFresh : List Wire := []

private def s2Step358ExitFExtra : List Wire := [790]

private def s2Step358ExitFvExtra : List Wire := [821]

private def s2Step358ExitGExtra : List Wire := [91, 832]

private def s2Step358ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358ExitGvExtra : List Wire := [903]

private def s2Step358Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358Add0Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step358Add0_bounded : s2Step358Add0Work.toFinset⊆arenaWires := by
  have h : s2Step358Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step358Add0During : Arena := ⟨s2Step358Add0Arena.live∪s2Step358Add0Work.toFinset,Finset.union_subset s2Step358Add0Arena.bounded s2Step358Add0_bounded⟩

private def s2Step358Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358Add1Work : List Wire := [800, 789, 827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step358Add1_bounded : s2Step358Add1Work.toFinset⊆arenaWires := by
  have h : s2Step358Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step358Add1During : Arena := ⟨s2Step358Add1Arena.live∪s2Step358Add1Work.toFinset,Finset.union_subset s2Step358Add1Arena.bounded s2Step358Add1_bounded⟩

private def s2Step358F4FlagArena : Arena := ⟨s2Step358HeadFvAfter.live∪{812},Finset.union_subset s2Step358HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step358F4Plan : HmrHybridF4Plan := ⟨s2Step358F4FlagArena,[812],s2Step358Add0Arena,[839],s2Step358Add0During,s2Step358Add0Work,s2Step358Add1During,s2Step358Add1Work⟩

private def s2Step358HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 790],768⟩

private def s2Step358HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 821],770⟩

private def s2Step358HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 832],769⟩

private def s2Step358HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 903],771⟩

private def s2Step358FrontHead : WindowBank := ⟨s2Step358HeadFOut,s2Step358HeadGOut,s2Step358HeadFvOut,s2Step358HeadGvOut⟩

private def s2Step358EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step358EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step358EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],769⟩

private def s2Step358EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private def s2Step358FrontPair : WindowBank := ⟨s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut⟩

private def s2Step358FrontSigmaArena : Arena := ⟨s2Step358EntryGvAfter.live∪{796},Finset.union_subset s2Step358EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step358HeadFFresh : List Wire := [790]

private def s2Step358HeadFvFresh : List Wire := [821]

private def s2Step358HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358HeadGFresh : List Wire := [832]

private def s2Step358HeadGvFresh : List Wire := [903]

private def s2Step358FrontPlan : HmrSourceFront := ⟨s2Step358EntryGvAfter,s2Step358FrontPair,(growRow 768 s2Step358EntryFFresh ++ (growRow 769 s2Step358EntryGFresh ++ (growRow 770 s2Step358EntryFvFresh ++ (growRow 771 s2Step358EntryGvFresh ++ [])))),s2Step358FrontSigmaArena,[796],s2Step358HeadGBefore,[785],
  s2Step358HeadFvAfter,s2Step358FrontHead,(growRow 769 s2Step358HeadGFresh ++ (growRow 768 s2Step358HeadFFresh ++ (growRow 771 s2Step358HeadGvFresh ++ (growRow 770 s2Step358HeadFvFresh ++ [])))),s2Step358F4Plan,s2Step358CounterDuring,s2Step358CounterWork,s2Step358ExitGvAfter,s2Step358FrontOut,(shrinkRow 769 s2Step358ExitGExtra ++ (shrinkRow 768 s2Step358ExitFExtra ++ (shrinkRow 770 s2Step358ExitFvExtra ++ (shrinkRow 771 s2Step358ExitGvExtra ++ []))))⟩

private def s2Step358CompletePlan : HmrEarlyStepPlan := ⟨s2Step358FrontPlan,s2Step358EarlyControlArena,s2Step358EarlyControlPlan,s2Step358CompleteMoves⟩

private theorem s2Step358Complete_apart : List.Disjoint (s2Step358CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step358CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step358Complete_owned : (s2Step358CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step358CompleteMoveArena : Arena := ⟨s2Step358ExitGvAfter.live∪{91},Finset.union_subset s2Step358ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step358Complete_repack : s2Step358ExitGvAfter.checkRepack s2Step358CompleteMoves=some s2Step358EarlyControlArena := by
  have owned : 882∈s2Step358ExitGvAfter.live := by norm_num [s2Step358ExitGvAfter,arenaWires]
  have reserve : s2Step358ExitGvAfter.reserve {91}=some s2Step358CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step358ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step358CompleteMoveArena.retireSet {882}=s2Step358EarlyControlArena := by
    unfold Arena.retireSet s2Step358EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step358CompleteMoveArena,s2Step358ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step358CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step358CompleteMoveArena.retireSet {882}).checkRepack []=some s2Step358EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step358EarlyControl_branchOwned : ([785] : List Wire).toFinset⊆s2Step358EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlSigmaArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_branch : compileHmrBranchRetirement s2Step358EarlyControlSigmaArena 785=some s2Step358EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step358EarlyControl_branchOwned
  · ext q
    simp [s2Step358EarlyControlOutputArena,s2Step358EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step358EarlyControl_classEqualityBorrow : s2Step358EarlyControlPositiveArena.checkBorrow (([796, 812] : List Wire).length-1) s2Step358EarlyControlLog.classWork=some s2Step358EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step358EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step358EarlyControlEqualityArena,s2Step358EarlyControlPositiveArena,s2Step358EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step358EarlyControl_classEqualityOwned : ([796, 812] : List Wire).toFinset⊆s2Step358EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_classEquality : compileHmrEqualityLog s2Step358EarlyControlPositiveArena [796, 812] 0 s2Step358EarlyControlLog.classWork=some (s2Step358EarlyControlEqualityArena,s2Step358EarlyControlLog.classWork,s2Step358EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step358EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step358EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step358EarlyControl_classOwned : ([777, 832, 796] : List Wire).toFinset⊆s2Step358EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_positiveBorrow : s2Step358EarlyControlZeroArena.checkBorrow (1) s2Step358EarlyControlLog.positiveWork=some s2Step358EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step358EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step358EarlyControlPositiveArena,s2Step358EarlyControlZeroArena,s2Step358EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step358EarlyControl_class : compileHmrSourceClassLog s2Step358EarlyControlZeroArena false 777 s2Step358EarlyControlZeroPlan.top 0 796 s2Step358EarlyControlLog.positiveWork s2Step358EarlyControlLog.classWork=some s2Step358EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step358EarlyControlClassPlan s2Step358EarlyControlZeroArena false 777 s2Step358EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step358EarlyControl_classOwned
  · exact s2Step358EarlyControl_positiveBorrow
  · exact s2Step358EarlyControl_classEquality

private theorem s2Step358EarlyControl_entryRecordOwned : ([785, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_fitBorrow : s2Step358EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step358EarlyControlLog.recordFresh=some s2Step358EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step358EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step358EarlyControlFittedArena,s2Step358EarlyControlFlagArena,s2Step358EarlyControlLog,arenaWires]

private theorem s2Step358EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step358EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_fit : compileHmrRecordGrowLog s2Step358EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step358EarlyControlLog.recordFresh=some s2Step358EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step358EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step358EarlyControl_fitBorrow

private theorem s2Step358EarlyControl_flagsBorrow : s2Step358EarlyControlEqualityArena.checkBorrow (6) s2Step358EarlyControlLog.flagWork=some s2Step358EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step358EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step358EarlyControlFlagArena,s2Step358EarlyControlEqualityArena,s2Step358EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step358EarlyControl_flagsOwned : ([839, 253, 252, 251] : List Wire).toFinset⊆s2Step358EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_flags : compileHmrFlagsLog s2Step358EarlyControlClassPlan.equalityArena s2Step358EarlyControlClassPlan.equality.top 253 252 251 s2Step358EarlyControlLog.flagWork=some s2Step358EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step358EarlyControl_flagsOwned⟩
  · exact s2Step358EarlyControl_flagsBorrow

private theorem s2Step358EarlyControl_historyBorrow : s2Step358EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step358EarlyControlLog.recordFresh=some s2Step358EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step358EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step358EarlyControlHistoryArena,s2Step358EarlyControlArena,s2Step358EarlyControlLog,arenaWires]

private theorem s2Step358EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_history : compileHmrRecordGrowLog s2Step358EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step358EarlyControlLog.recordFresh=some s2Step358EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step358EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step358EarlyControl_historyBorrow

private theorem s2Step358EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step358EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step358EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_sigmaRelease : s2Step358EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step358EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step358EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step358EarlyControlSigmaArena,s2Step358EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step358EarlyControl_sigma : compileHmrSigmaDropLog s2Step358EarlyControlHistoryArena false 0 0 254 796 []=some s2Step358EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step358EarlyControl_sigmaOwned⟩
  · exact s2Step358EarlyControl_sigmaRelease

private theorem s2Step358EarlyControl_zeroBorrow : s2Step358EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step358EarlyControlLog.zeroWork=some s2Step358EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step358EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step358EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step358EarlyControlZeroArena,s2Step358EarlyControlArena,s2Step358EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step358EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step358EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step358EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<882) ∨ (883≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EarlyControl_zero : compileHmrEqualityLog s2Step358EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step358EarlyControlLog.zeroWork=some (s2Step358EarlyControlZeroArena,s2Step358EarlyControlLog.zeroWork,s2Step358EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step358EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step358EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step358EarlyControl_logged : s2Step358EarlyControlPlan.Logged s2Step358EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 785 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step358EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step358EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step358EarlyControl_zero
  · exact s2Step358EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step358EarlyControl_flags
  · exact s2Step358EarlyControl_fit
  · exact s2Step358EarlyControl_history
  · exact s2Step358EarlyControl_sigma
  · exact s2Step358EarlyControl_branch

private theorem s2Step358EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step358EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 785 60 s2Step358EarlyControlLog=some s2Step358EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step358EarlyControlPlan s2Step358EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 254 253 252 251 785 60 s2Step358EarlyControl_logged

private def s2Step358EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step358EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step358EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],769⟩

private def s2Step358EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private def s2Step358FrontBank : WindowBank := ⟨s2Step358EntryFRow,s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow⟩

private def s2Step358Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 790, 768]

private def s2Step358Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 832, 769]

private def s2Step358Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 821, 770]

private def s2Step358Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 903, 771]

private theorem s2Step358Counter_apart : Disjoint s2Step358HeadFvAfter.live s2Step358CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step358HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358Counter_borrowed : s2Step358HeadFvAfter.checkBorrow 4 s2Step358CounterWork=some s2Step358CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step358HeadFvAfter s2Step358CounterDuring s2Step358CounterWork.toFinset s2Step358Counter_bounded s2Step358Counter_apart rfl

private theorem s2Step358Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step358HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step358HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358Counter_checked : compileHmrCounterStepLog s2Step358HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step358CounterWork=some s2Step358CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step358HeadFvAfter.live := fun q hq => s2Step358Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step358Counter_borrowed

private def s2Step358EntryFAfter : Arena := s2Step358EntryFBefore

private theorem s2Step358EntryBank_incomingDistinct : ([s2Step358EntryFRow,s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358EntryF_Incoming : rowsOwned s2Step358EntryFBefore [s2Step358EntryFRow,s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358EntryFRow,s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow] 0 s2Step358EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358EntryBank_outgoingOwned : rowsOwned s2Step358EntryGvAfter [s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step358EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358EntryF_Outgoing : rowsOwned s2Step358EntryGvAfter [s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut] :=
  hmrRows_owned_drop s2Step358EntryGvAfter [s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut] 0 s2Step358EntryBank_outgoingOwned

private theorem s2Step358EntryF_distinct : (s2Step358EntryFRow.sign::s2Step358EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358EntryF_owned : (s2Step358EntryFRow.sign::s2Step358EntryFRow.payload).toFinset⊆s2Step358EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EntryF_reserved : s2Step358EntryFBefore.reserve s2Step358EntryFFresh.toFinset=some s2Step358EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step358EntryFFresh,arenaWires]
  · norm_num [s2Step358EntryFBefore,s2Step358EntryFFresh,arenaWires]
  · simp only [s2Step358EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step358EntryF_checked : planRowResizeLog s2Step358EntryFBefore s2Step358EntryFRow 92 s2Step358EntryFFresh=
    some (s2Step358EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩,growRow 768 s2Step358EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step358EntryFBefore s2Step358EntryFAfter s2Step358EntryFRow 92 s2Step358EntryFFresh
    s2Step358EntryF_distinct s2Step358EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step358EntryF_reserved
  have rowEq : WindowRow.mk (s2Step358EntryFRow.payload++s2Step358EntryFFresh) s2Step358EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step358EntryFvAfter : Arena := s2Step358EntryFBefore

private def s2Step358EntryFvBefore : Arena := s2Step358EntryFBefore

private theorem s2Step358EntryFv_Incoming : rowsOwned s2Step358EntryFvBefore [s2Step358EntryFvRow,s2Step358EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358EntryFRow,s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow] 2 s2Step358EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358EntryFv_Outgoing : rowsOwned s2Step358EntryGvAfter [s2Step358EntryFvOut,s2Step358EntryGvOut] :=
  hmrRows_owned_drop s2Step358EntryGvAfter [s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut] 2 s2Step358EntryBank_outgoingOwned

private theorem s2Step358EntryFv_distinct : (s2Step358EntryFvRow.sign::s2Step358EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358EntryFv_owned : (s2Step358EntryFvRow.sign::s2Step358EntryFvRow.payload).toFinset⊆s2Step358EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EntryFv_reserved : s2Step358EntryFvBefore.reserve s2Step358EntryFvFresh.toFinset=some s2Step358EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step358EntryFvFresh,arenaWires]
  · norm_num [s2Step358EntryFvBefore,s2Step358EntryFBefore,s2Step358EntryFvFresh,arenaWires]
  · simp only [s2Step358EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step358EntryFv_checked : planRowResizeLog s2Step358EntryFvBefore s2Step358EntryFvRow 195 s2Step358EntryFvFresh=
    some (s2Step358EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩,growRow 770 s2Step358EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step358EntryFvBefore s2Step358EntryFvAfter s2Step358EntryFvRow 195 s2Step358EntryFvFresh
    s2Step358EntryFv_distinct s2Step358EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step358EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step358EntryFvRow.payload++s2Step358EntryFvFresh) s2Step358EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step358EntryGAfter : Arena := s2Step358EntryFBefore

private def s2Step358EntryGBefore : Arena := s2Step358EntryFBefore

private theorem s2Step358EntryG_Incoming : rowsOwned s2Step358EntryGBefore [s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358EntryFRow,s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow] 1 s2Step358EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358EntryG_Outgoing : rowsOwned s2Step358EntryGvAfter [s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut] :=
  hmrRows_owned_drop s2Step358EntryGvAfter [s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut] 1 s2Step358EntryBank_outgoingOwned

private theorem s2Step358EntryG_distinct : (s2Step358EntryGRow.sign::s2Step358EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358EntryG_owned : (s2Step358EntryGRow.sign::s2Step358EntryGRow.payload).toFinset⊆s2Step358EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EntryG_reserved : s2Step358EntryGBefore.reserve s2Step358EntryGFresh.toFinset=some s2Step358EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step358EntryGFresh,arenaWires]
  · norm_num [s2Step358EntryGBefore,s2Step358EntryFBefore,s2Step358EntryGFresh,arenaWires]
  · simp only [s2Step358EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step358EntryG_checked : planRowResizeLog s2Step358EntryGBefore s2Step358EntryGRow 92 s2Step358EntryGFresh=
    some (s2Step358EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],769⟩,growRow 769 s2Step358EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step358EntryGBefore s2Step358EntryGAfter s2Step358EntryGRow 92 s2Step358EntryGFresh
    s2Step358EntryG_distinct s2Step358EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step358EntryG_reserved
  have rowEq : WindowRow.mk (s2Step358EntryGRow.payload++s2Step358EntryGFresh) s2Step358EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step358EntryGvBefore : Arena := s2Step358EntryFBefore

private theorem s2Step358EntryGv_Incoming : rowsOwned s2Step358EntryGvBefore [s2Step358EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358EntryFRow,s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow] 3 s2Step358EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358EntryGv_Outgoing : rowsOwned s2Step358EntryGvAfter [s2Step358EntryGvOut] :=
  hmrRows_owned_drop s2Step358EntryGvAfter [s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut] 3 s2Step358EntryBank_outgoingOwned

private theorem s2Step358EntryGv_distinct : (s2Step358EntryGvRow.sign::s2Step358EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358EntryGv_owned : (s2Step358EntryGvRow.sign::s2Step358EntryGvRow.payload).toFinset⊆s2Step358EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358EntryGv_reserved : s2Step358EntryGvBefore.reserve s2Step358EntryGvFresh.toFinset=some s2Step358EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step358EntryGvFresh,arenaWires]
  · norm_num [s2Step358EntryGvBefore,s2Step358EntryFBefore,s2Step358EntryGvFresh,arenaWires]
  · simp only [s2Step358EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step358EntryGv_checked : planRowResizeLog s2Step358EntryGvBefore s2Step358EntryGvRow 195 s2Step358EntryGvFresh=
    some (s2Step358EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩,growRow 771 s2Step358EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step358EntryGvBefore s2Step358EntryGvAfter s2Step358EntryGvRow 195 s2Step358EntryGvFresh
    s2Step358EntryGv_distinct s2Step358EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step358EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step358EntryGvRow.payload++s2Step358EntryGvFresh) s2Step358EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step358EntryBank_rows : planWindowRowsLog s2Step358EntryFBefore [(s2Step358EntryFRow,92),(s2Step358EntryGRow,92),(s2Step358EntryFvRow,195),(s2Step358EntryGvRow,195)] [s2Step358EntryFFresh,s2Step358EntryGFresh,s2Step358EntryFvFresh,s2Step358EntryGvFresh]=
    some (s2Step358EntryGvAfter,[s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut],(growRow 768 s2Step358EntryFFresh ++ (growRow 769 s2Step358EntryGFresh ++ (growRow 770 s2Step358EntryFvFresh ++ (growRow 771 s2Step358EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step358EntryGvAfter [] []=some (s2Step358EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step358EntryGvBefore s2Step358EntryGvAfter s2Step358EntryGvAfter
    s2Step358EntryGvRow s2Step358EntryGvOut 195 s2Step358EntryGvFresh [] [] []
    (growRow 771 s2Step358EntryGvFresh) ([]) s2Step358EntryGv_Incoming s2Step358EntryGv_checked h4 s2Step358EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step358EntryFvBefore s2Step358EntryFvAfter s2Step358EntryGvAfter
    s2Step358EntryFvRow s2Step358EntryFvOut 195 s2Step358EntryFvFresh [(s2Step358EntryGvRow,195)] [s2Step358EntryGvFresh] [s2Step358EntryGvOut]
    (growRow 770 s2Step358EntryFvFresh) ((growRow 771 s2Step358EntryGvFresh ++ [])) s2Step358EntryFv_Incoming s2Step358EntryFv_checked h3 s2Step358EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step358EntryGBefore s2Step358EntryGAfter s2Step358EntryGvAfter
    s2Step358EntryGRow s2Step358EntryGOut 92 s2Step358EntryGFresh [(s2Step358EntryFvRow,195),(s2Step358EntryGvRow,195)] [s2Step358EntryFvFresh,s2Step358EntryGvFresh] [s2Step358EntryFvOut,s2Step358EntryGvOut]
    (growRow 769 s2Step358EntryGFresh) ((growRow 770 s2Step358EntryFvFresh ++ (growRow 771 s2Step358EntryGvFresh ++ []))) s2Step358EntryG_Incoming s2Step358EntryG_checked h2 s2Step358EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step358EntryFBefore s2Step358EntryFAfter s2Step358EntryGvAfter
    s2Step358EntryFRow s2Step358EntryFOut 92 s2Step358EntryFFresh [(s2Step358EntryGRow,92),(s2Step358EntryFvRow,195),(s2Step358EntryGvRow,195)] [s2Step358EntryGFresh,s2Step358EntryFvFresh,s2Step358EntryGvFresh] [s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut]
    (growRow 768 s2Step358EntryFFresh) ((growRow 769 s2Step358EntryGFresh ++ (growRow 770 s2Step358EntryFvFresh ++ (growRow 771 s2Step358EntryGvFresh ++ [])))) s2Step358EntryF_Incoming s2Step358EntryF_checked h1 s2Step358EntryF_Outgoing
  exact h0

private theorem s2Step358EntryBank_checked : compileHmrBankResizeLog .entry s2Step358EntryFBefore ⟨s2Step358EntryFRow,s2Step358EntryGRow,s2Step358EntryFvRow,s2Step358EntryGvRow⟩ ⟨92,92,195,195⟩ [s2Step358EntryFFresh,s2Step358EntryGFresh,s2Step358EntryFvFresh,s2Step358EntryGvFresh]=
    some (s2Step358EntryGvAfter,⟨s2Step358EntryFOut,s2Step358EntryGOut,s2Step358EntryFvOut,s2Step358EntryGvOut⟩,(growRow 768 s2Step358EntryFFresh ++ (growRow 769 s2Step358EntryGFresh ++ (growRow 770 s2Step358EntryFvFresh ++ (growRow 771 s2Step358EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step358EntryBank_rows]
  rfl

private def s2Step358ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358ExitFBefore : Arena := s2Step358ExitGAfter

private def s2Step358ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 790],768⟩

private def s2Step358ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 821],770⟩

private def s2Step358ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 832],769⟩

private def s2Step358ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 903],771⟩

private theorem s2Step358ExitBank_incomingDistinct : ([s2Step358ExitGRow,s2Step358ExitFRow,s2Step358ExitFvRow,s2Step358ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358ExitF_Incoming : rowsOwned s2Step358ExitFBefore [s2Step358ExitFRow,s2Step358ExitFvRow,s2Step358ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358ExitGRow,s2Step358ExitFRow,s2Step358ExitFvRow,s2Step358ExitGvRow] 1 s2Step358ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358ExitFBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358ExitBank_outgoingOwned : rowsOwned s2Step358ExitGvAfter [s2Step358ExitGOut,s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step358ExitGvAfter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358ExitF_Outgoing : rowsOwned s2Step358ExitGvAfter [s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut] :=
  hmrRows_owned_drop s2Step358ExitGvAfter [s2Step358ExitGOut,s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut] 1 s2Step358ExitBank_outgoingOwned

private theorem s2Step358ExitF_distinct : (s2Step358ExitFRow.sign::s2Step358ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358ExitF_owned : (s2Step358ExitFRow.sign::s2Step358ExitFRow.payload).toFinset⊆s2Step358ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358ExitFBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358ExitF_retired : s2Step358ExitFBefore.retireSet s2Step358ExitFExtra.toFinset=s2Step358ExitFAfter := by
  unfold Arena.retireSet s2Step358ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step358ExitFBefore,s2Step358ExitGAfter,s2Step358ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step358ExitF_checked : planRowResizeLog s2Step358ExitFBefore s2Step358ExitFRow 92 []=
    some (s2Step358ExitFAfter,s2Step358ExitFOut,shrinkRow 768 s2Step358ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step358ExitFBefore s2Step358ExitFRow 92 s2Step358ExitF_distinct s2Step358ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step358ExitFRow.payload.take 92) s2Step358ExitFRow.sign=s2Step358ExitFOut := by decide +kernel
  have hi : s2Step358ExitFRow.payload.drop 92=s2Step358ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step358ExitF_retired] at result
  exact result

private def s2Step358ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358ExitFvBefore : Arena := s2Step358ExitFAfter

private theorem s2Step358ExitFv_Incoming : rowsOwned s2Step358ExitFvBefore [s2Step358ExitFvRow,s2Step358ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358ExitGRow,s2Step358ExitFRow,s2Step358ExitFvRow,s2Step358ExitGvRow] 2 s2Step358ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358ExitFvBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358ExitFv_Outgoing : rowsOwned s2Step358ExitGvAfter [s2Step358ExitFvOut,s2Step358ExitGvOut] :=
  hmrRows_owned_drop s2Step358ExitGvAfter [s2Step358ExitGOut,s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut] 2 s2Step358ExitBank_outgoingOwned

private theorem s2Step358ExitFv_distinct : (s2Step358ExitFvRow.sign::s2Step358ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358ExitFv_owned : (s2Step358ExitFvRow.sign::s2Step358ExitFvRow.payload).toFinset⊆s2Step358ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358ExitFvBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358ExitFv_retired : s2Step358ExitFvBefore.retireSet s2Step358ExitFvExtra.toFinset=s2Step358ExitFvAfter := by
  unfold Arena.retireSet s2Step358ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step358ExitFvBefore,s2Step358ExitFAfter,s2Step358ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step358ExitFv_checked : planRowResizeLog s2Step358ExitFvBefore s2Step358ExitFvRow 195 []=
    some (s2Step358ExitFvAfter,s2Step358ExitFvOut,shrinkRow 770 s2Step358ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step358ExitFvBefore s2Step358ExitFvRow 195 s2Step358ExitFv_distinct s2Step358ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step358ExitFvRow.payload.take 195) s2Step358ExitFvRow.sign=s2Step358ExitFvOut := by decide +kernel
  have hi : s2Step358ExitFvRow.payload.drop 195=s2Step358ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step358ExitFv_retired] at result
  exact result

private def s2Step358ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step358ExitG_Incoming : rowsOwned s2Step358ExitGBefore [s2Step358ExitGRow,s2Step358ExitFRow,s2Step358ExitFvRow,s2Step358ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358ExitGRow,s2Step358ExitFRow,s2Step358ExitFvRow,s2Step358ExitGvRow] 0 s2Step358ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358ExitG_Outgoing : rowsOwned s2Step358ExitGvAfter [s2Step358ExitGOut,s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut] :=
  hmrRows_owned_drop s2Step358ExitGvAfter [s2Step358ExitGOut,s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut] 0 s2Step358ExitBank_outgoingOwned

private theorem s2Step358ExitG_distinct : (s2Step358ExitGRow.sign::s2Step358ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358ExitG_owned : (s2Step358ExitGRow.sign::s2Step358ExitGRow.payload).toFinset⊆s2Step358ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358ExitG_retired : s2Step358ExitGBefore.retireSet s2Step358ExitGExtra.toFinset=s2Step358ExitGAfter := by
  unfold Arena.retireSet s2Step358ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step358ExitGBefore,s2Step358ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step358ExitG_checked : planRowResizeLog s2Step358ExitGBefore s2Step358ExitGRow 91 []=
    some (s2Step358ExitGAfter,s2Step358ExitGOut,shrinkRow 769 s2Step358ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step358ExitGBefore s2Step358ExitGRow 91 s2Step358ExitG_distinct s2Step358ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step358ExitGRow.payload.take 91) s2Step358ExitGRow.sign=s2Step358ExitGOut := by decide +kernel
  have hi : s2Step358ExitGRow.payload.drop 91=s2Step358ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step358ExitG_retired] at result
  exact result

private def s2Step358ExitGvBefore : Arena := s2Step358ExitFvAfter

private theorem s2Step358ExitGv_Incoming : rowsOwned s2Step358ExitGvBefore [s2Step358ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358ExitGRow,s2Step358ExitFRow,s2Step358ExitFvRow,s2Step358ExitGvRow] 3 s2Step358ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358ExitGvBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358ExitGv_Outgoing : rowsOwned s2Step358ExitGvAfter [s2Step358ExitGvOut] :=
  hmrRows_owned_drop s2Step358ExitGvAfter [s2Step358ExitGOut,s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut] 3 s2Step358ExitBank_outgoingOwned

private theorem s2Step358ExitGv_distinct : (s2Step358ExitGvRow.sign::s2Step358ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358ExitGv_owned : (s2Step358ExitGvRow.sign::s2Step358ExitGvRow.payload).toFinset⊆s2Step358ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358ExitGvBefore (fun q => (0≤q ∧ q<91) ∨ (92≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358ExitGv_retired : s2Step358ExitGvBefore.retireSet s2Step358ExitGvExtra.toFinset=s2Step358ExitGvAfter := by
  unfold Arena.retireSet s2Step358ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step358ExitGvBefore,s2Step358ExitFvAfter,s2Step358ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step358ExitGv_checked : planRowResizeLog s2Step358ExitGvBefore s2Step358ExitGvRow 195 []=
    some (s2Step358ExitGvAfter,s2Step358ExitGvOut,shrinkRow 771 s2Step358ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step358ExitGvBefore s2Step358ExitGvRow 195 s2Step358ExitGv_distinct s2Step358ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step358ExitGvRow.payload.take 195) s2Step358ExitGvRow.sign=s2Step358ExitGvOut := by decide +kernel
  have hi : s2Step358ExitGvRow.payload.drop 195=s2Step358ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step358ExitGv_retired] at result
  exact result

private theorem s2Step358ExitBank_rows : planWindowRowsLog s2Step358ExitGBefore [(s2Step358ExitGRow,91),(s2Step358ExitFRow,92),(s2Step358ExitFvRow,195),(s2Step358ExitGvRow,195)] [[],[],[],[]]=
    some (s2Step358ExitGvAfter,[s2Step358ExitGOut,s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut],(shrinkRow 769 s2Step358ExitGExtra ++ (shrinkRow 768 s2Step358ExitFExtra ++ (shrinkRow 770 s2Step358ExitFvExtra ++ (shrinkRow 771 s2Step358ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step358ExitGvAfter [] []=some (s2Step358ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step358ExitGvBefore s2Step358ExitGvAfter s2Step358ExitGvAfter
    s2Step358ExitGvRow s2Step358ExitGvOut 195 [] [] [] []
    (shrinkRow 771 s2Step358ExitGvExtra) ([]) s2Step358ExitGv_Incoming s2Step358ExitGv_checked h4 s2Step358ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step358ExitFvBefore s2Step358ExitFvAfter s2Step358ExitGvAfter
    s2Step358ExitFvRow s2Step358ExitFvOut 195 [] [(s2Step358ExitGvRow,195)] [[]] [s2Step358ExitGvOut]
    (shrinkRow 770 s2Step358ExitFvExtra) ((shrinkRow 771 s2Step358ExitGvExtra ++ [])) s2Step358ExitFv_Incoming s2Step358ExitFv_checked h3 s2Step358ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step358ExitFBefore s2Step358ExitFAfter s2Step358ExitGvAfter
    s2Step358ExitFRow s2Step358ExitFOut 92 [] [(s2Step358ExitFvRow,195),(s2Step358ExitGvRow,195)] [[],[]] [s2Step358ExitFvOut,s2Step358ExitGvOut]
    (shrinkRow 768 s2Step358ExitFExtra) ((shrinkRow 770 s2Step358ExitFvExtra ++ (shrinkRow 771 s2Step358ExitGvExtra ++ []))) s2Step358ExitF_Incoming s2Step358ExitF_checked h2 s2Step358ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step358ExitGBefore s2Step358ExitGAfter s2Step358ExitGvAfter
    s2Step358ExitGRow s2Step358ExitGOut 91 [] [(s2Step358ExitFRow,92),(s2Step358ExitFvRow,195),(s2Step358ExitGvRow,195)] [[],[],[]] [s2Step358ExitFOut,s2Step358ExitFvOut,s2Step358ExitGvOut]
    (shrinkRow 769 s2Step358ExitGExtra) ((shrinkRow 768 s2Step358ExitFExtra ++ (shrinkRow 770 s2Step358ExitFvExtra ++ (shrinkRow 771 s2Step358ExitGvExtra ++ [])))) s2Step358ExitG_Incoming s2Step358ExitG_checked h1 s2Step358ExitG_Outgoing
  exact h0

private theorem s2Step358ExitBank_checked : compileHmrBankResizeLog .exit s2Step358ExitGBefore ⟨s2Step358ExitFRow,s2Step358ExitGRow,s2Step358ExitFvRow,s2Step358ExitGvRow⟩ ⟨92,91,195,195⟩ [[],[],[],[]]=
    some (s2Step358ExitGvAfter,⟨s2Step358ExitFOut,s2Step358ExitGOut,s2Step358ExitFvOut,s2Step358ExitGvOut⟩,(shrinkRow 769 s2Step358ExitGExtra ++ (shrinkRow 768 s2Step358ExitFExtra ++ (shrinkRow 770 s2Step358ExitFvExtra ++ (shrinkRow 771 s2Step358ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step358ExitBank_rows]
  rfl

private theorem s2Step358Add0_apart : Disjoint s2Step358Add0Arena.live s2Step358Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step358Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358Add0_card : s2Step358Add0Arena.live.card=908 := by
  decide +kernel

private theorem s2Step358Add0_borrowed : s2Step358Add0Arena.checkBorrow (hmrHybridCount s2Step358Add0Arena s2Step358Add0B.length) s2Step358Add0Work=some s2Step358Add0During := by
  have len : s2Step358Add0Work.length=hmrHybridCount s2Step358Add0Arena s2Step358Add0B.length := by
    rw [hmrHybridCount,s2Step358Add0_card]
    decide +kernel
  have nd : s2Step358Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step358Add0Arena s2Step358Add0During s2Step358Add0Work.toFinset s2Step358Add0_bounded s2Step358Add0_apart rfl

private theorem s2Step358Add0_distinct : (812::785::839::(s2Step358Add0A++s2Step358Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358Add0_owned : (812::785::839::(s2Step358Add0A++s2Step358Add0B)).toFinset⊆s2Step358Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step358Add0Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358Add0_checked : compileHmrHybridCinLog s2Step358Add0Arena 785 812 839 s2Step358Add0A s2Step358Add0B s2Step358Add0Work=some s2Step358Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step358Add0Arena s2Step358Add0During 785 812 839 s2Step358Add0A s2Step358Add0B s2Step358Add0Work
    (by decide +kernel) (by decide +kernel) s2Step358Add0_distinct
    (fun q hq => s2Step358Add0_owned (List.mem_toFinset.mpr hq)) s2Step358Add0_borrowed

private theorem s2Step358Add1_apart : Disjoint s2Step358Add1Arena.live s2Step358Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step358Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358Add1_card : s2Step358Add1Arena.live.card=908 := by
  decide +kernel

private theorem s2Step358Add1_borrowed : s2Step358Add1Arena.checkBorrow (hmrHybridCount s2Step358Add1Arena s2Step358Add1B.length) s2Step358Add1Work=some s2Step358Add1During := by
  have len : s2Step358Add1Work.length=hmrHybridCount s2Step358Add1Arena s2Step358Add1B.length := by
    rw [hmrHybridCount,s2Step358Add1_card]
    decide +kernel
  have nd : s2Step358Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step358Add1Arena s2Step358Add1During s2Step358Add1Work.toFinset s2Step358Add1_bounded s2Step358Add1_apart rfl

private theorem s2Step358Add1_distinct : (812::785::839::(s2Step358Add1A++s2Step358Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358Add1_owned : (812::785::839::(s2Step358Add1A++s2Step358Add1B)).toFinset⊆s2Step358Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step358Add1Arena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358Add1_checked : compileHmrHybridCinLog s2Step358Add1Arena 785 812 839 s2Step358Add1A s2Step358Add1B s2Step358Add1Work=some s2Step358Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step358Add1Arena s2Step358Add1During 785 812 839 s2Step358Add1A s2Step358Add1B s2Step358Add1Work
    (by decide +kernel) (by decide +kernel) s2Step358Add1_distinct
    (fun q hq => s2Step358Add1_owned (List.mem_toFinset.mpr hq)) s2Step358Add1_borrowed

private theorem s2Step358F4_apart : Disjoint (s2Step358Add0A++s2Step358Add0B).toFinset (s2Step358Add1A++s2Step358Add1B).toFinset := by
  have nd : ((s2Step358Add0A++s2Step358Add0B)++(s2Step358Add1A++s2Step358Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step358F4_carry : s2Step358F4FlagArena.checkBorrow 1 [839]=some s2Step358Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step358F4FlagArena,s2Step358HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step358F4FlagArena,s2Step358HeadFvAfter,s2Step358Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step358F4_distinct : (796::785::812::839::((s2Step358Add0A++s2Step358Add1A)++(s2Step358Add0B++s2Step358Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358F4_flag : s2Step358HeadFvAfter.checkBorrow 1 [812]=some s2Step358F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step358HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step358F4_owned : (796::785::((s2Step358Add0A++s2Step358Add1A)++(s2Step358Add0B++s2Step358Add1B))).toFinset⊆s2Step358HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step358HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358F4_checked : compileHmrHybridF4Log s2Step358HeadFvAfter 796 785 s2Step358Add0A s2Step358Add0B s2Step358Add1A s2Step358Add1B [812] [839] s2Step358Add0Work s2Step358Add1Work=some s2Step358F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step358HeadFvAfter s2Step358F4FlagArena s2Step358Add0Arena s2Step358Add0During s2Step358Add1During 796 785
    s2Step358Add0A s2Step358Add0B s2Step358Add1A s2Step358Add1B [812] [839] s2Step358Add0Work s2Step358Add1Work
    (fun q hq => s2Step358F4_owned (List.mem_toFinset.mpr hq)) s2Step358F4_flag s2Step358F4_carry
    s2Step358F4_distinct s2Step358F4_apart s2Step358Add0_checked s2Step358Add1_checked

private theorem s2Step358Front_branch : s2Step358FrontSigmaArena.checkBorrow 1 [785]=some s2Step358HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step358FrontSigmaArena,s2Step358EntryGvAfter,s2Step358EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step358FrontSigmaArena,s2Step358EntryGvAfter,s2Step358EntryFBefore,s2Step358HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step358Front_entry : HmrFrontEntryValid s2Step358EntryFBefore s2Step358FrontBank 92 195 ⟨92,91,195,195⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step358FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step358EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step358EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step358FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step358Front_sigma : s2Step358EntryGvAfter.checkBorrow 1 [796]=some s2Step358FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step358EntryGvAfter,s2Step358EntryFBefore,arenaWires]
  · rfl

private def s2Step358HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358HeadFBefore : Arena := s2Step358HeadGAfter

private def s2Step358HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603],768⟩

private def s2Step358HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791],770⟩

private def s2Step358HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91],769⟩

private def s2Step358HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808],771⟩

private theorem s2Step358HeadBank_incomingDistinct : ([s2Step358HeadGRow,s2Step358HeadFRow,s2Step358HeadGvRow,s2Step358HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358HeadF_Incoming : rowsOwned s2Step358HeadFBefore [s2Step358HeadFRow,s2Step358HeadGvRow,s2Step358HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358HeadGRow,s2Step358HeadFRow,s2Step358HeadGvRow,s2Step358HeadFvRow] 1 s2Step358HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358HeadBank_outgoingOwned : rowsOwned s2Step358HeadFvAfter [s2Step358HeadGOut,s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step358HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358HeadF_Outgoing : rowsOwned s2Step358HeadFvAfter [s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut] :=
  hmrRows_owned_drop s2Step358HeadFvAfter [s2Step358HeadGOut,s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut] 1 s2Step358HeadBank_outgoingOwned

private theorem s2Step358HeadF_distinct : (s2Step358HeadFRow.sign::s2Step358HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358HeadF_owned : (s2Step358HeadFRow.sign::s2Step358HeadFRow.payload).toFinset⊆s2Step358HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358HeadF_reserved : s2Step358HeadFBefore.reserve s2Step358HeadFFresh.toFinset=some s2Step358HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step358HeadFFresh,arenaWires]
  · norm_num [s2Step358HeadFBefore,s2Step358HeadGAfter,s2Step358HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step358HeadFAfter,s2Step358HeadFBefore,s2Step358HeadGAfter,s2Step358HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step358HeadF_checked : planRowResizeLog s2Step358HeadFBefore s2Step358HeadFRow 93 s2Step358HeadFFresh=
    some (s2Step358HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 790],768⟩,growRow 768 s2Step358HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step358HeadFBefore s2Step358HeadFAfter s2Step358HeadFRow 93 s2Step358HeadFFresh
    s2Step358HeadF_distinct s2Step358HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step358HeadF_reserved
  have rowEq : WindowRow.mk (s2Step358HeadFRow.payload++s2Step358HeadFFresh) s2Step358HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step358HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step358HeadFvBefore : Arena := s2Step358HeadGvAfter

private theorem s2Step358HeadFv_Incoming : rowsOwned s2Step358HeadFvBefore [s2Step358HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358HeadGRow,s2Step358HeadFRow,s2Step358HeadGvRow,s2Step358HeadFvRow] 3 s2Step358HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358HeadFv_Outgoing : rowsOwned s2Step358HeadFvAfter [s2Step358HeadFvOut] :=
  hmrRows_owned_drop s2Step358HeadFvAfter [s2Step358HeadGOut,s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut] 3 s2Step358HeadBank_outgoingOwned

private theorem s2Step358HeadFv_distinct : (s2Step358HeadFvRow.sign::s2Step358HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358HeadFv_owned : (s2Step358HeadFvRow.sign::s2Step358HeadFvRow.payload).toFinset⊆s2Step358HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358HeadFv_reserved : s2Step358HeadFvBefore.reserve s2Step358HeadFvFresh.toFinset=some s2Step358HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step358HeadFvFresh,arenaWires]
  · norm_num [s2Step358HeadFvBefore,s2Step358HeadGvAfter,s2Step358HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step358HeadFvAfter,s2Step358HeadFvBefore,s2Step358HeadGvAfter,s2Step358HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step358HeadFv_checked : planRowResizeLog s2Step358HeadFvBefore s2Step358HeadFvRow 196 s2Step358HeadFvFresh=
    some (s2Step358HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 821],770⟩,growRow 770 s2Step358HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step358HeadFvBefore s2Step358HeadFvAfter s2Step358HeadFvRow 196 s2Step358HeadFvFresh
    s2Step358HeadFv_distinct s2Step358HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step358HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step358HeadFvRow.payload++s2Step358HeadFvFresh) s2Step358HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 815, 788, 894, 791, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step358HeadG_Incoming : rowsOwned s2Step358HeadGBefore [s2Step358HeadGRow,s2Step358HeadFRow,s2Step358HeadGvRow,s2Step358HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358HeadGRow,s2Step358HeadFRow,s2Step358HeadGvRow,s2Step358HeadFvRow] 0 s2Step358HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358HeadG_Outgoing : rowsOwned s2Step358HeadFvAfter [s2Step358HeadGOut,s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut] :=
  hmrRows_owned_drop s2Step358HeadFvAfter [s2Step358HeadGOut,s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut] 0 s2Step358HeadBank_outgoingOwned

private theorem s2Step358HeadG_distinct : (s2Step358HeadGRow.sign::s2Step358HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358HeadG_owned : (s2Step358HeadGRow.sign::s2Step358HeadGRow.payload).toFinset⊆s2Step358HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<832) ∨ (833≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358HeadG_reserved : s2Step358HeadGBefore.reserve s2Step358HeadGFresh.toFinset=some s2Step358HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step358HeadGFresh,arenaWires]
  · norm_num [s2Step358HeadGBefore,s2Step358HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step358HeadGAfter,s2Step358HeadGBefore,s2Step358HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step358HeadG_checked : planRowResizeLog s2Step358HeadGBefore s2Step358HeadGRow 93 s2Step358HeadGFresh=
    some (s2Step358HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 832],769⟩,growRow 769 s2Step358HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step358HeadGBefore s2Step358HeadGAfter s2Step358HeadGRow 93 s2Step358HeadGFresh
    s2Step358HeadG_distinct s2Step358HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step358HeadG_reserved
  have rowEq : WindowRow.mk (s2Step358HeadGRow.payload++s2Step358HeadGFresh) s2Step358HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 832],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step358HeadGvBefore : Arena := s2Step358HeadFAfter

private theorem s2Step358HeadGv_Incoming : rowsOwned s2Step358HeadGvBefore [s2Step358HeadGvRow,s2Step358HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step358HeadGRow,s2Step358HeadFRow,s2Step358HeadGvRow,s2Step358HeadFvRow] 2 s2Step358HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step358HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step358HeadGv_Outgoing : rowsOwned s2Step358HeadFvAfter [s2Step358HeadGvOut,s2Step358HeadFvOut] :=
  hmrRows_owned_drop s2Step358HeadFvAfter [s2Step358HeadGOut,s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut] 2 s2Step358HeadBank_outgoingOwned

private theorem s2Step358HeadGv_distinct : (s2Step358HeadGvRow.sign::s2Step358HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step358HeadGv_owned : (s2Step358HeadGvRow.sign::s2Step358HeadGvRow.payload).toFinset⊆s2Step358HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step358HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<821) ∨ (822≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step358HeadGv_reserved : s2Step358HeadGvBefore.reserve s2Step358HeadGvFresh.toFinset=some s2Step358HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step358HeadGvFresh,arenaWires]
  · norm_num [s2Step358HeadGvBefore,s2Step358HeadFAfter,s2Step358HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step358HeadGvAfter,s2Step358HeadGvBefore,s2Step358HeadFAfter,s2Step358HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step358HeadGv_checked : planRowResizeLog s2Step358HeadGvBefore s2Step358HeadGvRow 196 s2Step358HeadGvFresh=
    some (s2Step358HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 903],771⟩,growRow 771 s2Step358HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step358HeadGvBefore s2Step358HeadGvAfter s2Step358HeadGvRow 196 s2Step358HeadGvFresh
    s2Step358HeadGv_distinct s2Step358HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step358HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step358HeadGvRow.payload++s2Step358HeadGvFresh) s2Step358HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 781, 891, 801, 849, 808, 903],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step358HeadBank_rows : planWindowRowsLog s2Step358HeadGBefore [(s2Step358HeadGRow,93),(s2Step358HeadFRow,93),(s2Step358HeadGvRow,196),(s2Step358HeadFvRow,196)] [s2Step358HeadGFresh,s2Step358HeadFFresh,s2Step358HeadGvFresh,s2Step358HeadFvFresh]=
    some (s2Step358HeadFvAfter,[s2Step358HeadGOut,s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut],(growRow 769 s2Step358HeadGFresh ++ (growRow 768 s2Step358HeadFFresh ++ (growRow 771 s2Step358HeadGvFresh ++ (growRow 770 s2Step358HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step358HeadFvAfter [] []=some (s2Step358HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step358HeadFvBefore s2Step358HeadFvAfter s2Step358HeadFvAfter
    s2Step358HeadFvRow s2Step358HeadFvOut 196 s2Step358HeadFvFresh [] [] []
    (growRow 770 s2Step358HeadFvFresh) ([]) s2Step358HeadFv_Incoming s2Step358HeadFv_checked h4 s2Step358HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step358HeadGvBefore s2Step358HeadGvAfter s2Step358HeadFvAfter
    s2Step358HeadGvRow s2Step358HeadGvOut 196 s2Step358HeadGvFresh [(s2Step358HeadFvRow,196)] [s2Step358HeadFvFresh] [s2Step358HeadFvOut]
    (growRow 771 s2Step358HeadGvFresh) ((growRow 770 s2Step358HeadFvFresh ++ [])) s2Step358HeadGv_Incoming s2Step358HeadGv_checked h3 s2Step358HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step358HeadFBefore s2Step358HeadFAfter s2Step358HeadFvAfter
    s2Step358HeadFRow s2Step358HeadFOut 93 s2Step358HeadFFresh [(s2Step358HeadGvRow,196),(s2Step358HeadFvRow,196)] [s2Step358HeadGvFresh,s2Step358HeadFvFresh] [s2Step358HeadGvOut,s2Step358HeadFvOut]
    (growRow 768 s2Step358HeadFFresh) ((growRow 771 s2Step358HeadGvFresh ++ (growRow 770 s2Step358HeadFvFresh ++ []))) s2Step358HeadF_Incoming s2Step358HeadF_checked h2 s2Step358HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step358HeadGBefore s2Step358HeadGAfter s2Step358HeadFvAfter
    s2Step358HeadGRow s2Step358HeadGOut 93 s2Step358HeadGFresh [(s2Step358HeadFRow,93),(s2Step358HeadGvRow,196),(s2Step358HeadFvRow,196)] [s2Step358HeadFFresh,s2Step358HeadGvFresh,s2Step358HeadFvFresh] [s2Step358HeadFOut,s2Step358HeadGvOut,s2Step358HeadFvOut]
    (growRow 769 s2Step358HeadGFresh) ((growRow 768 s2Step358HeadFFresh ++ (growRow 771 s2Step358HeadGvFresh ++ (growRow 770 s2Step358HeadFvFresh ++ [])))) s2Step358HeadG_Incoming s2Step358HeadG_checked h1 s2Step358HeadG_Outgoing
  exact h0

private theorem s2Step358HeadBank_checked : compileHmrBankResizeLog .headroom s2Step358HeadGBefore ⟨s2Step358HeadFRow,s2Step358HeadGRow,s2Step358HeadFvRow,s2Step358HeadGvRow⟩ ⟨93,93,196,196⟩ [s2Step358HeadGFresh,s2Step358HeadFFresh,s2Step358HeadGvFresh,s2Step358HeadFvFresh]=
    some (s2Step358HeadFvAfter,⟨s2Step358HeadFOut,s2Step358HeadGOut,s2Step358HeadFvOut,s2Step358HeadGvOut⟩,(growRow 769 s2Step358HeadGFresh ++ (growRow 768 s2Step358HeadFFresh ++ (growRow 771 s2Step358HeadGvFresh ++ (growRow 770 s2Step358HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step358HeadBank_rows]
  rfl

private theorem s2Step358Front_checked : compileHmrSourceFrontLog s2Step358EntryFBefore s2Step358FrontBank 92 195 ⟨92,91,195,195⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step358FrontLog=some s2Step358FrontPlan := by
  have pairEq : s2Step358FrontPair=⟨s2Step358HeadFRow,s2Step358HeadGRow,s2Step358HeadFvRow,s2Step358HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step358FrontHead=⟨s2Step358ExitFRow,s2Step358ExitGRow,s2Step358ExitFvRow,s2Step358ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step358Add0A=s2Step358FrontHead.f.wires := by decide +kernel
  have gEq : s2Step358Add0B=s2Step358FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step358Add1A=s2Step358FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step358Add1B=s2Step358FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step358EntryFBefore s2Step358FrontBank 92 195 ⟨92,91,195,195⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step358FrontLog s2Step358FrontPlan
  · exact s2Step358Front_entry
  · exact s2Step358EntryBank_checked
  · exact s2Step358Front_sigma
  · rfl
  · exact s2Step358Front_branch
  · rfl
  · simpa only [s2Step358FrontPlan,pairEq] using s2Step358HeadBank_checked
  · simpa only [s2Step358FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step358F4_checked
  · exact s2Step358Counter_checked
  · rfl
  · simpa only [s2Step358FrontPlan,headEq] using s2Step358ExitBank_checked

private theorem s2Step358Complete_explicit_checked : compileHmrEarlyStepLog s2Step358EntryFBefore s2Step358FrontBank 92 195 ⟨92,91,195,195⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step358CompleteLog=some s2Step358CompletePlan := by
  let Q := s2Step358EarlyControlPlan
  have hq := s2Step358EarlyControl_plan_checked
  have fv1 : s2Step358CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step358CompleteOut.fv.payload[2]?.getD s2Step358CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step358CompleteOut.fv.payload[3]?.getD s2Step358CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step358CompleteOut.fv.payload[4]?.getD s2Step358CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step358EntryFBefore s2Step358EarlyControlArena s2Step358FrontBank 92 195 ⟨92,91,195,195⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step358CompleteLog s2Step358FrontPlan Q
    s2Step358Front_checked s2Step358Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step358Complete_owned s2Step358Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step358EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 796 s2Step358CompleteOut.fv.second (s2Step358CompleteOut.fv.payload[2]?.getD s2Step358CompleteOut.fv.sign) (s2Step358CompleteOut.fv.payload[3]?.getD s2Step358CompleteOut.fv.sign) (s2Step358CompleteOut.fv.payload[4]?.getD s2Step358CompleteOut.fv.sign) 785 60 s2Step358EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep358Arena : Arena := s2Step358EntryFBefore
def s2PrivateStep358Bank : WindowBank := s2Step358FrontBank
def s2PrivateStep358Spec : HmrSourceWalkStepLog := ⟨92,195,⟨92,91,195,195⟩,60,.early s2Step358CompleteLog⟩
def s2PrivateStep358Plan : HmrSourceStepPlan := .early s2Step358CompletePlan
theorem s2PrivateStep358_source : s2PrivateStep358Spec=s2ObservedLogs352[6] := rfl
theorem s2PrivateStep358_checked : compileHmrSourceStepLog s2PrivateStep358Arena s2PrivateStep358Bank
    s2PrivateStep358Spec.fgWidth s2PrivateStep358Spec.vWidth s2PrivateStep358Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 358 s2PrivateStep358Spec.need none s2PrivateStep358Spec.log=some s2PrivateStep358Plan := by
  change compileHmrSourceStepLog s2Step358EntryFBefore s2Step358FrontBank 92 195 ⟨92,91,195,195⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 358 60 none (.early s2Step358CompleteLog)=some (.early s2Step358CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 358<498)]
  rw [s2Step358Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
