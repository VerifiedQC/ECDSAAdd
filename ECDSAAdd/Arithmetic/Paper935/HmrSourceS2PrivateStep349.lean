import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep347
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

private def s2Step349CompleteMoves : List (Wire × Wire) := [(815,96),(808,608)]

private def s2Step349EarlyControlLog : HmrEarlyControlLog := ⟨[808, 815, 891, 894, 903],[839],[788],[800, 789, 827, 844, 907, 913],[]⟩

private def s2Step349FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [891]],[[788], [839], [894], [903]],[[], [], [], []]⟩,[801],[781],[800],[789],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[800, 789, 827, 844]⟩

private def s2Step349CompleteLog : HmrEarlyStepLog := ⟨s2Step349FrontLog,s2Step349CompleteMoves,s2Step349EarlyControlLog⟩

private def s2Step349ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607],768⟩

private def s2Step349ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩

private def s2Step349ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95],769⟩

private def s2Step349ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step349FrontOut : WindowBank := ⟨s2Step349ExitFOut,s2Step349ExitGOut,s2Step349ExitFvOut,s2Step349ExitGvOut⟩

private def s2Step349CompleteOut : WindowBank := s2Step349FrontOut.repacked s2Step349CompleteMoves

private def s2Step349EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step349EarlyControlPositiveArena,[839],s2Step349EarlyControlEqualityArena,[788],⟨⟨801,false⟩,[⟨⟨839,false⟩,788⟩]⟩⟩

private def s2Step349EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,808⟩,⟨⟨774,false⟩,815⟩,⟨⟨775,false⟩,891⟩,⟨⟨776,false⟩,894⟩,⟨⟨777,false⟩,903⟩]⟩

private def s2Step349EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step349EarlyControlZeroArena,s2Step349EarlyControlZeroPlan,s2Step349EarlyControlClassPlan,s2Step349EarlyControlFlagArena,s2Step349EarlyControlFittedArena,s2Step349EarlyControlHistoryArena,s2Step349EarlyControlSigmaArena,s2Step349EarlyControlOutputArena,s2Step349EarlyControlLog⟩

private def s2Step349CounterWork : List Wire := [800, 789, 827, 844]

private theorem s2Step349Counter_bounded : s2Step349CounterWork.toFinset⊆arenaWires := by norm_num [s2Step349CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step349HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349CounterDuring : Arena := ⟨s2Step349HeadFvAfter.live∪s2Step349CounterWork.toFinset,Finset.union_subset s2Step349HeadFvAfter.bounded s2Step349Counter_bounded⟩

private def s2Step349EntryFFresh : List Wire := []

private def s2Step349EntryFvFresh : List Wire := []

private def s2Step349EntryGFresh : List Wire := []

private def s2Step349EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EntryGvFresh : List Wire := [891]

private def s2Step349ExitFExtra : List Wire := [608, 839]

private def s2Step349ExitFvExtra : List Wire := [903]

private def s2Step349ExitGExtra : List Wire := [96, 788]

private def s2Step349ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<608) ∨ (609≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349ExitGvExtra : List Wire := [891, 894]

private def s2Step349Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349Add0Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step349Add0_bounded : s2Step349Add0Work.toFinset⊆arenaWires := by
  have h : s2Step349Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step349Add0During : Arena := ⟨s2Step349Add0Arena.live∪s2Step349Add0Work.toFinset,Finset.union_subset s2Step349Add0Arena.bounded s2Step349Add0_bounded⟩

private def s2Step349Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349Add1Work : List Wire := [827, 844, 907, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step349Add1_bounded : s2Step349Add1Work.toFinset⊆arenaWires := by
  have h : s2Step349Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step349Add1During : Arena := ⟨s2Step349Add1Arena.live∪s2Step349Add1Work.toFinset,Finset.union_subset s2Step349Add1Arena.bounded s2Step349Add1_bounded⟩

private def s2Step349F4FlagArena : Arena := ⟨s2Step349HeadFvAfter.live∪{800},Finset.union_subset s2Step349HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step349F4Plan : HmrHybridF4Plan := ⟨s2Step349F4FlagArena,[800],s2Step349Add0Arena,[789],s2Step349Add0During,s2Step349Add0Work,s2Step349Add1During,s2Step349Add1Work⟩

private def s2Step349HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839],768⟩

private def s2Step349HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 903],770⟩

private def s2Step349HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 788],769⟩

private def s2Step349HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891, 894],771⟩

private def s2Step349FrontHead : WindowBank := ⟨s2Step349HeadFOut,s2Step349HeadGOut,s2Step349HeadFvOut,s2Step349HeadGvOut⟩

private def s2Step349EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩

private def s2Step349EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩

private def s2Step349EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96],769⟩

private def s2Step349EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891],771⟩

private def s2Step349FrontPair : WindowBank := ⟨s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut⟩

private def s2Step349FrontSigmaArena : Arena := ⟨s2Step349EntryGvAfter.live∪{801},Finset.union_subset s2Step349EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step349HeadFFresh : List Wire := [839]

private def s2Step349HeadFvFresh : List Wire := [903]

private def s2Step349HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349HeadGFresh : List Wire := [788]

private def s2Step349HeadGvFresh : List Wire := [894]

private def s2Step349FrontPlan : HmrSourceFront := ⟨s2Step349EntryGvAfter,s2Step349FrontPair,(growRow 768 s2Step349EntryFFresh ++ (growRow 769 s2Step349EntryGFresh ++ (growRow 770 s2Step349EntryFvFresh ++ (growRow 771 s2Step349EntryGvFresh ++ [])))),s2Step349FrontSigmaArena,[801],s2Step349HeadGBefore,[781],
  s2Step349HeadFvAfter,s2Step349FrontHead,(growRow 769 s2Step349HeadGFresh ++ (growRow 768 s2Step349HeadFFresh ++ (growRow 771 s2Step349HeadGvFresh ++ (growRow 770 s2Step349HeadFvFresh ++ [])))),s2Step349F4Plan,s2Step349CounterDuring,s2Step349CounterWork,s2Step349ExitGvAfter,s2Step349FrontOut,(shrinkRow 769 s2Step349ExitGExtra ++ (shrinkRow 768 s2Step349ExitFExtra ++ (shrinkRow 770 s2Step349ExitFvExtra ++ (shrinkRow 771 s2Step349ExitGvExtra ++ []))))⟩

private def s2Step349CompletePlan : HmrEarlyStepPlan := ⟨s2Step349FrontPlan,s2Step349EarlyControlArena,s2Step349EarlyControlPlan,s2Step349CompleteMoves⟩

