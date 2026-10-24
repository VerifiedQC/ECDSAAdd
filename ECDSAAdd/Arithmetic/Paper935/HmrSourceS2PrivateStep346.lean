import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep344
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

private def s2Step346CompleteMoves : List (Wire × Wire) := [(801,609),(804,610)]

private def s2Step346EarlyControlLog : HmrEarlyControlLog := ⟨[804, 801, 839, 789, 800],[903],[894],[827, 844, 907, 913, 914, 915],[]⟩

private def s2Step346FrontLog : HmrFrontAllocationLog := ⟨⟨[[903], [], [], [901]],[[844], [894], [839], [800]],[[], [], [], []]⟩,[845],[788],[907],[913],[914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[907, 913, 914, 915]⟩

private def s2Step346CompleteLog : HmrEarlyStepLog := ⟨s2Step346FrontLog,s2Step346CompleteMoves,s2Step346EarlyControlLog⟩

private def s2Step346ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608],768⟩

private def s2Step346ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step346ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩

private def s2Step346ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step346FrontOut : WindowBank := ⟨s2Step346ExitFOut,s2Step346ExitGOut,s2Step346ExitFvOut,s2Step346ExitGvOut⟩

private def s2Step346CompleteOut : WindowBank := s2Step346FrontOut.repacked s2Step346CompleteMoves

private def s2Step346EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step346EarlyControlPositiveArena,[903],s2Step346EarlyControlEqualityArena,[894],⟨⟨845,false⟩,[⟨⟨903,false⟩,894⟩]⟩⟩

private def s2Step346EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<916)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,804⟩,⟨⟨774,false⟩,801⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,800⟩]⟩

private def s2Step346EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step346EarlyControlZeroArena,s2Step346EarlyControlZeroPlan,s2Step346EarlyControlClassPlan,s2Step346EarlyControlFlagArena,s2Step346EarlyControlFittedArena,s2Step346EarlyControlHistoryArena,s2Step346EarlyControlSigmaArena,s2Step346EarlyControlOutputArena,s2Step346EarlyControlLog⟩

private def s2Step346CounterWork : List Wire := [907, 913, 914, 915]

private theorem s2Step346Counter_bounded : s2Step346CounterWork.toFinset⊆arenaWires := by norm_num [s2Step346CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step346HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346CounterDuring : Arena := ⟨s2Step346HeadFvAfter.live∪s2Step346CounterWork.toFinset,Finset.union_subset s2Step346HeadFvAfter.bounded s2Step346Counter_bounded⟩

private def s2Step346EntryFFresh : List Wire := [903]

private def s2Step346EntryFvFresh : List Wire := []

private def s2Step346EntryGFresh : List Wire := []

private def s2Step346EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EntryGvFresh : List Wire := [901]

private def s2Step346ExitFExtra : List Wire := [609, 610, 903, 894]

private def s2Step346ExitFvExtra : List Wire := [789, 800]

private def s2Step346ExitGExtra : List Wire := [827, 844]

private def s2Step346ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<609) ∨ (611≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346ExitGvExtra : List Wire := [839]

private def s2Step346Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step346Add0Work : List Wire := [914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step346Add0_bounded : s2Step346Add0Work.toFinset⊆arenaWires := by
  have h : s2Step346Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step346Add0During : Arena := ⟨s2Step346Add0Arena.live∪s2Step346Add0Work.toFinset,Finset.union_subset s2Step346Add0Arena.bounded s2Step346Add0_bounded⟩

private def s2Step346Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step346Add1Work : List Wire := [914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step346Add1_bounded : s2Step346Add1Work.toFinset⊆arenaWires := by
  have h : s2Step346Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step346Add1During : Arena := ⟨s2Step346Add1Arena.live∪s2Step346Add1Work.toFinset,Finset.union_subset s2Step346Add1Arena.bounded s2Step346Add1_bounded⟩

private def s2Step346F4FlagArena : Arena := ⟨s2Step346HeadFvAfter.live∪{907},Finset.union_subset s2Step346HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step346F4Plan : HmrHybridF4Plan := ⟨s2Step346F4FlagArena,[907],s2Step346Add0Arena,[913],s2Step346Add0During,s2Step346Add0Work,s2Step346Add1During,s2Step346Add1Work⟩

private def s2Step346HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903, 894],768⟩

private def s2Step346HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789, 800],770⟩

private def s2Step346HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 844],769⟩

private def s2Step346HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 839],771⟩

private def s2Step346FrontHead : WindowBank := ⟨s2Step346HeadFOut,s2Step346HeadGOut,s2Step346HeadFvOut,s2Step346HeadGvOut⟩

private def s2Step346EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903],768⟩

private def s2Step346EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩

private def s2Step346EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827],769⟩

private def s2Step346EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private def s2Step346FrontPair : WindowBank := ⟨s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut⟩

private def s2Step346FrontSigmaArena : Arena := ⟨s2Step346EntryGvAfter.live∪{845},Finset.union_subset s2Step346EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step346HeadFFresh : List Wire := [894]

private def s2Step346HeadFvFresh : List Wire := [800]

private def s2Step346HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346HeadGFresh : List Wire := [844]

private def s2Step346HeadGvFresh : List Wire := [839]

private def s2Step346FrontPlan : HmrSourceFront := ⟨s2Step346EntryGvAfter,s2Step346FrontPair,(growRow 768 s2Step346EntryFFresh ++ (growRow 769 s2Step346EntryGFresh ++ (growRow 770 s2Step346EntryFvFresh ++ (growRow 771 s2Step346EntryGvFresh ++ [])))),s2Step346FrontSigmaArena,[845],s2Step346HeadGBefore,[788],
  s2Step346HeadFvAfter,s2Step346FrontHead,(growRow 769 s2Step346HeadGFresh ++ (growRow 768 s2Step346HeadFFresh ++ (growRow 771 s2Step346HeadGvFresh ++ (growRow 770 s2Step346HeadFvFresh ++ [])))),s2Step346F4Plan,s2Step346CounterDuring,s2Step346CounterWork,s2Step346ExitGvAfter,s2Step346FrontOut,(shrinkRow 769 s2Step346ExitGExtra ++ (shrinkRow 768 s2Step346ExitFExtra ++ (shrinkRow 770 s2Step346ExitFvExtra ++ (shrinkRow 771 s2Step346ExitGvExtra ++ []))))⟩

private def s2Step346CompletePlan : HmrEarlyStepPlan := ⟨s2Step346FrontPlan,s2Step346EarlyControlArena,s2Step346EarlyControlPlan,s2Step346CompleteMoves⟩