private theorem s2Step349Complete_apart : List.Disjoint (s2Step349CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [801, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step349CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[801, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step349Complete_owned : (s2Step349CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step349EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step349CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,608),(609,788),(790,800),(801,815),(816,827),(828,839),(840,844),(845,891),(892,894),(895,903),(904,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step349CompleteRelocationMove0Borrowed : Arena := ⟨s2Step349ExitGvAfter.live∪{96},Finset.union_subset s2Step349ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step349CompleteRelocationMove1Borrowed : Arena := ⟨s2Step349CompleteRelocationMove0After.live∪{608},Finset.union_subset s2Step349CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step349CompleteRelocation_move0_owned : 815∈s2Step349ExitGvAfter.live := by norm_num [s2Step349ExitGvAfter,arenaWires]

private theorem s2Step349CompleteRelocation_move0_reserve : s2Step349ExitGvAfter.reserve {96}=some s2Step349CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step349ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step349CompleteRelocation_move0_retire : s2Step349CompleteRelocationMove0Borrowed.retireSet {815}=s2Step349CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step349CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step349CompleteRelocationMove0Borrowed,s2Step349ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step349CompleteRelocation_move1_owned : 808∈s2Step349CompleteRelocationMove0After.live := by norm_num [s2Step349CompleteRelocationMove0After,arenaWires]

private theorem s2Step349CompleteRelocation_move1_reserve : s2Step349CompleteRelocationMove0After.reserve {608}=some s2Step349CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step349CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step349CompleteRelocation_move1_retire : s2Step349CompleteRelocationMove1Borrowed.retireSet {808}=s2Step349EarlyControlArena := by
  unfold Arena.retireSet s2Step349EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step349CompleteRelocationMove1Borrowed,s2Step349CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step349CompleteRelocation_checked : s2Step349ExitGvAfter.checkRepack [(815,96),(808,608)]=some s2Step349EarlyControlArena := by
  have tail2 : s2Step349EarlyControlArena.checkRepack []=some s2Step349EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step349CompleteRelocationMove0After s2Step349CompleteRelocationMove1Borrowed s2Step349EarlyControlArena s2Step349EarlyControlArena 808 608 []
    s2Step349CompleteRelocation_move1_owned s2Step349CompleteRelocation_move1_reserve s2Step349CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step349ExitGvAfter s2Step349CompleteRelocationMove0Borrowed s2Step349CompleteRelocationMove0After s2Step349EarlyControlArena 815 96 [(808,608)]
    s2Step349CompleteRelocation_move0_owned s2Step349CompleteRelocation_move0_reserve s2Step349CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step349Complete_repack : s2Step349ExitGvAfter.checkRepack s2Step349CompleteMoves=some s2Step349EarlyControlArena := by
  simpa only [s2Step349CompleteMoves] using s2Step349CompleteRelocation_checked

private theorem s2Step349EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step349EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlSigmaArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_branch : compileHmrBranchRetirement s2Step349EarlyControlSigmaArena 781=some s2Step349EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step349EarlyControl_branchOwned
  · ext q
    simp [s2Step349EarlyControlOutputArena,s2Step349EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step349EarlyControl_classEqualityBorrow : s2Step349EarlyControlPositiveArena.checkBorrow (([801, 839] : List Wire).length-1) s2Step349EarlyControlLog.classWork=some s2Step349EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step349EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step349EarlyControlPositiveArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step349EarlyControlEqualityArena,s2Step349EarlyControlPositiveArena,s2Step349EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step349EarlyControl_classEqualityOwned : ([801, 839] : List Wire).toFinset⊆s2Step349EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlPositiveArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_classEquality : compileHmrEqualityLog s2Step349EarlyControlPositiveArena [801, 839] 0 s2Step349EarlyControlLog.classWork=some (s2Step349EarlyControlEqualityArena,s2Step349EarlyControlLog.classWork,s2Step349EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step349EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step349EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step349EarlyControl_classOwned : ([777, 903, 801] : List Wire).toFinset⊆s2Step349EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlZeroArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_positiveBorrow : s2Step349EarlyControlZeroArena.checkBorrow (1) s2Step349EarlyControlLog.positiveWork=some s2Step349EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step349EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step349EarlyControlZeroArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step349EarlyControlPositiveArena,s2Step349EarlyControlZeroArena,s2Step349EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step349EarlyControl_class : compileHmrSourceClassLog s2Step349EarlyControlZeroArena false 777 s2Step349EarlyControlZeroPlan.top 0 801 s2Step349EarlyControlLog.positiveWork s2Step349EarlyControlLog.classWork=some s2Step349EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step349EarlyControlClassPlan s2Step349EarlyControlZeroArena false 777 s2Step349EarlyControlZeroPlan.top 0 801
  constructor
  · decide +kernel
  · exact s2Step349EarlyControl_classOwned
  · exact s2Step349EarlyControl_positiveBorrow
  · exact s2Step349EarlyControl_classEquality

private theorem s2Step349EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step349EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_entrySigmaOwned : ([801, 254] : List Wire).toFinset⊆s2Step349EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_fitBorrow : s2Step349EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step349EarlyControlLog.recordFresh=some s2Step349EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step349EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step349EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
      decide +kernel
    · ext q
      simp [s2Step349EarlyControlFittedArena,s2Step349EarlyControlFlagArena,s2Step349EarlyControlLog,arenaWires]

private theorem s2Step349EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step349EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlFlagArena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_fit : compileHmrRecordGrowLog s2Step349EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step349EarlyControlLog.recordFresh=some s2Step349EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step349EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step349EarlyControl_fitBorrow

private theorem s2Step349EarlyControl_flagsBorrow : s2Step349EarlyControlEqualityArena.checkBorrow (6) s2Step349EarlyControlLog.flagWork=some s2Step349EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step349EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step349EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step349EarlyControlFlagArena,s2Step349EarlyControlEqualityArena,s2Step349EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step349EarlyControl_flagsOwned : ([788, 253, 252, 251] : List Wire).toFinset⊆s2Step349EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlEqualityArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_flags : compileHmrFlagsLog s2Step349EarlyControlClassPlan.equalityArena s2Step349EarlyControlClassPlan.equality.top 253 252 251 s2Step349EarlyControlLog.flagWork=some s2Step349EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step349EarlyControl_flagsOwned⟩
  · exact s2Step349EarlyControl_flagsBorrow

private theorem s2Step349EarlyControl_historyBorrow : s2Step349EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step349EarlyControlLog.recordFresh=some s2Step349EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step349EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step349EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step349EarlyControlHistoryArena,s2Step349EarlyControlArena,s2Step349EarlyControlLog,arenaWires]

private theorem s2Step349EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step349EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_history : compileHmrRecordGrowLog s2Step349EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step349EarlyControlLog.recordFresh=some s2Step349EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step349EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step349EarlyControl_historyBorrow

private theorem s2Step349EarlyControl_sigmaOwned : ([254, 801] : List Wire).toFinset⊆s2Step349EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_sigmaReleaseOwned : ([801] : List Wire).toFinset⊆s2Step349EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_sigmaRelease : s2Step349EarlyControlHistoryArena.release {801} (fun _ => false)=some s2Step349EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step349EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step349EarlyControlSigmaArena,s2Step349EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step349EarlyControl_sigma : compileHmrSigmaDropLog s2Step349EarlyControlHistoryArena false 0 0 254 801 []=some s2Step349EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step349EarlyControl_sigmaOwned⟩
  · exact s2Step349EarlyControl_sigmaRelease

private theorem s2Step349EarlyControl_zeroBorrow : s2Step349EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step349EarlyControlLog.zeroWork=some s2Step349EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step349EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step349EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step349EarlyControlZeroArena,s2Step349EarlyControlArena,s2Step349EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step349EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step349EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step349EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<815) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EarlyControl_zero : compileHmrEqualityLog s2Step349EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step349EarlyControlLog.zeroWork=some (s2Step349EarlyControlZeroArena,s2Step349EarlyControlLog.zeroWork,s2Step349EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step349EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step349EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step349EarlyControl_logged : s2Step349EarlyControlPlan.Logged s2Step349EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 781 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step349EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step349EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step349EarlyControl_zero
  · exact s2Step349EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step349EarlyControl_flags
  · exact s2Step349EarlyControl_fit
  · exact s2Step349EarlyControl_history
  · exact s2Step349EarlyControl_sigma
  · exact s2Step349EarlyControl_branch

private theorem s2Step349EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step349EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 781 60 s2Step349EarlyControlLog=some s2Step349EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step349EarlyControlPlan s2Step349EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 254 253 252 251 781 60 s2Step349EarlyControl_logged

private def s2Step349EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩

private def s2Step349EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩

private def s2Step349EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96],769⟩

private def s2Step349EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step349FrontBank : WindowBank := ⟨s2Step349EntryFRow,s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow⟩

private def s2Step349Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839, 768]

private def s2Step349Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 788, 769]

private def s2Step349Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 903, 770]

private def s2Step349Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891, 894, 771]