private theorem s2Step346Complete_apart : List.Disjoint (s2Step346CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [845, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step346CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[845, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step346Complete_owned : (s2Step346CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step346CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,610),(611,789),(790,800),(802,827),(828,839),(840,844),(845,894),(895,903),(904,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step346CompleteRelocationMove0Borrowed : Arena := ⟨s2Step346ExitGvAfter.live∪{609},Finset.union_subset s2Step346ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step346CompleteRelocationMove1Borrowed : Arena := ⟨s2Step346CompleteRelocationMove0After.live∪{610},Finset.union_subset s2Step346CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step346CompleteRelocation_move0_owned : 801∈s2Step346ExitGvAfter.live := by norm_num [s2Step346ExitGvAfter,arenaWires]

private theorem s2Step346CompleteRelocation_move0_reserve : s2Step346ExitGvAfter.reserve {609}=some s2Step346CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step346ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step346CompleteRelocation_move0_retire : s2Step346CompleteRelocationMove0Borrowed.retireSet {801}=s2Step346CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step346CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step346CompleteRelocationMove0Borrowed,s2Step346ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step346CompleteRelocation_move1_owned : 804∈s2Step346CompleteRelocationMove0After.live := by norm_num [s2Step346CompleteRelocationMove0After,arenaWires]

private theorem s2Step346CompleteRelocation_move1_reserve : s2Step346CompleteRelocationMove0After.reserve {610}=some s2Step346CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step346CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step346CompleteRelocation_move1_retire : s2Step346CompleteRelocationMove1Borrowed.retireSet {804}=s2Step346EarlyControlArena := by
  unfold Arena.retireSet s2Step346EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step346CompleteRelocationMove1Borrowed,s2Step346CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step346CompleteRelocation_checked : s2Step346ExitGvAfter.checkRepack [(801,609),(804,610)]=some s2Step346EarlyControlArena := by
  have tail2 : s2Step346EarlyControlArena.checkRepack []=some s2Step346EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step346CompleteRelocationMove0After s2Step346CompleteRelocationMove1Borrowed s2Step346EarlyControlArena s2Step346EarlyControlArena 804 610 []
    s2Step346CompleteRelocation_move1_owned s2Step346CompleteRelocation_move1_reserve s2Step346CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step346ExitGvAfter s2Step346CompleteRelocationMove0Borrowed s2Step346CompleteRelocationMove0After s2Step346EarlyControlArena 801 609 [(804,610)]
    s2Step346CompleteRelocation_move0_owned s2Step346CompleteRelocation_move0_reserve s2Step346CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step346Complete_repack : s2Step346ExitGvAfter.checkRepack s2Step346CompleteMoves=some s2Step346EarlyControlArena := by
  simpa only [s2Step346CompleteMoves] using s2Step346CompleteRelocation_checked

private theorem s2Step346EarlyControl_branchOwned : ([788] : List Wire).toFinset⊆s2Step346EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlSigmaArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_branch : compileHmrBranchRetirement s2Step346EarlyControlSigmaArena 788=some s2Step346EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step346EarlyControl_branchOwned
  · ext q
    simp [s2Step346EarlyControlOutputArena,s2Step346EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step346EarlyControl_classEqualityBorrow : s2Step346EarlyControlPositiveArena.checkBorrow (([845, 903] : List Wire).length-1) s2Step346EarlyControlLog.classWork=some s2Step346EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step346EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step346EarlyControlEqualityArena,s2Step346EarlyControlPositiveArena,s2Step346EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step346EarlyControl_classEqualityOwned : ([845, 903] : List Wire).toFinset⊆s2Step346EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_classEquality : compileHmrEqualityLog s2Step346EarlyControlPositiveArena [845, 903] 0 s2Step346EarlyControlLog.classWork=some (s2Step346EarlyControlEqualityArena,s2Step346EarlyControlLog.classWork,s2Step346EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step346EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step346EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step346EarlyControl_classOwned : ([777, 800, 845] : List Wire).toFinset⊆s2Step346EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlZeroArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_positiveBorrow : s2Step346EarlyControlZeroArena.checkBorrow (1) s2Step346EarlyControlLog.positiveWork=some s2Step346EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step346EarlyControlZeroArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step346EarlyControlPositiveArena,s2Step346EarlyControlZeroArena,s2Step346EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step346EarlyControl_class : compileHmrSourceClassLog s2Step346EarlyControlZeroArena false 777 s2Step346EarlyControlZeroPlan.top 0 845 s2Step346EarlyControlLog.positiveWork s2Step346EarlyControlLog.classWork=some s2Step346EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step346EarlyControlClassPlan s2Step346EarlyControlZeroArena false 777 s2Step346EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s2Step346EarlyControl_classOwned
  · exact s2Step346EarlyControl_positiveBorrow
  · exact s2Step346EarlyControl_classEquality

private theorem s2Step346EarlyControl_entryRecordOwned : ([788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s2Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_fitBorrow : s2Step346EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step346EarlyControlLog.recordFresh=some s2Step346EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step346EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
      decide +kernel
    · ext q
      simp [s2Step346EarlyControlFittedArena,s2Step346EarlyControlFlagArena,s2Step346EarlyControlLog,arenaWires]

private theorem s2Step346EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step346EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlFlagArena (fun q => (0≤q ∧ q<916)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_fit : compileHmrRecordGrowLog s2Step346EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step346EarlyControlLog.recordFresh=some s2Step346EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step346EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step346EarlyControl_fitBorrow

private theorem s2Step346EarlyControl_flagsBorrow : s2Step346EarlyControlEqualityArena.checkBorrow (6) s2Step346EarlyControlLog.flagWork=some s2Step346EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step346EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step346EarlyControlFlagArena,s2Step346EarlyControlEqualityArena,s2Step346EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step346EarlyControl_flagsOwned : ([894, 253, 252, 251] : List Wire).toFinset⊆s2Step346EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlEqualityArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_flags : compileHmrFlagsLog s2Step346EarlyControlClassPlan.equalityArena s2Step346EarlyControlClassPlan.equality.top 253 252 251 s2Step346EarlyControlLog.flagWork=some s2Step346EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step346EarlyControl_flagsOwned⟩
  · exact s2Step346EarlyControl_flagsBorrow

private theorem s2Step346EarlyControl_historyBorrow : s2Step346EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step346EarlyControlLog.recordFresh=some s2Step346EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step346EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step346EarlyControlHistoryArena,s2Step346EarlyControlArena,s2Step346EarlyControlLog,arenaWires]

private theorem s2Step346EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_history : compileHmrRecordGrowLog s2Step346EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step346EarlyControlLog.recordFresh=some s2Step346EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step346EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step346EarlyControl_historyBorrow

private theorem s2Step346EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s2Step346EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s2Step346EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlHistoryArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_sigmaRelease : s2Step346EarlyControlHistoryArena.release {845} (fun _ => false)=some s2Step346EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step346EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step346EarlyControlSigmaArena,s2Step346EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step346EarlyControl_sigma : compileHmrSigmaDropLog s2Step346EarlyControlHistoryArena false 0 0 254 845 []=some s2Step346EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step346EarlyControl_sigmaOwned⟩
  · exact s2Step346EarlyControl_sigmaRelease

private theorem s2Step346EarlyControl_zeroBorrow : s2Step346EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step346EarlyControlLog.zeroWork=some s2Step346EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step346EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step346EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step346EarlyControlZeroArena,s2Step346EarlyControlArena,s2Step346EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step346EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step346EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step346EarlyControlArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EarlyControl_zero : compileHmrEqualityLog s2Step346EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step346EarlyControlLog.zeroWork=some (s2Step346EarlyControlZeroArena,s2Step346EarlyControlLog.zeroWork,s2Step346EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step346EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step346EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step346EarlyControl_logged : s2Step346EarlyControlPlan.Logged s2Step346EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 845 254 253 252 251 788 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step346EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step346EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step346EarlyControl_zero
  · exact s2Step346EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step346EarlyControl_flags
  · exact s2Step346EarlyControl_fit
  · exact s2Step346EarlyControl_history
  · exact s2Step346EarlyControl_sigma
  · exact s2Step346EarlyControl_branch

private theorem s2Step346EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step346EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 845 254 253 252 251 788 60 s2Step346EarlyControlLog=some s2Step346EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step346EarlyControlPlan s2Step346EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 845 254 253 252 251 788 60 s2Step346EarlyControl_logged

private def s2Step346EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610],768⟩

private def s2Step346EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩

private def s2Step346EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827],769⟩

private def s2Step346EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩

private def s2Step346FrontBank : WindowBank := ⟨s2Step346EntryFRow,s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow⟩

private def s2Step346Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903, 894, 768]

private def s2Step346Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 844, 769]

private def s2Step346Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789, 800, 770]

private def s2Step346Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 839, 771]

private theorem s2Step346Counter_apart : Disjoint s2Step346HeadFvAfter.live s2Step346CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step346HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346Counter_borrowed : s2Step346HeadFvAfter.checkBorrow 4 s2Step346CounterWork=some s2Step346CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step346HeadFvAfter s2Step346CounterDuring s2Step346CounterWork.toFinset s2Step346Counter_bounded s2Step346Counter_apart rfl

private theorem s2Step346Counter_owned : (845::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step346HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step346HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346Counter_checked : compileHmrCounterStepLog s2Step346HeadFvAfter true 845 [772, 773, 774, 775, 776, 777] s2Step346CounterWork=some s2Step346CounterDuring := by
  have owned : ∀q∈845::[772, 773, 774, 775, 776, 777],q∈s2Step346HeadFvAfter.live := fun q hq => s2Step346Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step346Counter_borrowed

private def s2Step346EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step346EntryBank_incomingDistinct : ([s2Step346EntryFRow,s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346EntryF_Incoming : rowsOwned s2Step346EntryFBefore [s2Step346EntryFRow,s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346EntryFRow,s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow] 0 s2Step346EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346EntryBank_outgoingOwned : rowsOwned s2Step346EntryGvAfter [s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step346EntryGvAfter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346EntryF_Outgoing : rowsOwned s2Step346EntryGvAfter [s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut] :=
  hmrRows_owned_drop s2Step346EntryGvAfter [s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut] 0 s2Step346EntryBank_outgoingOwned

private theorem s2Step346EntryF_distinct : (s2Step346EntryFRow.sign::s2Step346EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346EntryF_owned : (s2Step346EntryFRow.sign::s2Step346EntryFRow.payload).toFinset⊆s2Step346EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EntryF_reserved : s2Step346EntryFBefore.reserve s2Step346EntryFFresh.toFinset=some s2Step346EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step346EntryFFresh,arenaWires]
  · norm_num [s2Step346EntryFBefore,s2Step346EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step346EntryFAfter,s2Step346EntryFBefore,s2Step346EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step346EntryF_checked : planRowResizeLog s2Step346EntryFBefore s2Step346EntryFRow 100 s2Step346EntryFFresh=
    some (s2Step346EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903],768⟩,growRow 768 s2Step346EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step346EntryFBefore s2Step346EntryFAfter s2Step346EntryFRow 100 s2Step346EntryFFresh
    s2Step346EntryF_distinct s2Step346EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step346EntryF_reserved
  have rowEq : WindowRow.mk (s2Step346EntryFRow.payload++s2Step346EntryFFresh) s2Step346EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step346EntryFvAfter : Arena := s2Step346EntryFAfter

private def s2Step346EntryFvBefore : Arena := s2Step346EntryFAfter

private theorem s2Step346EntryFv_Incoming : rowsOwned s2Step346EntryFvBefore [s2Step346EntryFvRow,s2Step346EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346EntryFRow,s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow] 2 s2Step346EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346EntryFvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346EntryFv_Outgoing : rowsOwned s2Step346EntryGvAfter [s2Step346EntryFvOut,s2Step346EntryGvOut] :=
  hmrRows_owned_drop s2Step346EntryGvAfter [s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut] 2 s2Step346EntryBank_outgoingOwned

private theorem s2Step346EntryFv_distinct : (s2Step346EntryFvRow.sign::s2Step346EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346EntryFv_owned : (s2Step346EntryFvRow.sign::s2Step346EntryFvRow.payload).toFinset⊆s2Step346EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346EntryFvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EntryFv_reserved : s2Step346EntryFvBefore.reserve s2Step346EntryFvFresh.toFinset=some s2Step346EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step346EntryFvFresh,arenaWires]
  · norm_num [s2Step346EntryFvBefore,s2Step346EntryFAfter,s2Step346EntryFvFresh,arenaWires]
  · simp only [s2Step346EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step346EntryFv_checked : planRowResizeLog s2Step346EntryFvBefore s2Step346EntryFvRow 190 s2Step346EntryFvFresh=
    some (s2Step346EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩,growRow 770 s2Step346EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step346EntryFvBefore s2Step346EntryFvAfter s2Step346EntryFvRow 190 s2Step346EntryFvFresh
    s2Step346EntryFv_distinct s2Step346EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step346EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step346EntryFvRow.payload++s2Step346EntryFvFresh) s2Step346EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step346EntryGAfter : Arena := s2Step346EntryFAfter

private def s2Step346EntryGBefore : Arena := s2Step346EntryFAfter

private theorem s2Step346EntryG_Incoming : rowsOwned s2Step346EntryGBefore [s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346EntryFRow,s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow] 1 s2Step346EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346EntryGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346EntryG_Outgoing : rowsOwned s2Step346EntryGvAfter [s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut] :=
  hmrRows_owned_drop s2Step346EntryGvAfter [s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut] 1 s2Step346EntryBank_outgoingOwned

private theorem s2Step346EntryG_distinct : (s2Step346EntryGRow.sign::s2Step346EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346EntryG_owned : (s2Step346EntryGRow.sign::s2Step346EntryGRow.payload).toFinset⊆s2Step346EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346EntryGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EntryG_reserved : s2Step346EntryGBefore.reserve s2Step346EntryGFresh.toFinset=some s2Step346EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step346EntryGFresh,arenaWires]
  · norm_num [s2Step346EntryGBefore,s2Step346EntryFAfter,s2Step346EntryGFresh,arenaWires]
  · simp only [s2Step346EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step346EntryG_checked : planRowResizeLog s2Step346EntryGBefore s2Step346EntryGRow 100 s2Step346EntryGFresh=
    some (s2Step346EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827],769⟩,growRow 769 s2Step346EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step346EntryGBefore s2Step346EntryGAfter s2Step346EntryGRow 100 s2Step346EntryGFresh
    s2Step346EntryG_distinct s2Step346EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step346EntryG_reserved
  have rowEq : WindowRow.mk (s2Step346EntryGRow.payload++s2Step346EntryGFresh) s2Step346EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step346EntryGvBefore : Arena := s2Step346EntryFAfter

private theorem s2Step346EntryGv_Incoming : rowsOwned s2Step346EntryGvBefore [s2Step346EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346EntryFRow,s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow] 3 s2Step346EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346EntryGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346EntryGv_Outgoing : rowsOwned s2Step346EntryGvAfter [s2Step346EntryGvOut] :=
  hmrRows_owned_drop s2Step346EntryGvAfter [s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut] 3 s2Step346EntryBank_outgoingOwned

private theorem s2Step346EntryGv_distinct : (s2Step346EntryGvRow.sign::s2Step346EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346EntryGv_owned : (s2Step346EntryGvRow.sign::s2Step346EntryGvRow.payload).toFinset⊆s2Step346EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346EntryGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346EntryGv_reserved : s2Step346EntryGvBefore.reserve s2Step346EntryGvFresh.toFinset=some s2Step346EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step346EntryGvFresh,arenaWires]
  · norm_num [s2Step346EntryGvBefore,s2Step346EntryFAfter,s2Step346EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step346EntryGvAfter,s2Step346EntryGvBefore,s2Step346EntryFAfter,s2Step346EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step346EntryGv_checked : planRowResizeLog s2Step346EntryGvBefore s2Step346EntryGvRow 190 s2Step346EntryGvFresh=
    some (s2Step346EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩,growRow 771 s2Step346EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step346EntryGvBefore s2Step346EntryGvAfter s2Step346EntryGvRow 190 s2Step346EntryGvFresh
    s2Step346EntryGv_distinct s2Step346EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step346EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step346EntryGvRow.payload++s2Step346EntryGvFresh) s2Step346EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step346EntryBank_rows : planWindowRowsLog s2Step346EntryFBefore [(s2Step346EntryFRow,100),(s2Step346EntryGRow,100),(s2Step346EntryFvRow,190),(s2Step346EntryGvRow,190)] [s2Step346EntryFFresh,s2Step346EntryGFresh,s2Step346EntryFvFresh,s2Step346EntryGvFresh]=
    some (s2Step346EntryGvAfter,[s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut],(growRow 768 s2Step346EntryFFresh ++ (growRow 769 s2Step346EntryGFresh ++ (growRow 770 s2Step346EntryFvFresh ++ (growRow 771 s2Step346EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step346EntryGvAfter [] []=some (s2Step346EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step346EntryGvBefore s2Step346EntryGvAfter s2Step346EntryGvAfter
    s2Step346EntryGvRow s2Step346EntryGvOut 190 s2Step346EntryGvFresh [] [] []
    (growRow 771 s2Step346EntryGvFresh) ([]) s2Step346EntryGv_Incoming s2Step346EntryGv_checked h4 s2Step346EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step346EntryFvBefore s2Step346EntryFvAfter s2Step346EntryGvAfter
    s2Step346EntryFvRow s2Step346EntryFvOut 190 s2Step346EntryFvFresh [(s2Step346EntryGvRow,190)] [s2Step346EntryGvFresh] [s2Step346EntryGvOut]
    (growRow 770 s2Step346EntryFvFresh) ((growRow 771 s2Step346EntryGvFresh ++ [])) s2Step346EntryFv_Incoming s2Step346EntryFv_checked h3 s2Step346EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step346EntryGBefore s2Step346EntryGAfter s2Step346EntryGvAfter
    s2Step346EntryGRow s2Step346EntryGOut 100 s2Step346EntryGFresh [(s2Step346EntryFvRow,190),(s2Step346EntryGvRow,190)] [s2Step346EntryFvFresh,s2Step346EntryGvFresh] [s2Step346EntryFvOut,s2Step346EntryGvOut]
    (growRow 769 s2Step346EntryGFresh) ((growRow 770 s2Step346EntryFvFresh ++ (growRow 771 s2Step346EntryGvFresh ++ []))) s2Step346EntryG_Incoming s2Step346EntryG_checked h2 s2Step346EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step346EntryFBefore s2Step346EntryFAfter s2Step346EntryGvAfter
    s2Step346EntryFRow s2Step346EntryFOut 100 s2Step346EntryFFresh [(s2Step346EntryGRow,100),(s2Step346EntryFvRow,190),(s2Step346EntryGvRow,190)] [s2Step346EntryGFresh,s2Step346EntryFvFresh,s2Step346EntryGvFresh] [s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut]
    (growRow 768 s2Step346EntryFFresh) ((growRow 769 s2Step346EntryGFresh ++ (growRow 770 s2Step346EntryFvFresh ++ (growRow 771 s2Step346EntryGvFresh ++ [])))) s2Step346EntryF_Incoming s2Step346EntryF_checked h1 s2Step346EntryF_Outgoing
  exact h0

private theorem s2Step346EntryBank_checked : compileHmrBankResizeLog .entry s2Step346EntryFBefore ⟨s2Step346EntryFRow,s2Step346EntryGRow,s2Step346EntryFvRow,s2Step346EntryGvRow⟩ ⟨100,100,190,190⟩ [s2Step346EntryFFresh,s2Step346EntryGFresh,s2Step346EntryFvFresh,s2Step346EntryGvFresh]=
    some (s2Step346EntryGvAfter,⟨s2Step346EntryFOut,s2Step346EntryGOut,s2Step346EntryFvOut,s2Step346EntryGvOut⟩,(growRow 768 s2Step346EntryFFresh ++ (growRow 769 s2Step346EntryGFresh ++ (growRow 770 s2Step346EntryFvFresh ++ (growRow 771 s2Step346EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step346EntryBank_rows]
  rfl

private def s2Step346ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<609) ∨ (611≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346ExitFBefore : Arena := s2Step346ExitGAfter

private def s2Step346ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903, 894],768⟩

private def s2Step346ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789, 800],770⟩

private def s2Step346ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 844],769⟩

private def s2Step346ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 839],771⟩

private theorem s2Step346ExitBank_incomingDistinct : ([s2Step346ExitGRow,s2Step346ExitFRow,s2Step346ExitFvRow,s2Step346ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346ExitF_Incoming : rowsOwned s2Step346ExitFBefore [s2Step346ExitFRow,s2Step346ExitFvRow,s2Step346ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346ExitGRow,s2Step346ExitFRow,s2Step346ExitFvRow,s2Step346ExitGvRow] 1 s2Step346ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346ExitFBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346ExitBank_outgoingOwned : rowsOwned s2Step346ExitGvAfter [s2Step346ExitGOut,s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step346ExitGvAfter (fun q => (0≤q ∧ q<609) ∨ (611≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346ExitF_Outgoing : rowsOwned s2Step346ExitGvAfter [s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut] :=
  hmrRows_owned_drop s2Step346ExitGvAfter [s2Step346ExitGOut,s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut] 1 s2Step346ExitBank_outgoingOwned

private theorem s2Step346ExitF_distinct : (s2Step346ExitFRow.sign::s2Step346ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346ExitF_owned : (s2Step346ExitFRow.sign::s2Step346ExitFRow.payload).toFinset⊆s2Step346ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346ExitFBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346ExitF_retired : s2Step346ExitFBefore.retireSet s2Step346ExitFExtra.toFinset=s2Step346ExitFAfter := by
  unfold Arena.retireSet s2Step346ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step346ExitFBefore,s2Step346ExitGAfter,s2Step346ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step346ExitF_checked : planRowResizeLog s2Step346ExitFBefore s2Step346ExitFRow 97 []=
    some (s2Step346ExitFAfter,s2Step346ExitFOut,shrinkRow 768 s2Step346ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step346ExitFBefore s2Step346ExitFRow 97 s2Step346ExitF_distinct s2Step346ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step346ExitFRow.payload.take 97) s2Step346ExitFRow.sign=s2Step346ExitFOut := by decide +kernel
  have hi : s2Step346ExitFRow.payload.drop 97=s2Step346ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step346ExitF_retired] at result
  exact result

private def s2Step346ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<609) ∨ (611≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346ExitFvBefore : Arena := s2Step346ExitFAfter

private theorem s2Step346ExitFv_Incoming : rowsOwned s2Step346ExitFvBefore [s2Step346ExitFvRow,s2Step346ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346ExitGRow,s2Step346ExitFRow,s2Step346ExitFvRow,s2Step346ExitGvRow] 2 s2Step346ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346ExitFvBefore (fun q => (0≤q ∧ q<609) ∨ (611≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346ExitFv_Outgoing : rowsOwned s2Step346ExitGvAfter [s2Step346ExitFvOut,s2Step346ExitGvOut] :=
  hmrRows_owned_drop s2Step346ExitGvAfter [s2Step346ExitGOut,s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut] 2 s2Step346ExitBank_outgoingOwned

private theorem s2Step346ExitFv_distinct : (s2Step346ExitFvRow.sign::s2Step346ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346ExitFv_owned : (s2Step346ExitFvRow.sign::s2Step346ExitFvRow.payload).toFinset⊆s2Step346ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346ExitFvBefore (fun q => (0≤q ∧ q<609) ∨ (611≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346ExitFv_retired : s2Step346ExitFvBefore.retireSet s2Step346ExitFvExtra.toFinset=s2Step346ExitFvAfter := by
  unfold Arena.retireSet s2Step346ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step346ExitFvBefore,s2Step346ExitFAfter,s2Step346ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step346ExitFv_checked : planRowResizeLog s2Step346ExitFvBefore s2Step346ExitFvRow 189 []=
    some (s2Step346ExitFvAfter,s2Step346ExitFvOut,shrinkRow 770 s2Step346ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step346ExitFvBefore s2Step346ExitFvRow 189 s2Step346ExitFv_distinct s2Step346ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step346ExitFvRow.payload.take 189) s2Step346ExitFvRow.sign=s2Step346ExitFvOut := by decide +kernel
  have hi : s2Step346ExitFvRow.payload.drop 189=s2Step346ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step346ExitFv_retired] at result
  exact result

private def s2Step346ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step346ExitG_Incoming : rowsOwned s2Step346ExitGBefore [s2Step346ExitGRow,s2Step346ExitFRow,s2Step346ExitFvRow,s2Step346ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346ExitGRow,s2Step346ExitFRow,s2Step346ExitFvRow,s2Step346ExitGvRow] 0 s2Step346ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346ExitGBefore (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346ExitG_Outgoing : rowsOwned s2Step346ExitGvAfter [s2Step346ExitGOut,s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut] :=
  hmrRows_owned_drop s2Step346ExitGvAfter [s2Step346ExitGOut,s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut] 0 s2Step346ExitBank_outgoingOwned

private theorem s2Step346ExitG_distinct : (s2Step346ExitGRow.sign::s2Step346ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346ExitG_owned : (s2Step346ExitGRow.sign::s2Step346ExitGRow.payload).toFinset⊆s2Step346ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346ExitGBefore (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346ExitG_retired : s2Step346ExitGBefore.retireSet s2Step346ExitGExtra.toFinset=s2Step346ExitGAfter := by
  unfold Arena.retireSet s2Step346ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step346ExitGBefore,s2Step346ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step346ExitG_checked : planRowResizeLog s2Step346ExitGBefore s2Step346ExitGRow 99 []=
    some (s2Step346ExitGAfter,s2Step346ExitGOut,shrinkRow 769 s2Step346ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step346ExitGBefore s2Step346ExitGRow 99 s2Step346ExitG_distinct s2Step346ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step346ExitGRow.payload.take 99) s2Step346ExitGRow.sign=s2Step346ExitGOut := by decide +kernel
  have hi : s2Step346ExitGRow.payload.drop 99=s2Step346ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step346ExitG_retired] at result
  exact result

private def s2Step346ExitGvBefore : Arena := s2Step346ExitFvAfter

private theorem s2Step346ExitGv_Incoming : rowsOwned s2Step346ExitGvBefore [s2Step346ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346ExitGRow,s2Step346ExitFRow,s2Step346ExitFvRow,s2Step346ExitGvRow] 3 s2Step346ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346ExitGvBefore (fun q => (0≤q ∧ q<609) ∨ (611≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346ExitGv_Outgoing : rowsOwned s2Step346ExitGvAfter [s2Step346ExitGvOut] :=
  hmrRows_owned_drop s2Step346ExitGvAfter [s2Step346ExitGOut,s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut] 3 s2Step346ExitBank_outgoingOwned

private theorem s2Step346ExitGv_distinct : (s2Step346ExitGvRow.sign::s2Step346ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346ExitGv_owned : (s2Step346ExitGvRow.sign::s2Step346ExitGvRow.payload).toFinset⊆s2Step346ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346ExitGvBefore (fun q => (0≤q ∧ q<609) ∨ (611≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346ExitGv_retired : s2Step346ExitGvBefore.retireSet s2Step346ExitGvExtra.toFinset=s2Step346ExitGvAfter := by
  unfold Arena.retireSet s2Step346ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step346ExitGvBefore,s2Step346ExitFvAfter,s2Step346ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step346ExitGv_checked : planRowResizeLog s2Step346ExitGvBefore s2Step346ExitGvRow 190 []=
    some (s2Step346ExitGvAfter,s2Step346ExitGvOut,shrinkRow 771 s2Step346ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step346ExitGvBefore s2Step346ExitGvRow 190 s2Step346ExitGv_distinct s2Step346ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step346ExitGvRow.payload.take 190) s2Step346ExitGvRow.sign=s2Step346ExitGvOut := by decide +kernel
  have hi : s2Step346ExitGvRow.payload.drop 190=s2Step346ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step346ExitGv_retired] at result
  exact result

private theorem s2Step346ExitBank_rows : planWindowRowsLog s2Step346ExitGBefore [(s2Step346ExitGRow,99),(s2Step346ExitFRow,97),(s2Step346ExitFvRow,189),(s2Step346ExitGvRow,190)] [[],[],[],[]]=
    some (s2Step346ExitGvAfter,[s2Step346ExitGOut,s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut],(shrinkRow 769 s2Step346ExitGExtra ++ (shrinkRow 768 s2Step346ExitFExtra ++ (shrinkRow 770 s2Step346ExitFvExtra ++ (shrinkRow 771 s2Step346ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step346ExitGvAfter [] []=some (s2Step346ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step346ExitGvBefore s2Step346ExitGvAfter s2Step346ExitGvAfter
    s2Step346ExitGvRow s2Step346ExitGvOut 190 [] [] [] []
    (shrinkRow 771 s2Step346ExitGvExtra) ([]) s2Step346ExitGv_Incoming s2Step346ExitGv_checked h4 s2Step346ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step346ExitFvBefore s2Step346ExitFvAfter s2Step346ExitGvAfter
    s2Step346ExitFvRow s2Step346ExitFvOut 189 [] [(s2Step346ExitGvRow,190)] [[]] [s2Step346ExitGvOut]
    (shrinkRow 770 s2Step346ExitFvExtra) ((shrinkRow 771 s2Step346ExitGvExtra ++ [])) s2Step346ExitFv_Incoming s2Step346ExitFv_checked h3 s2Step346ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step346ExitFBefore s2Step346ExitFAfter s2Step346ExitGvAfter
    s2Step346ExitFRow s2Step346ExitFOut 97 [] [(s2Step346ExitFvRow,189),(s2Step346ExitGvRow,190)] [[],[]] [s2Step346ExitFvOut,s2Step346ExitGvOut]
    (shrinkRow 768 s2Step346ExitFExtra) ((shrinkRow 770 s2Step346ExitFvExtra ++ (shrinkRow 771 s2Step346ExitGvExtra ++ []))) s2Step346ExitF_Incoming s2Step346ExitF_checked h2 s2Step346ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step346ExitGBefore s2Step346ExitGAfter s2Step346ExitGvAfter
    s2Step346ExitGRow s2Step346ExitGOut 99 [] [(s2Step346ExitFRow,97),(s2Step346ExitFvRow,189),(s2Step346ExitGvRow,190)] [[],[],[]] [s2Step346ExitFOut,s2Step346ExitFvOut,s2Step346ExitGvOut]
    (shrinkRow 769 s2Step346ExitGExtra) ((shrinkRow 768 s2Step346ExitFExtra ++ (shrinkRow 770 s2Step346ExitFvExtra ++ (shrinkRow 771 s2Step346ExitGvExtra ++ [])))) s2Step346ExitG_Incoming s2Step346ExitG_checked h1 s2Step346ExitG_Outgoing
  exact h0

private theorem s2Step346ExitBank_checked : compileHmrBankResizeLog .exit s2Step346ExitGBefore ⟨s2Step346ExitFRow,s2Step346ExitGRow,s2Step346ExitFvRow,s2Step346ExitGvRow⟩ ⟨97,99,189,190⟩ [[],[],[],[]]=
    some (s2Step346ExitGvAfter,⟨s2Step346ExitFOut,s2Step346ExitGOut,s2Step346ExitFvOut,s2Step346ExitGvOut⟩,(shrinkRow 769 s2Step346ExitGExtra ++ (shrinkRow 768 s2Step346ExitFExtra ++ (shrinkRow 770 s2Step346ExitFvExtra ++ (shrinkRow 771 s2Step346ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step346ExitBank_rows]
  rfl

private theorem s2Step346Add0_apart : Disjoint s2Step346Add0Arena.live s2Step346Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step346Add0Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step346Add0_card : s2Step346Add0Arena.live.card=914 := by
  decide +kernel

private theorem s2Step346Add0_borrowed : s2Step346Add0Arena.checkBorrow (hmrHybridCount s2Step346Add0Arena s2Step346Add0B.length) s2Step346Add0Work=some s2Step346Add0During := by
  have len : s2Step346Add0Work.length=hmrHybridCount s2Step346Add0Arena s2Step346Add0B.length := by
    rw [hmrHybridCount,s2Step346Add0_card]
    decide +kernel
  have nd : s2Step346Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step346Add0Arena s2Step346Add0During s2Step346Add0Work.toFinset s2Step346Add0_bounded s2Step346Add0_apart rfl

private theorem s2Step346Add0_distinct : (907::788::913::(s2Step346Add0A++s2Step346Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346Add0_owned : (907::788::913::(s2Step346Add0A++s2Step346Add0B)).toFinset⊆s2Step346Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step346Add0Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step346Add0_checked : compileHmrHybridCinLog s2Step346Add0Arena 788 907 913 s2Step346Add0A s2Step346Add0B s2Step346Add0Work=some s2Step346Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step346Add0Arena s2Step346Add0During 788 907 913 s2Step346Add0A s2Step346Add0B s2Step346Add0Work
    (by decide +kernel) (by decide +kernel) s2Step346Add0_distinct
    (fun q hq => s2Step346Add0_owned (List.mem_toFinset.mpr hq)) s2Step346Add0_borrowed

private theorem s2Step346Add1_apart : Disjoint s2Step346Add1Arena.live s2Step346Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step346Add1Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step346Add1_card : s2Step346Add1Arena.live.card=914 := by
  decide +kernel

private theorem s2Step346Add1_borrowed : s2Step346Add1Arena.checkBorrow (hmrHybridCount s2Step346Add1Arena s2Step346Add1B.length) s2Step346Add1Work=some s2Step346Add1During := by
  have len : s2Step346Add1Work.length=hmrHybridCount s2Step346Add1Arena s2Step346Add1B.length := by
    rw [hmrHybridCount,s2Step346Add1_card]
    decide +kernel
  have nd : s2Step346Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step346Add1Arena s2Step346Add1During s2Step346Add1Work.toFinset s2Step346Add1_bounded s2Step346Add1_apart rfl

private theorem s2Step346Add1_distinct : (907::788::913::(s2Step346Add1A++s2Step346Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346Add1_owned : (907::788::913::(s2Step346Add1A++s2Step346Add1B)).toFinset⊆s2Step346Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step346Add1Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step346Add1_checked : compileHmrHybridCinLog s2Step346Add1Arena 788 907 913 s2Step346Add1A s2Step346Add1B s2Step346Add1Work=some s2Step346Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step346Add1Arena s2Step346Add1During 788 907 913 s2Step346Add1A s2Step346Add1B s2Step346Add1Work
    (by decide +kernel) (by decide +kernel) s2Step346Add1_distinct
    (fun q hq => s2Step346Add1_owned (List.mem_toFinset.mpr hq)) s2Step346Add1_borrowed

private theorem s2Step346F4_apart : Disjoint (s2Step346Add0A++s2Step346Add0B).toFinset (s2Step346Add1A++s2Step346Add1B).toFinset := by
  have nd : ((s2Step346Add0A++s2Step346Add0B)++(s2Step346Add1A++s2Step346Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step346F4_carry : s2Step346F4FlagArena.checkBorrow 1 [913]=some s2Step346Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step346F4FlagArena,s2Step346HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step346F4FlagArena,s2Step346HeadFvAfter,s2Step346Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step346F4_distinct : (845::788::907::913::((s2Step346Add0A++s2Step346Add1A)++(s2Step346Add0B++s2Step346Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346F4_flag : s2Step346HeadFvAfter.checkBorrow 1 [907]=some s2Step346F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step346HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step346F4_owned : (845::788::((s2Step346Add0A++s2Step346Add1A)++(s2Step346Add0B++s2Step346Add1B))).toFinset⊆s2Step346HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step346HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346F4_checked : compileHmrHybridF4Log s2Step346HeadFvAfter 845 788 s2Step346Add0A s2Step346Add0B s2Step346Add1A s2Step346Add1B [907] [913] s2Step346Add0Work s2Step346Add1Work=some s2Step346F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step346HeadFvAfter s2Step346F4FlagArena s2Step346Add0Arena s2Step346Add0During s2Step346Add1During 845 788
    s2Step346Add0A s2Step346Add0B s2Step346Add1A s2Step346Add1B [907] [913] s2Step346Add0Work s2Step346Add1Work
    (fun q hq => s2Step346F4_owned (List.mem_toFinset.mpr hq)) s2Step346F4_flag s2Step346F4_carry
    s2Step346F4_distinct s2Step346F4_apart s2Step346Add0_checked s2Step346Add1_checked

private theorem s2Step346Front_branch : s2Step346FrontSigmaArena.checkBorrow 1 [788]=some s2Step346HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step346FrontSigmaArena,s2Step346EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step346FrontSigmaArena,s2Step346EntryGvAfter,s2Step346HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step346Front_entry : HmrFrontEntryValid s2Step346EntryFBefore s2Step346FrontBank 100 190 ⟨97,99,189,190⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step346FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step346EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step346EntryFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step346FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step346Front_sigma : s2Step346EntryGvAfter.checkBorrow 1 [845]=some s2Step346FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step346EntryGvAfter,arenaWires]
  · rfl

private def s2Step346HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346HeadFBefore : Arena := s2Step346HeadGAfter

private def s2Step346HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903],768⟩

private def s2Step346HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩

private def s2Step346HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827],769⟩

private def s2Step346HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901],771⟩

private theorem s2Step346HeadBank_incomingDistinct : ([s2Step346HeadGRow,s2Step346HeadFRow,s2Step346HeadGvRow,s2Step346HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346HeadF_Incoming : rowsOwned s2Step346HeadFBefore [s2Step346HeadFRow,s2Step346HeadGvRow,s2Step346HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346HeadGRow,s2Step346HeadFRow,s2Step346HeadGvRow,s2Step346HeadFvRow] 1 s2Step346HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346HeadBank_outgoingOwned : rowsOwned s2Step346HeadFvAfter [s2Step346HeadGOut,s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step346HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346HeadF_Outgoing : rowsOwned s2Step346HeadFvAfter [s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut] :=
  hmrRows_owned_drop s2Step346HeadFvAfter [s2Step346HeadGOut,s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut] 1 s2Step346HeadBank_outgoingOwned

private theorem s2Step346HeadF_distinct : (s2Step346HeadFRow.sign::s2Step346HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346HeadF_owned : (s2Step346HeadFRow.sign::s2Step346HeadFRow.payload).toFinset⊆s2Step346HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346HeadF_reserved : s2Step346HeadFBefore.reserve s2Step346HeadFFresh.toFinset=some s2Step346HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step346HeadFFresh,arenaWires]
  · norm_num [s2Step346HeadFBefore,s2Step346HeadGAfter,s2Step346HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step346HeadFAfter,s2Step346HeadFBefore,s2Step346HeadGAfter,s2Step346HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step346HeadF_checked : planRowResizeLog s2Step346HeadFBefore s2Step346HeadFRow 101 s2Step346HeadFFresh=
    some (s2Step346HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903, 894],768⟩,growRow 768 s2Step346HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step346HeadFBefore s2Step346HeadFAfter s2Step346HeadFRow 101 s2Step346HeadFFresh
    s2Step346HeadF_distinct s2Step346HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step346HeadF_reserved
  have rowEq : WindowRow.mk (s2Step346HeadFRow.payload++s2Step346HeadFFresh) s2Step346HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 903, 894],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step346HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step346HeadFvBefore : Arena := s2Step346HeadGvAfter

private theorem s2Step346HeadFv_Incoming : rowsOwned s2Step346HeadFvBefore [s2Step346HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346HeadGRow,s2Step346HeadFRow,s2Step346HeadGvRow,s2Step346HeadFvRow] 3 s2Step346HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346HeadFv_Outgoing : rowsOwned s2Step346HeadFvAfter [s2Step346HeadFvOut] :=
  hmrRows_owned_drop s2Step346HeadFvAfter [s2Step346HeadGOut,s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut] 3 s2Step346HeadBank_outgoingOwned

private theorem s2Step346HeadFv_distinct : (s2Step346HeadFvRow.sign::s2Step346HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346HeadFv_owned : (s2Step346HeadFvRow.sign::s2Step346HeadFvRow.payload).toFinset⊆s2Step346HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346HeadFv_reserved : s2Step346HeadFvBefore.reserve s2Step346HeadFvFresh.toFinset=some s2Step346HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step346HeadFvFresh,arenaWires]
  · norm_num [s2Step346HeadFvBefore,s2Step346HeadGvAfter,s2Step346HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step346HeadFvAfter,s2Step346HeadFvBefore,s2Step346HeadGvAfter,s2Step346HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step346HeadFv_checked : planRowResizeLog s2Step346HeadFvBefore s2Step346HeadFvRow 191 s2Step346HeadFvFresh=
    some (s2Step346HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789, 800],770⟩,growRow 770 s2Step346HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step346HeadFvBefore s2Step346HeadFvAfter s2Step346HeadFvRow 191 s2Step346HeadFvFresh
    s2Step346HeadFv_distinct s2Step346HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step346HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step346HeadFvRow.payload++s2Step346HeadFvFresh) s2Step346HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step346HeadG_Incoming : rowsOwned s2Step346HeadGBefore [s2Step346HeadGRow,s2Step346HeadFRow,s2Step346HeadGvRow,s2Step346HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346HeadGRow,s2Step346HeadFRow,s2Step346HeadGvRow,s2Step346HeadFvRow] 0 s2Step346HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346HeadG_Outgoing : rowsOwned s2Step346HeadFvAfter [s2Step346HeadGOut,s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut] :=
  hmrRows_owned_drop s2Step346HeadFvAfter [s2Step346HeadGOut,s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut] 0 s2Step346HeadBank_outgoingOwned

private theorem s2Step346HeadG_distinct : (s2Step346HeadGRow.sign::s2Step346HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346HeadG_owned : (s2Step346HeadGRow.sign::s2Step346HeadGRow.payload).toFinset⊆s2Step346HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346HeadG_reserved : s2Step346HeadGBefore.reserve s2Step346HeadGFresh.toFinset=some s2Step346HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step346HeadGFresh,arenaWires]
  · norm_num [s2Step346HeadGBefore,s2Step346HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step346HeadGAfter,s2Step346HeadGBefore,s2Step346HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step346HeadG_checked : planRowResizeLog s2Step346HeadGBefore s2Step346HeadGRow 101 s2Step346HeadGFresh=
    some (s2Step346HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 844],769⟩,growRow 769 s2Step346HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step346HeadGBefore s2Step346HeadGAfter s2Step346HeadGRow 101 s2Step346HeadGFresh
    s2Step346HeadG_distinct s2Step346HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step346HeadG_reserved
  have rowEq : WindowRow.mk (s2Step346HeadGRow.payload++s2Step346HeadGFresh) s2Step346HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step346HeadGvBefore : Arena := s2Step346HeadFAfter

private theorem s2Step346HeadGv_Incoming : rowsOwned s2Step346HeadGvBefore [s2Step346HeadGvRow,s2Step346HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step346HeadGRow,s2Step346HeadFRow,s2Step346HeadGvRow,s2Step346HeadFvRow] 2 s2Step346HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step346HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step346HeadGv_Outgoing : rowsOwned s2Step346HeadFvAfter [s2Step346HeadGvOut,s2Step346HeadFvOut] :=
  hmrRows_owned_drop s2Step346HeadFvAfter [s2Step346HeadGOut,s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut] 2 s2Step346HeadBank_outgoingOwned

private theorem s2Step346HeadGv_distinct : (s2Step346HeadGvRow.sign::s2Step346HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step346HeadGv_owned : (s2Step346HeadGvRow.sign::s2Step346HeadGvRow.payload).toFinset⊆s2Step346HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step346HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step346HeadGv_reserved : s2Step346HeadGvBefore.reserve s2Step346HeadGvFresh.toFinset=some s2Step346HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step346HeadGvFresh,arenaWires]
  · norm_num [s2Step346HeadGvBefore,s2Step346HeadFAfter,s2Step346HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step346HeadGvAfter,s2Step346HeadGvBefore,s2Step346HeadFAfter,s2Step346HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step346HeadGv_checked : planRowResizeLog s2Step346HeadGvBefore s2Step346HeadGvRow 191 s2Step346HeadGvFresh=
    some (s2Step346HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 839],771⟩,growRow 771 s2Step346HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step346HeadGvBefore s2Step346HeadGvAfter s2Step346HeadGvRow 191 s2Step346HeadGvFresh
    s2Step346HeadGv_distinct s2Step346HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step346HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step346HeadGvRow.payload++s2Step346HeadGvFresh) s2Step346HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 901, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step346HeadBank_rows : planWindowRowsLog s2Step346HeadGBefore [(s2Step346HeadGRow,101),(s2Step346HeadFRow,101),(s2Step346HeadGvRow,191),(s2Step346HeadFvRow,191)] [s2Step346HeadGFresh,s2Step346HeadFFresh,s2Step346HeadGvFresh,s2Step346HeadFvFresh]=
    some (s2Step346HeadFvAfter,[s2Step346HeadGOut,s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut],(growRow 769 s2Step346HeadGFresh ++ (growRow 768 s2Step346HeadFFresh ++ (growRow 771 s2Step346HeadGvFresh ++ (growRow 770 s2Step346HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step346HeadFvAfter [] []=some (s2Step346HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step346HeadFvBefore s2Step346HeadFvAfter s2Step346HeadFvAfter
    s2Step346HeadFvRow s2Step346HeadFvOut 191 s2Step346HeadFvFresh [] [] []
    (growRow 770 s2Step346HeadFvFresh) ([]) s2Step346HeadFv_Incoming s2Step346HeadFv_checked h4 s2Step346HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step346HeadGvBefore s2Step346HeadGvAfter s2Step346HeadFvAfter
    s2Step346HeadGvRow s2Step346HeadGvOut 191 s2Step346HeadGvFresh [(s2Step346HeadFvRow,191)] [s2Step346HeadFvFresh] [s2Step346HeadFvOut]
    (growRow 771 s2Step346HeadGvFresh) ((growRow 770 s2Step346HeadFvFresh ++ [])) s2Step346HeadGv_Incoming s2Step346HeadGv_checked h3 s2Step346HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step346HeadFBefore s2Step346HeadFAfter s2Step346HeadFvAfter
    s2Step346HeadFRow s2Step346HeadFOut 101 s2Step346HeadFFresh [(s2Step346HeadGvRow,191),(s2Step346HeadFvRow,191)] [s2Step346HeadGvFresh,s2Step346HeadFvFresh] [s2Step346HeadGvOut,s2Step346HeadFvOut]
    (growRow 768 s2Step346HeadFFresh) ((growRow 771 s2Step346HeadGvFresh ++ (growRow 770 s2Step346HeadFvFresh ++ []))) s2Step346HeadF_Incoming s2Step346HeadF_checked h2 s2Step346HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step346HeadGBefore s2Step346HeadGAfter s2Step346HeadFvAfter
    s2Step346HeadGRow s2Step346HeadGOut 101 s2Step346HeadGFresh [(s2Step346HeadFRow,101),(s2Step346HeadGvRow,191),(s2Step346HeadFvRow,191)] [s2Step346HeadFFresh,s2Step346HeadGvFresh,s2Step346HeadFvFresh] [s2Step346HeadFOut,s2Step346HeadGvOut,s2Step346HeadFvOut]
    (growRow 769 s2Step346HeadGFresh) ((growRow 768 s2Step346HeadFFresh ++ (growRow 771 s2Step346HeadGvFresh ++ (growRow 770 s2Step346HeadFvFresh ++ [])))) s2Step346HeadG_Incoming s2Step346HeadG_checked h1 s2Step346HeadG_Outgoing
  exact h0

private theorem s2Step346HeadBank_checked : compileHmrBankResizeLog .headroom s2Step346HeadGBefore ⟨s2Step346HeadFRow,s2Step346HeadGRow,s2Step346HeadFvRow,s2Step346HeadGvRow⟩ ⟨101,101,191,191⟩ [s2Step346HeadGFresh,s2Step346HeadFFresh,s2Step346HeadGvFresh,s2Step346HeadFvFresh]=
    some (s2Step346HeadFvAfter,⟨s2Step346HeadFOut,s2Step346HeadGOut,s2Step346HeadFvOut,s2Step346HeadGvOut⟩,(growRow 769 s2Step346HeadGFresh ++ (growRow 768 s2Step346HeadFFresh ++ (growRow 771 s2Step346HeadGvFresh ++ (growRow 770 s2Step346HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step346HeadBank_rows]
  rfl

private theorem s2Step346Front_checked : compileHmrSourceFrontLog s2Step346EntryFBefore s2Step346FrontBank 100 190 ⟨97,99,189,190⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step346FrontLog=some s2Step346FrontPlan := by
  have pairEq : s2Step346FrontPair=⟨s2Step346HeadFRow,s2Step346HeadGRow,s2Step346HeadFvRow,s2Step346HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step346FrontHead=⟨s2Step346ExitFRow,s2Step346ExitGRow,s2Step346ExitFvRow,s2Step346ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step346Add0A=s2Step346FrontHead.f.wires := by decide +kernel
  have gEq : s2Step346Add0B=s2Step346FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step346Add1A=s2Step346FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step346Add1B=s2Step346FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step346EntryFBefore s2Step346FrontBank 100 190 ⟨97,99,189,190⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step346FrontLog s2Step346FrontPlan
  · exact s2Step346Front_entry
  · exact s2Step346EntryBank_checked
  · exact s2Step346Front_sigma
  · rfl
  · exact s2Step346Front_branch
  · rfl
  · simpa only [s2Step346FrontPlan,pairEq] using s2Step346HeadBank_checked
  · simpa only [s2Step346FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step346F4_checked
  · exact s2Step346Counter_checked
  · rfl
  · simpa only [s2Step346FrontPlan,headEq] using s2Step346ExitBank_checked

private theorem s2Step346Complete_explicit_checked : compileHmrEarlyStepLog s2Step346EntryFBefore s2Step346FrontBank 100 190 ⟨97,99,189,190⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step346CompleteLog=some s2Step346CompletePlan := by
  let Q := s2Step346EarlyControlPlan
  have hq := s2Step346EarlyControl_plan_checked
  have fv1 : s2Step346CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step346CompleteOut.fv.payload[2]?.getD s2Step346CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step346CompleteOut.fv.payload[3]?.getD s2Step346CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step346CompleteOut.fv.payload[4]?.getD s2Step346CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step346EntryFBefore s2Step346EarlyControlArena s2Step346FrontBank 100 190 ⟨97,99,189,190⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step346CompleteLog s2Step346FrontPlan Q
    s2Step346Front_checked s2Step346Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step346Complete_owned s2Step346Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step346EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 845 s2Step346CompleteOut.fv.second (s2Step346CompleteOut.fv.payload[2]?.getD s2Step346CompleteOut.fv.sign) (s2Step346CompleteOut.fv.payload[3]?.getD s2Step346CompleteOut.fv.sign) (s2Step346CompleteOut.fv.payload[4]?.getD s2Step346CompleteOut.fv.sign) 788 60 s2Step346EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep346Arena : Arena := s2Step346EntryFBefore
def s2PrivateStep346Bank : WindowBank := s2Step346FrontBank
def s2PrivateStep346Spec : HmrSourceWalkStepLog := ⟨100,190,⟨97,99,189,190⟩,60,.early s2Step346CompleteLog⟩
def s2PrivateStep346Plan : HmrSourceStepPlan := .early s2Step346CompletePlan
theorem s2PrivateStep346_source : s2PrivateStep346Spec=s2ObservedLogs336[10] := rfl
theorem s2PrivateStep346_checked : compileHmrSourceStepLog s2PrivateStep346Arena s2PrivateStep346Bank
    s2PrivateStep346Spec.fgWidth s2PrivateStep346Spec.vWidth s2PrivateStep346Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 346 s2PrivateStep346Spec.need none s2PrivateStep346Spec.log=some s2PrivateStep346Plan := by
  change compileHmrSourceStepLog s2Step346EntryFBefore s2Step346FrontBank 100 190 ⟨97,99,189,190⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 346 60 none (.early s2Step346CompleteLog)=some (.early s2Step346CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 346<498)]
  rw [s2Step346Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