private theorem s2Step349Counter_apart : Disjoint s2Step349HeadFvAfter.live s2Step349CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step349HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349Counter_borrowed : s2Step349HeadFvAfter.checkBorrow 4 s2Step349CounterWork=some s2Step349CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step349HeadFvAfter s2Step349CounterDuring s2Step349CounterWork.toFinset s2Step349Counter_bounded s2Step349Counter_apart rfl

private theorem s2Step349Counter_owned : (801::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step349HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step349HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349Counter_checked : compileHmrCounterStepLog s2Step349HeadFvAfter true 801 [772, 773, 774, 775, 776, 777] s2Step349CounterWork=some s2Step349CounterDuring := by
  have owned : ∀q∈801::[772, 773, 774, 775, 776, 777],q∈s2Step349HeadFvAfter.live := fun q hq => s2Step349Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step349Counter_borrowed

private def s2Step349EntryFAfter : Arena := s2Step349EntryFBefore

private theorem s2Step349EntryBank_incomingDistinct : ([s2Step349EntryFRow,s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349EntryF_Incoming : rowsOwned s2Step349EntryFBefore [s2Step349EntryFRow,s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349EntryFRow,s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow] 0 s2Step349EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349EntryBank_outgoingOwned : rowsOwned s2Step349EntryGvAfter [s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step349EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349EntryF_Outgoing : rowsOwned s2Step349EntryGvAfter [s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut] :=
  hmrRows_owned_drop s2Step349EntryGvAfter [s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut] 0 s2Step349EntryBank_outgoingOwned

private theorem s2Step349EntryF_distinct : (s2Step349EntryFRow.sign::s2Step349EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349EntryF_owned : (s2Step349EntryFRow.sign::s2Step349EntryFRow.payload).toFinset⊆s2Step349EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EntryF_reserved : s2Step349EntryFBefore.reserve s2Step349EntryFFresh.toFinset=some s2Step349EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step349EntryFFresh,arenaWires]
  · norm_num [s2Step349EntryFBefore,s2Step349EntryFFresh,arenaWires]
  · simp only [s2Step349EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step349EntryF_checked : planRowResizeLog s2Step349EntryFBefore s2Step349EntryFRow 97 s2Step349EntryFFresh=
    some (s2Step349EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩,growRow 768 s2Step349EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step349EntryFBefore s2Step349EntryFAfter s2Step349EntryFRow 97 s2Step349EntryFFresh
    s2Step349EntryF_distinct s2Step349EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step349EntryF_reserved
  have rowEq : WindowRow.mk (s2Step349EntryFRow.payload++s2Step349EntryFFresh) s2Step349EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step349EntryFvAfter : Arena := s2Step349EntryFBefore

private def s2Step349EntryFvBefore : Arena := s2Step349EntryFBefore

private theorem s2Step349EntryFv_Incoming : rowsOwned s2Step349EntryFvBefore [s2Step349EntryFvRow,s2Step349EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349EntryFRow,s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow] 2 s2Step349EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349EntryFv_Outgoing : rowsOwned s2Step349EntryGvAfter [s2Step349EntryFvOut,s2Step349EntryGvOut] :=
  hmrRows_owned_drop s2Step349EntryGvAfter [s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut] 2 s2Step349EntryBank_outgoingOwned

private theorem s2Step349EntryFv_distinct : (s2Step349EntryFvRow.sign::s2Step349EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349EntryFv_owned : (s2Step349EntryFvRow.sign::s2Step349EntryFvRow.payload).toFinset⊆s2Step349EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EntryFv_reserved : s2Step349EntryFvBefore.reserve s2Step349EntryFvFresh.toFinset=some s2Step349EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step349EntryFvFresh,arenaWires]
  · norm_num [s2Step349EntryFvBefore,s2Step349EntryFBefore,s2Step349EntryFvFresh,arenaWires]
  · simp only [s2Step349EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step349EntryFv_checked : planRowResizeLog s2Step349EntryFvBefore s2Step349EntryFvRow 191 s2Step349EntryFvFresh=
    some (s2Step349EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩,growRow 770 s2Step349EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step349EntryFvBefore s2Step349EntryFvAfter s2Step349EntryFvRow 191 s2Step349EntryFvFresh
    s2Step349EntryFv_distinct s2Step349EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step349EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step349EntryFvRow.payload++s2Step349EntryFvFresh) s2Step349EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step349EntryGAfter : Arena := s2Step349EntryFBefore

private def s2Step349EntryGBefore : Arena := s2Step349EntryFBefore

private theorem s2Step349EntryG_Incoming : rowsOwned s2Step349EntryGBefore [s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349EntryFRow,s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow] 1 s2Step349EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349EntryG_Outgoing : rowsOwned s2Step349EntryGvAfter [s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut] :=
  hmrRows_owned_drop s2Step349EntryGvAfter [s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut] 1 s2Step349EntryBank_outgoingOwned

private theorem s2Step349EntryG_distinct : (s2Step349EntryGRow.sign::s2Step349EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349EntryG_owned : (s2Step349EntryGRow.sign::s2Step349EntryGRow.payload).toFinset⊆s2Step349EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EntryG_reserved : s2Step349EntryGBefore.reserve s2Step349EntryGFresh.toFinset=some s2Step349EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step349EntryGFresh,arenaWires]
  · norm_num [s2Step349EntryGBefore,s2Step349EntryFBefore,s2Step349EntryGFresh,arenaWires]
  · simp only [s2Step349EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step349EntryG_checked : planRowResizeLog s2Step349EntryGBefore s2Step349EntryGRow 97 s2Step349EntryGFresh=
    some (s2Step349EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96],769⟩,growRow 769 s2Step349EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step349EntryGBefore s2Step349EntryGAfter s2Step349EntryGRow 97 s2Step349EntryGFresh
    s2Step349EntryG_distinct s2Step349EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step349EntryG_reserved
  have rowEq : WindowRow.mk (s2Step349EntryGRow.payload++s2Step349EntryGFresh) s2Step349EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step349EntryGvBefore : Arena := s2Step349EntryFBefore

private theorem s2Step349EntryGv_Incoming : rowsOwned s2Step349EntryGvBefore [s2Step349EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349EntryFRow,s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow] 3 s2Step349EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349EntryGv_Outgoing : rowsOwned s2Step349EntryGvAfter [s2Step349EntryGvOut] :=
  hmrRows_owned_drop s2Step349EntryGvAfter [s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut] 3 s2Step349EntryBank_outgoingOwned

private theorem s2Step349EntryGv_distinct : (s2Step349EntryGvRow.sign::s2Step349EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349EntryGv_owned : (s2Step349EntryGvRow.sign::s2Step349EntryGvRow.payload).toFinset⊆s2Step349EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349EntryGv_reserved : s2Step349EntryGvBefore.reserve s2Step349EntryGvFresh.toFinset=some s2Step349EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step349EntryGvFresh,arenaWires]
  · norm_num [s2Step349EntryGvBefore,s2Step349EntryFBefore,s2Step349EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step349EntryGvAfter,s2Step349EntryGvBefore,s2Step349EntryFBefore,s2Step349EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step349EntryGv_checked : planRowResizeLog s2Step349EntryGvBefore s2Step349EntryGvRow 191 s2Step349EntryGvFresh=
    some (s2Step349EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891],771⟩,growRow 771 s2Step349EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step349EntryGvBefore s2Step349EntryGvAfter s2Step349EntryGvRow 191 s2Step349EntryGvFresh
    s2Step349EntryGv_distinct s2Step349EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step349EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step349EntryGvRow.payload++s2Step349EntryGvFresh) s2Step349EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step349EntryBank_rows : planWindowRowsLog s2Step349EntryFBefore [(s2Step349EntryFRow,97),(s2Step349EntryGRow,97),(s2Step349EntryFvRow,191),(s2Step349EntryGvRow,191)] [s2Step349EntryFFresh,s2Step349EntryGFresh,s2Step349EntryFvFresh,s2Step349EntryGvFresh]=
    some (s2Step349EntryGvAfter,[s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut],(growRow 768 s2Step349EntryFFresh ++ (growRow 769 s2Step349EntryGFresh ++ (growRow 770 s2Step349EntryFvFresh ++ (growRow 771 s2Step349EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step349EntryGvAfter [] []=some (s2Step349EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step349EntryGvBefore s2Step349EntryGvAfter s2Step349EntryGvAfter
    s2Step349EntryGvRow s2Step349EntryGvOut 191 s2Step349EntryGvFresh [] [] []
    (growRow 771 s2Step349EntryGvFresh) ([]) s2Step349EntryGv_Incoming s2Step349EntryGv_checked h4 s2Step349EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step349EntryFvBefore s2Step349EntryFvAfter s2Step349EntryGvAfter
    s2Step349EntryFvRow s2Step349EntryFvOut 191 s2Step349EntryFvFresh [(s2Step349EntryGvRow,191)] [s2Step349EntryGvFresh] [s2Step349EntryGvOut]
    (growRow 770 s2Step349EntryFvFresh) ((growRow 771 s2Step349EntryGvFresh ++ [])) s2Step349EntryFv_Incoming s2Step349EntryFv_checked h3 s2Step349EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step349EntryGBefore s2Step349EntryGAfter s2Step349EntryGvAfter
    s2Step349EntryGRow s2Step349EntryGOut 97 s2Step349EntryGFresh [(s2Step349EntryFvRow,191),(s2Step349EntryGvRow,191)] [s2Step349EntryFvFresh,s2Step349EntryGvFresh] [s2Step349EntryFvOut,s2Step349EntryGvOut]
    (growRow 769 s2Step349EntryGFresh) ((growRow 770 s2Step349EntryFvFresh ++ (growRow 771 s2Step349EntryGvFresh ++ []))) s2Step349EntryG_Incoming s2Step349EntryG_checked h2 s2Step349EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step349EntryFBefore s2Step349EntryFAfter s2Step349EntryGvAfter
    s2Step349EntryFRow s2Step349EntryFOut 97 s2Step349EntryFFresh [(s2Step349EntryGRow,97),(s2Step349EntryFvRow,191),(s2Step349EntryGvRow,191)] [s2Step349EntryGFresh,s2Step349EntryFvFresh,s2Step349EntryGvFresh] [s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut]
    (growRow 768 s2Step349EntryFFresh) ((growRow 769 s2Step349EntryGFresh ++ (growRow 770 s2Step349EntryFvFresh ++ (growRow 771 s2Step349EntryGvFresh ++ [])))) s2Step349EntryF_Incoming s2Step349EntryF_checked h1 s2Step349EntryF_Outgoing
  exact h0

private theorem s2Step349EntryBank_checked : compileHmrBankResizeLog .entry s2Step349EntryFBefore ⟨s2Step349EntryFRow,s2Step349EntryGRow,s2Step349EntryFvRow,s2Step349EntryGvRow⟩ ⟨97,97,191,191⟩ [s2Step349EntryFFresh,s2Step349EntryGFresh,s2Step349EntryFvFresh,s2Step349EntryGvFresh]=
    some (s2Step349EntryGvAfter,⟨s2Step349EntryFOut,s2Step349EntryGOut,s2Step349EntryFvOut,s2Step349EntryGvOut⟩,(growRow 768 s2Step349EntryFFresh ++ (growRow 769 s2Step349EntryGFresh ++ (growRow 770 s2Step349EntryFvFresh ++ (growRow 771 s2Step349EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step349EntryBank_rows]
  rfl

private def s2Step349ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<608) ∨ (609≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349ExitFBefore : Arena := s2Step349ExitGAfter

private def s2Step349ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839],768⟩

private def s2Step349ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 903],770⟩

private def s2Step349ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 788],769⟩

private def s2Step349ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891, 894],771⟩

private theorem s2Step349ExitBank_incomingDistinct : ([s2Step349ExitGRow,s2Step349ExitFRow,s2Step349ExitFvRow,s2Step349ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349ExitF_Incoming : rowsOwned s2Step349ExitFBefore [s2Step349ExitFRow,s2Step349ExitFvRow,s2Step349ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349ExitGRow,s2Step349ExitFRow,s2Step349ExitFvRow,s2Step349ExitGvRow] 1 s2Step349ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349ExitFBefore (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349ExitBank_outgoingOwned : rowsOwned s2Step349ExitGvAfter [s2Step349ExitGOut,s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step349ExitGvAfter (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<608) ∨ (609≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349ExitF_Outgoing : rowsOwned s2Step349ExitGvAfter [s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut] :=
  hmrRows_owned_drop s2Step349ExitGvAfter [s2Step349ExitGOut,s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut] 1 s2Step349ExitBank_outgoingOwned

private theorem s2Step349ExitF_distinct : (s2Step349ExitFRow.sign::s2Step349ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349ExitF_owned : (s2Step349ExitFRow.sign::s2Step349ExitFRow.payload).toFinset⊆s2Step349ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349ExitFBefore (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349ExitF_retired : s2Step349ExitFBefore.retireSet s2Step349ExitFExtra.toFinset=s2Step349ExitFAfter := by
  unfold Arena.retireSet s2Step349ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step349ExitFBefore,s2Step349ExitGAfter,s2Step349ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step349ExitF_checked : planRowResizeLog s2Step349ExitFBefore s2Step349ExitFRow 96 []=
    some (s2Step349ExitFAfter,s2Step349ExitFOut,shrinkRow 768 s2Step349ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step349ExitFBefore s2Step349ExitFRow 96 s2Step349ExitF_distinct s2Step349ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step349ExitFRow.payload.take 96) s2Step349ExitFRow.sign=s2Step349ExitFOut := by decide +kernel
  have hi : s2Step349ExitFRow.payload.drop 96=s2Step349ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step349ExitF_retired] at result
  exact result

private def s2Step349ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<608) ∨ (609≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349ExitFvBefore : Arena := s2Step349ExitFAfter

private theorem s2Step349ExitFv_Incoming : rowsOwned s2Step349ExitFvBefore [s2Step349ExitFvRow,s2Step349ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349ExitGRow,s2Step349ExitFRow,s2Step349ExitFvRow,s2Step349ExitGvRow] 2 s2Step349ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349ExitFvBefore (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<608) ∨ (609≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349ExitFv_Outgoing : rowsOwned s2Step349ExitGvAfter [s2Step349ExitFvOut,s2Step349ExitGvOut] :=
  hmrRows_owned_drop s2Step349ExitGvAfter [s2Step349ExitGOut,s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut] 2 s2Step349ExitBank_outgoingOwned

private theorem s2Step349ExitFv_distinct : (s2Step349ExitFvRow.sign::s2Step349ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349ExitFv_owned : (s2Step349ExitFvRow.sign::s2Step349ExitFvRow.payload).toFinset⊆s2Step349ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349ExitFvBefore (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<608) ∨ (609≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349ExitFv_retired : s2Step349ExitFvBefore.retireSet s2Step349ExitFvExtra.toFinset=s2Step349ExitFvAfter := by
  unfold Arena.retireSet s2Step349ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step349ExitFvBefore,s2Step349ExitFAfter,s2Step349ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step349ExitFv_checked : planRowResizeLog s2Step349ExitFvBefore s2Step349ExitFvRow 191 []=
    some (s2Step349ExitFvAfter,s2Step349ExitFvOut,shrinkRow 770 s2Step349ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step349ExitFvBefore s2Step349ExitFvRow 191 s2Step349ExitFv_distinct s2Step349ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step349ExitFvRow.payload.take 191) s2Step349ExitFvRow.sign=s2Step349ExitFvOut := by decide +kernel
  have hi : s2Step349ExitFvRow.payload.drop 191=s2Step349ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step349ExitFv_retired] at result
  exact result

private def s2Step349ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step349ExitG_Incoming : rowsOwned s2Step349ExitGBefore [s2Step349ExitGRow,s2Step349ExitFRow,s2Step349ExitFvRow,s2Step349ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349ExitGRow,s2Step349ExitFRow,s2Step349ExitFvRow,s2Step349ExitGvRow] 0 s2Step349ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349ExitG_Outgoing : rowsOwned s2Step349ExitGvAfter [s2Step349ExitGOut,s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut] :=
  hmrRows_owned_drop s2Step349ExitGvAfter [s2Step349ExitGOut,s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut] 0 s2Step349ExitBank_outgoingOwned

private theorem s2Step349ExitG_distinct : (s2Step349ExitGRow.sign::s2Step349ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349ExitG_owned : (s2Step349ExitGRow.sign::s2Step349ExitGRow.payload).toFinset⊆s2Step349ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349ExitGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349ExitG_retired : s2Step349ExitGBefore.retireSet s2Step349ExitGExtra.toFinset=s2Step349ExitGAfter := by
  unfold Arena.retireSet s2Step349ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step349ExitGBefore,s2Step349ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step349ExitG_checked : planRowResizeLog s2Step349ExitGBefore s2Step349ExitGRow 96 []=
    some (s2Step349ExitGAfter,s2Step349ExitGOut,shrinkRow 769 s2Step349ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step349ExitGBefore s2Step349ExitGRow 96 s2Step349ExitG_distinct s2Step349ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step349ExitGRow.payload.take 96) s2Step349ExitGRow.sign=s2Step349ExitGOut := by decide +kernel
  have hi : s2Step349ExitGRow.payload.drop 96=s2Step349ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step349ExitG_retired] at result
  exact result

private def s2Step349ExitGvBefore : Arena := s2Step349ExitFvAfter

private theorem s2Step349ExitGv_Incoming : rowsOwned s2Step349ExitGvBefore [s2Step349ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349ExitGRow,s2Step349ExitFRow,s2Step349ExitFvRow,s2Step349ExitGvRow] 3 s2Step349ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349ExitGvBefore (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<608) ∨ (609≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349ExitGv_Outgoing : rowsOwned s2Step349ExitGvAfter [s2Step349ExitGvOut] :=
  hmrRows_owned_drop s2Step349ExitGvAfter [s2Step349ExitGOut,s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut] 3 s2Step349ExitBank_outgoingOwned

private theorem s2Step349ExitGv_distinct : (s2Step349ExitGvRow.sign::s2Step349ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349ExitGv_owned : (s2Step349ExitGvRow.sign::s2Step349ExitGvRow.payload).toFinset⊆s2Step349ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349ExitGvBefore (fun q => (0≤q ∧ q<96) ∨ (97≤q ∧ q<608) ∨ (609≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349ExitGv_retired : s2Step349ExitGvBefore.retireSet s2Step349ExitGvExtra.toFinset=s2Step349ExitGvAfter := by
  unfold Arena.retireSet s2Step349ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step349ExitGvBefore,s2Step349ExitFvAfter,s2Step349ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step349ExitGv_checked : planRowResizeLog s2Step349ExitGvBefore s2Step349ExitGvRow 190 []=
    some (s2Step349ExitGvAfter,s2Step349ExitGvOut,shrinkRow 771 s2Step349ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step349ExitGvBefore s2Step349ExitGvRow 190 s2Step349ExitGv_distinct s2Step349ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step349ExitGvRow.payload.take 190) s2Step349ExitGvRow.sign=s2Step349ExitGvOut := by decide +kernel
  have hi : s2Step349ExitGvRow.payload.drop 190=s2Step349ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step349ExitGv_retired] at result
  exact result

private theorem s2Step349ExitBank_rows : planWindowRowsLog s2Step349ExitGBefore [(s2Step349ExitGRow,96),(s2Step349ExitFRow,96),(s2Step349ExitFvRow,191),(s2Step349ExitGvRow,190)] [[],[],[],[]]=
    some (s2Step349ExitGvAfter,[s2Step349ExitGOut,s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut],(shrinkRow 769 s2Step349ExitGExtra ++ (shrinkRow 768 s2Step349ExitFExtra ++ (shrinkRow 770 s2Step349ExitFvExtra ++ (shrinkRow 771 s2Step349ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step349ExitGvAfter [] []=some (s2Step349ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step349ExitGvBefore s2Step349ExitGvAfter s2Step349ExitGvAfter
    s2Step349ExitGvRow s2Step349ExitGvOut 190 [] [] [] []
    (shrinkRow 771 s2Step349ExitGvExtra) ([]) s2Step349ExitGv_Incoming s2Step349ExitGv_checked h4 s2Step349ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step349ExitFvBefore s2Step349ExitFvAfter s2Step349ExitGvAfter
    s2Step349ExitFvRow s2Step349ExitFvOut 191 [] [(s2Step349ExitGvRow,190)] [[]] [s2Step349ExitGvOut]
    (shrinkRow 770 s2Step349ExitFvExtra) ((shrinkRow 771 s2Step349ExitGvExtra ++ [])) s2Step349ExitFv_Incoming s2Step349ExitFv_checked h3 s2Step349ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step349ExitFBefore s2Step349ExitFAfter s2Step349ExitGvAfter
    s2Step349ExitFRow s2Step349ExitFOut 96 [] [(s2Step349ExitFvRow,191),(s2Step349ExitGvRow,190)] [[],[]] [s2Step349ExitFvOut,s2Step349ExitGvOut]
    (shrinkRow 768 s2Step349ExitFExtra) ((shrinkRow 770 s2Step349ExitFvExtra ++ (shrinkRow 771 s2Step349ExitGvExtra ++ []))) s2Step349ExitF_Incoming s2Step349ExitF_checked h2 s2Step349ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step349ExitGBefore s2Step349ExitGAfter s2Step349ExitGvAfter
    s2Step349ExitGRow s2Step349ExitGOut 96 [] [(s2Step349ExitFRow,96),(s2Step349ExitFvRow,191),(s2Step349ExitGvRow,190)] [[],[],[]] [s2Step349ExitFOut,s2Step349ExitFvOut,s2Step349ExitGvOut]
    (shrinkRow 769 s2Step349ExitGExtra) ((shrinkRow 768 s2Step349ExitFExtra ++ (shrinkRow 770 s2Step349ExitFvExtra ++ (shrinkRow 771 s2Step349ExitGvExtra ++ [])))) s2Step349ExitG_Incoming s2Step349ExitG_checked h1 s2Step349ExitG_Outgoing
  exact h0

private theorem s2Step349ExitBank_checked : compileHmrBankResizeLog .exit s2Step349ExitGBefore ⟨s2Step349ExitFRow,s2Step349ExitGRow,s2Step349ExitFvRow,s2Step349ExitGvRow⟩ ⟨96,96,191,190⟩ [[],[],[],[]]=
    some (s2Step349ExitGvAfter,⟨s2Step349ExitFOut,s2Step349ExitGOut,s2Step349ExitFvOut,s2Step349ExitGvOut⟩,(shrinkRow 769 s2Step349ExitGExtra ++ (shrinkRow 768 s2Step349ExitFExtra ++ (shrinkRow 770 s2Step349ExitFvExtra ++ (shrinkRow 771 s2Step349ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step349ExitBank_rows]
  rfl

private theorem s2Step349Add0_apart : Disjoint s2Step349Add0Arena.live s2Step349Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step349Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349Add0_card : s2Step349Add0Arena.live.card=910 := by
  decide +kernel

private theorem s2Step349Add0_borrowed : s2Step349Add0Arena.checkBorrow (hmrHybridCount s2Step349Add0Arena s2Step349Add0B.length) s2Step349Add0Work=some s2Step349Add0During := by
  have len : s2Step349Add0Work.length=hmrHybridCount s2Step349Add0Arena s2Step349Add0B.length := by
    rw [hmrHybridCount,s2Step349Add0_card]
    decide +kernel
  have nd : s2Step349Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step349Add0Arena s2Step349Add0During s2Step349Add0Work.toFinset s2Step349Add0_bounded s2Step349Add0_apart rfl

private theorem s2Step349Add0_distinct : (800::781::789::(s2Step349Add0A++s2Step349Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349Add0_owned : (800::781::789::(s2Step349Add0A++s2Step349Add0B)).toFinset⊆s2Step349Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step349Add0Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349Add0_checked : compileHmrHybridCinLog s2Step349Add0Arena 781 800 789 s2Step349Add0A s2Step349Add0B s2Step349Add0Work=some s2Step349Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step349Add0Arena s2Step349Add0During 781 800 789 s2Step349Add0A s2Step349Add0B s2Step349Add0Work
    (by decide +kernel) (by decide +kernel) s2Step349Add0_distinct
    (fun q hq => s2Step349Add0_owned (List.mem_toFinset.mpr hq)) s2Step349Add0_borrowed

private theorem s2Step349Add1_apart : Disjoint s2Step349Add1Arena.live s2Step349Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step349Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349Add1_card : s2Step349Add1Arena.live.card=910 := by
  decide +kernel

private theorem s2Step349Add1_borrowed : s2Step349Add1Arena.checkBorrow (hmrHybridCount s2Step349Add1Arena s2Step349Add1B.length) s2Step349Add1Work=some s2Step349Add1During := by
  have len : s2Step349Add1Work.length=hmrHybridCount s2Step349Add1Arena s2Step349Add1B.length := by
    rw [hmrHybridCount,s2Step349Add1_card]
    decide +kernel
  have nd : s2Step349Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step349Add1Arena s2Step349Add1During s2Step349Add1Work.toFinset s2Step349Add1_bounded s2Step349Add1_apart rfl

private theorem s2Step349Add1_distinct : (800::781::789::(s2Step349Add1A++s2Step349Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349Add1_owned : (800::781::789::(s2Step349Add1A++s2Step349Add1B)).toFinset⊆s2Step349Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step349Add1Arena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349Add1_checked : compileHmrHybridCinLog s2Step349Add1Arena 781 800 789 s2Step349Add1A s2Step349Add1B s2Step349Add1Work=some s2Step349Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step349Add1Arena s2Step349Add1During 781 800 789 s2Step349Add1A s2Step349Add1B s2Step349Add1Work
    (by decide +kernel) (by decide +kernel) s2Step349Add1_distinct
    (fun q hq => s2Step349Add1_owned (List.mem_toFinset.mpr hq)) s2Step349Add1_borrowed

private theorem s2Step349F4_apart : Disjoint (s2Step349Add0A++s2Step349Add0B).toFinset (s2Step349Add1A++s2Step349Add1B).toFinset := by
  have nd : ((s2Step349Add0A++s2Step349Add0B)++(s2Step349Add1A++s2Step349Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step349F4_carry : s2Step349F4FlagArena.checkBorrow 1 [789]=some s2Step349Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step349F4FlagArena,s2Step349HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step349F4FlagArena,s2Step349HeadFvAfter,s2Step349Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step349F4_distinct : (801::781::800::789::((s2Step349Add0A++s2Step349Add1A)++(s2Step349Add0B++s2Step349Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349F4_flag : s2Step349HeadFvAfter.checkBorrow 1 [800]=some s2Step349F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step349HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step349F4_owned : (801::781::((s2Step349Add0A++s2Step349Add1A)++(s2Step349Add0B++s2Step349Add1B))).toFinset⊆s2Step349HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step349HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349F4_checked : compileHmrHybridF4Log s2Step349HeadFvAfter 801 781 s2Step349Add0A s2Step349Add0B s2Step349Add1A s2Step349Add1B [800] [789] s2Step349Add0Work s2Step349Add1Work=some s2Step349F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step349HeadFvAfter s2Step349F4FlagArena s2Step349Add0Arena s2Step349Add0During s2Step349Add1During 801 781
    s2Step349Add0A s2Step349Add0B s2Step349Add1A s2Step349Add1B [800] [789] s2Step349Add0Work s2Step349Add1Work
    (fun q hq => s2Step349F4_owned (List.mem_toFinset.mpr hq)) s2Step349F4_flag s2Step349F4_carry
    s2Step349F4_distinct s2Step349F4_apart s2Step349Add0_checked s2Step349Add1_checked

private theorem s2Step349Front_branch : s2Step349FrontSigmaArena.checkBorrow 1 [781]=some s2Step349HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step349FrontSigmaArena,s2Step349EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step349FrontSigmaArena,s2Step349EntryGvAfter,s2Step349HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step349Front_entry : HmrFrontEntryValid s2Step349EntryFBefore s2Step349FrontBank 97 191 ⟨96,96,191,190⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step349FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step349EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step349EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step349FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step349Front_sigma : s2Step349EntryGvAfter.checkBorrow 1 [801]=some s2Step349FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step349EntryGvAfter,arenaWires]
  · rfl

private def s2Step349HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349HeadFBefore : Arena := s2Step349HeadGAfter

private def s2Step349HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩

private def s2Step349HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845],770⟩

private def s2Step349HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96],769⟩

private def s2Step349HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891],771⟩

private theorem s2Step349HeadBank_incomingDistinct : ([s2Step349HeadGRow,s2Step349HeadFRow,s2Step349HeadGvRow,s2Step349HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349HeadF_Incoming : rowsOwned s2Step349HeadFBefore [s2Step349HeadFRow,s2Step349HeadGvRow,s2Step349HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349HeadGRow,s2Step349HeadFRow,s2Step349HeadGvRow,s2Step349HeadFvRow] 1 s2Step349HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349HeadBank_outgoingOwned : rowsOwned s2Step349HeadFvAfter [s2Step349HeadGOut,s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step349HeadFvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349HeadF_Outgoing : rowsOwned s2Step349HeadFvAfter [s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut] :=
  hmrRows_owned_drop s2Step349HeadFvAfter [s2Step349HeadGOut,s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut] 1 s2Step349HeadBank_outgoingOwned

private theorem s2Step349HeadF_distinct : (s2Step349HeadFRow.sign::s2Step349HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349HeadF_owned : (s2Step349HeadFRow.sign::s2Step349HeadFRow.payload).toFinset⊆s2Step349HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349HeadF_reserved : s2Step349HeadFBefore.reserve s2Step349HeadFFresh.toFinset=some s2Step349HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step349HeadFFresh,arenaWires]
  · norm_num [s2Step349HeadFBefore,s2Step349HeadGAfter,s2Step349HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step349HeadFAfter,s2Step349HeadFBefore,s2Step349HeadGAfter,s2Step349HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step349HeadF_checked : planRowResizeLog s2Step349HeadFBefore s2Step349HeadFRow 98 s2Step349HeadFFresh=
    some (s2Step349HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839],768⟩,growRow 768 s2Step349HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step349HeadFBefore s2Step349HeadFAfter s2Step349HeadFRow 98 s2Step349HeadFFresh
    s2Step349HeadF_distinct s2Step349HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step349HeadF_reserved
  have rowEq : WindowRow.mk (s2Step349HeadFRow.payload++s2Step349HeadFFresh) s2Step349HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step349HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step349HeadFvBefore : Arena := s2Step349HeadGvAfter

private theorem s2Step349HeadFv_Incoming : rowsOwned s2Step349HeadFvBefore [s2Step349HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349HeadGRow,s2Step349HeadFRow,s2Step349HeadGvRow,s2Step349HeadFvRow] 3 s2Step349HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349HeadFv_Outgoing : rowsOwned s2Step349HeadFvAfter [s2Step349HeadFvOut] :=
  hmrRows_owned_drop s2Step349HeadFvAfter [s2Step349HeadGOut,s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut] 3 s2Step349HeadBank_outgoingOwned

private theorem s2Step349HeadFv_distinct : (s2Step349HeadFvRow.sign::s2Step349HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349HeadFv_owned : (s2Step349HeadFvRow.sign::s2Step349HeadFvRow.payload).toFinset⊆s2Step349HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349HeadFv_reserved : s2Step349HeadFvBefore.reserve s2Step349HeadFvFresh.toFinset=some s2Step349HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step349HeadFvFresh,arenaWires]
  · norm_num [s2Step349HeadFvBefore,s2Step349HeadGvAfter,s2Step349HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step349HeadFvAfter,s2Step349HeadFvBefore,s2Step349HeadGvAfter,s2Step349HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step349HeadFv_checked : planRowResizeLog s2Step349HeadFvBefore s2Step349HeadFvRow 192 s2Step349HeadFvFresh=
    some (s2Step349HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 903],770⟩,growRow 770 s2Step349HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step349HeadFvBefore s2Step349HeadFvAfter s2Step349HeadFvRow 192 s2Step349HeadFvFresh
    s2Step349HeadFv_distinct s2Step349HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step349HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step349HeadFvRow.payload++s2Step349HeadFvFresh) s2Step349HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 804, 845, 903],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step349HeadG_Incoming : rowsOwned s2Step349HeadGBefore [s2Step349HeadGRow,s2Step349HeadFRow,s2Step349HeadGvRow,s2Step349HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349HeadGRow,s2Step349HeadFRow,s2Step349HeadGvRow,s2Step349HeadFvRow] 0 s2Step349HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349HeadG_Outgoing : rowsOwned s2Step349HeadFvAfter [s2Step349HeadGOut,s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut] :=
  hmrRows_owned_drop s2Step349HeadFvAfter [s2Step349HeadGOut,s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut] 0 s2Step349HeadBank_outgoingOwned

private theorem s2Step349HeadG_distinct : (s2Step349HeadGRow.sign::s2Step349HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349HeadG_owned : (s2Step349HeadGRow.sign::s2Step349HeadGRow.payload).toFinset⊆s2Step349HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349HeadG_reserved : s2Step349HeadGBefore.reserve s2Step349HeadGFresh.toFinset=some s2Step349HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step349HeadGFresh,arenaWires]
  · norm_num [s2Step349HeadGBefore,s2Step349HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step349HeadGAfter,s2Step349HeadGBefore,s2Step349HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step349HeadG_checked : planRowResizeLog s2Step349HeadGBefore s2Step349HeadGRow 98 s2Step349HeadGFresh=
    some (s2Step349HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 788],769⟩,growRow 769 s2Step349HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step349HeadGBefore s2Step349HeadGAfter s2Step349HeadGRow 98 s2Step349HeadGFresh
    s2Step349HeadG_distinct s2Step349HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step349HeadG_reserved
  have rowEq : WindowRow.mk (s2Step349HeadGRow.payload++s2Step349HeadGFresh) s2Step349HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 788],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step349HeadGvBefore : Arena := s2Step349HeadFAfter

private theorem s2Step349HeadGv_Incoming : rowsOwned s2Step349HeadGvBefore [s2Step349HeadGvRow,s2Step349HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step349HeadGRow,s2Step349HeadFRow,s2Step349HeadGvRow,s2Step349HeadFvRow] 2 s2Step349HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step349HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step349HeadGv_Outgoing : rowsOwned s2Step349HeadFvAfter [s2Step349HeadGvOut,s2Step349HeadFvOut] :=
  hmrRows_owned_drop s2Step349HeadFvAfter [s2Step349HeadGOut,s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut] 2 s2Step349HeadBank_outgoingOwned

private theorem s2Step349HeadGv_distinct : (s2Step349HeadGvRow.sign::s2Step349HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step349HeadGv_owned : (s2Step349HeadGvRow.sign::s2Step349HeadGvRow.payload).toFinset⊆s2Step349HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step349HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step349HeadGv_reserved : s2Step349HeadGvBefore.reserve s2Step349HeadGvFresh.toFinset=some s2Step349HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step349HeadGvFresh,arenaWires]
  · norm_num [s2Step349HeadGvBefore,s2Step349HeadFAfter,s2Step349HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step349HeadGvAfter,s2Step349HeadGvBefore,s2Step349HeadFAfter,s2Step349HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step349HeadGv_checked : planRowResizeLog s2Step349HeadGvBefore s2Step349HeadGvRow 192 s2Step349HeadGvFresh=
    some (s2Step349HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891, 894],771⟩,growRow 771 s2Step349HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step349HeadGvBefore s2Step349HeadGvAfter s2Step349HeadGvRow 192 s2Step349HeadGvFresh
    s2Step349HeadGv_distinct s2Step349HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step349HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step349HeadGvRow.payload++s2Step349HeadGvFresh) s2Step349HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 891, 894],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step349HeadBank_rows : planWindowRowsLog s2Step349HeadGBefore [(s2Step349HeadGRow,98),(s2Step349HeadFRow,98),(s2Step349HeadGvRow,192),(s2Step349HeadFvRow,192)] [s2Step349HeadGFresh,s2Step349HeadFFresh,s2Step349HeadGvFresh,s2Step349HeadFvFresh]=
    some (s2Step349HeadFvAfter,[s2Step349HeadGOut,s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut],(growRow 769 s2Step349HeadGFresh ++ (growRow 768 s2Step349HeadFFresh ++ (growRow 771 s2Step349HeadGvFresh ++ (growRow 770 s2Step349HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step349HeadFvAfter [] []=some (s2Step349HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step349HeadFvBefore s2Step349HeadFvAfter s2Step349HeadFvAfter
    s2Step349HeadFvRow s2Step349HeadFvOut 192 s2Step349HeadFvFresh [] [] []
    (growRow 770 s2Step349HeadFvFresh) ([]) s2Step349HeadFv_Incoming s2Step349HeadFv_checked h4 s2Step349HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step349HeadGvBefore s2Step349HeadGvAfter s2Step349HeadFvAfter
    s2Step349HeadGvRow s2Step349HeadGvOut 192 s2Step349HeadGvFresh [(s2Step349HeadFvRow,192)] [s2Step349HeadFvFresh] [s2Step349HeadFvOut]
    (growRow 771 s2Step349HeadGvFresh) ((growRow 770 s2Step349HeadFvFresh ++ [])) s2Step349HeadGv_Incoming s2Step349HeadGv_checked h3 s2Step349HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step349HeadFBefore s2Step349HeadFAfter s2Step349HeadFvAfter
    s2Step349HeadFRow s2Step349HeadFOut 98 s2Step349HeadFFresh [(s2Step349HeadGvRow,192),(s2Step349HeadFvRow,192)] [s2Step349HeadGvFresh,s2Step349HeadFvFresh] [s2Step349HeadGvOut,s2Step349HeadFvOut]
    (growRow 768 s2Step349HeadFFresh) ((growRow 771 s2Step349HeadGvFresh ++ (growRow 770 s2Step349HeadFvFresh ++ []))) s2Step349HeadF_Incoming s2Step349HeadF_checked h2 s2Step349HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step349HeadGBefore s2Step349HeadGAfter s2Step349HeadFvAfter
    s2Step349HeadGRow s2Step349HeadGOut 98 s2Step349HeadGFresh [(s2Step349HeadFRow,98),(s2Step349HeadGvRow,192),(s2Step349HeadFvRow,192)] [s2Step349HeadFFresh,s2Step349HeadGvFresh,s2Step349HeadFvFresh] [s2Step349HeadFOut,s2Step349HeadGvOut,s2Step349HeadFvOut]
    (growRow 769 s2Step349HeadGFresh) ((growRow 768 s2Step349HeadFFresh ++ (growRow 771 s2Step349HeadGvFresh ++ (growRow 770 s2Step349HeadFvFresh ++ [])))) s2Step349HeadG_Incoming s2Step349HeadG_checked h1 s2Step349HeadG_Outgoing
  exact h0

private theorem s2Step349HeadBank_checked : compileHmrBankResizeLog .headroom s2Step349HeadGBefore ⟨s2Step349HeadFRow,s2Step349HeadGRow,s2Step349HeadFvRow,s2Step349HeadGvRow⟩ ⟨98,98,192,192⟩ [s2Step349HeadGFresh,s2Step349HeadFFresh,s2Step349HeadGvFresh,s2Step349HeadFvFresh]=
    some (s2Step349HeadFvAfter,⟨s2Step349HeadFOut,s2Step349HeadGOut,s2Step349HeadFvOut,s2Step349HeadGvOut⟩,(growRow 769 s2Step349HeadGFresh ++ (growRow 768 s2Step349HeadFFresh ++ (growRow 771 s2Step349HeadGvFresh ++ (growRow 770 s2Step349HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step349HeadBank_rows]
  rfl

private theorem s2Step349Front_checked : compileHmrSourceFrontLog s2Step349EntryFBefore s2Step349FrontBank 97 191 ⟨96,96,191,190⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step349FrontLog=some s2Step349FrontPlan := by
  have pairEq : s2Step349FrontPair=⟨s2Step349HeadFRow,s2Step349HeadGRow,s2Step349HeadFvRow,s2Step349HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step349FrontHead=⟨s2Step349ExitFRow,s2Step349ExitGRow,s2Step349ExitFvRow,s2Step349ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step349Add0A=s2Step349FrontHead.f.wires := by decide +kernel
  have gEq : s2Step349Add0B=s2Step349FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step349Add1A=s2Step349FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step349Add1B=s2Step349FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step349EntryFBefore s2Step349FrontBank 97 191 ⟨96,96,191,190⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step349FrontLog s2Step349FrontPlan
  · exact s2Step349Front_entry
  · exact s2Step349EntryBank_checked
  · exact s2Step349Front_sigma
  · rfl
  · exact s2Step349Front_branch
  · rfl
  · simpa only [s2Step349FrontPlan,pairEq] using s2Step349HeadBank_checked
  · simpa only [s2Step349FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step349F4_checked
  · exact s2Step349Counter_checked
  · rfl
  · simpa only [s2Step349FrontPlan,headEq] using s2Step349ExitBank_checked

private theorem s2Step349Complete_explicit_checked : compileHmrEarlyStepLog s2Step349EntryFBefore s2Step349FrontBank 97 191 ⟨96,96,191,190⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step349CompleteLog=some s2Step349CompletePlan := by
  let Q := s2Step349EarlyControlPlan
  have hq := s2Step349EarlyControl_plan_checked
  have fv1 : s2Step349CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step349CompleteOut.fv.payload[2]?.getD s2Step349CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step349CompleteOut.fv.payload[3]?.getD s2Step349CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step349CompleteOut.fv.payload[4]?.getD s2Step349CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step349EntryFBefore s2Step349EarlyControlArena s2Step349FrontBank 97 191 ⟨96,96,191,190⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step349CompleteLog s2Step349FrontPlan Q
    s2Step349Front_checked s2Step349Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step349Complete_owned s2Step349Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step349EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 801 s2Step349CompleteOut.fv.second (s2Step349CompleteOut.fv.payload[2]?.getD s2Step349CompleteOut.fv.sign) (s2Step349CompleteOut.fv.payload[3]?.getD s2Step349CompleteOut.fv.sign) (s2Step349CompleteOut.fv.payload[4]?.getD s2Step349CompleteOut.fv.sign) 781 60 s2Step349EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep349Arena : Arena := s2Step349EntryFBefore
def s2PrivateStep349Bank : WindowBank := s2Step349FrontBank
def s2PrivateStep349Spec : HmrSourceWalkStepLog := ⟨97,191,⟨96,96,191,190⟩,60,.early s2Step349CompleteLog⟩
def s2PrivateStep349Plan : HmrSourceStepPlan := .early s2Step349CompletePlan
theorem s2PrivateStep349_source : s2PrivateStep349Spec=s2ObservedLogs336[13] := rfl
theorem s2PrivateStep349_checked : compileHmrSourceStepLog s2PrivateStep349Arena s2PrivateStep349Bank
    s2PrivateStep349Spec.fgWidth s2PrivateStep349Spec.vWidth s2PrivateStep349Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 349 s2PrivateStep349Spec.need none s2PrivateStep349Spec.log=some s2PrivateStep349Plan := by
  change compileHmrSourceStepLog s2Step349EntryFBefore s2Step349FrontBank 97 191 ⟨96,96,191,190⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 349 60 none (.early s2Step349CompleteLog)=some (.early s2Step349CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 349<498)]
  rw [s2Step349Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
